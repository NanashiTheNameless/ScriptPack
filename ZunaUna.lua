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

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
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
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
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
		fp.CanCollide=false
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

local Color = BrickColor.new("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(Color)
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
w2.BrickColor = BrickColor.new(Color)
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("New Yeller"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
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

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
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

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
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

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Handle",Vector3.new(0.432347655, 1.46774554, 0.432347715))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994874, 0, 0, 0, 1),CFrame.new(-0.0238761902, -0.643738747, 0.951609612, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.435486168, 0.907830358))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38579845, -0.147186279, 1.96928692, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38580227, -1.4786582, -0.0490608215, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 1.07937324, 1.37374437))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -0.791760921, 0.547310829, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490608215, -1.96923208, 6.3858161, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.668118))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.665903091, 1.19417429, 7.27876043, -0.707097769, 3.49879265e-005, 0.707116127, 0.707115829, 3.41534615e-005, 0.707098126, 4.43859108e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490589142, -0.483884811, 0.00761604309, -1, 4.46888748e-007, -1.03144195e-008, -2.45221941e-008, 4.87565994e-005, 1.00000048, 3.18062263e-007, 1.00000119, -5.02169132e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 1.7662425))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 1.02356577, -1.61146116, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.907832682, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.441556931, 1.57671928, 8.05396271, -1, 4.46891647e-007, 4.92917671e-008, 3.50839642e-008, 4.87565994e-005, 1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 1.17749763, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -0.742664337, 5.35547161, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 1, 0.907830358))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490608215, -1.96928167, 0.694499969, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.45311451))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245313644, -1.96931839, -1.95488787, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.668118))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.539680481, 1.67485046, 7.26895666, -1, 4.46891647e-007, 4.92917671e-008, 3.50839642e-008, 4.87565994e-005, 1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38580036, 0.0490589142, -1.87116051, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490570068, 1.57762623, -1.18428707, -1, 5.03652586e-007, -9.78606565e-008, 3.74831302e-007, 1.00000119, -5.90085983e-005, 1.12062189e-007, -5.75780869e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -1.96923208, 6.3858161, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694484234, -0.147184372, 1.96928787, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.55123901))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(1.03910494, -0.382684708, 7.51424408, -2.45105412e-008, 4.87565994e-005, 1.00000048, 1, -4.46888748e-007, 1.03027666e-008, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38579798, -1.9692874, 0.2453022, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.34344101, -2.50901222, 1.22480965, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 0.680872798))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490589142, -2.75432682, -1.02857161, -1, 5.93067284e-007, 5.20292858e-008, -3.78288192e-008, -4.87565994e-005, -1.00000048, -4.64237644e-007, -1.00000119, 5.02169132e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0.5,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50904942, 0.245313644, -0.541429996, -9.46957712e-008, -4.87565994e-005, -1.00000048, -1, 4.46894546e-007, 1.08903606e-007, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.680874527, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.343439102, -1.5767169, 6.38582945, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 3.49106264, 1.18428373, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.55123901))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.147186279, -2.50899839, 1.27389431, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38580227, 1.47865772, 0.245313644, -3.18063314e-007, -1.00000119, 5.87999821e-005, 3.50953684e-008, 5.73694706e-005, 1.00000048, -1, 4.46892955e-007, 4.9300418e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.343439102, -1.77297306, 6.38581324, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.177495))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.2453022, -1.13522863, -1.61146402, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.1966908, -0.245315552, 0.889906406, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.226958096, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.54163361, -1.13123608, 8.05396271, 0.707097888, -3.48687172e-005, -0.707116067, -0.70711571, -3.42428684e-005, -0.707098246, 3.17420216e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669485, -0.245315552, 0.595514774, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.226958096, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.55123925, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.27386522, -2.65620232, 0.245300293, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0.5,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -2.26369762, -0.541428089, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.680874527, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.147186279, -1.87110519, 6.38581657, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.245300293, -1.87116098, 0.694499969, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669199, -0.637798309, 0.889904499, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.226958096, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, 4.27608109, 0.889903545, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38580036, -0.245313644, 1.87116003, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -1.96927261, 3.54016185, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694486141, 0.2453022, 1.57677746, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014063, 1.77303791, -0.245304108, -3.18063314e-007, -1.00000119, 5.87999821e-005, 3.50953684e-008, 5.73694706e-005, 1.00000048, -1, 4.46892955e-007, 4.9300418e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.432347655, 0.588748991, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 4.66859579, 0.301133633, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 1, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 4.27608013, 1.18427896, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0.5,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -2.75432062, -0.541444778, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.680874527, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38579655, -1.5767684, -0.147186279, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.147184372, -1.13523054, -0.875501633, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832325, 0.68087256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.55123901))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(1.23536968, -0.529888153, 7.51424789, -2.45105412e-008, 4.87565994e-005, 1.00000048, 1, -4.46888748e-007, 1.03027666e-008, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958111, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245313644, -1.77297831, 6.38581324, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.147186279, -1.47860289, 6.38581514, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.588747501))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 0.287633419, 0.154826164, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 4.47232723, 1.1842947, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38579798, 0.147184372, -1.77303362, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490627289, -1.1352334, 2.34741116, -1, 3.87281432e-007, -5.43378356e-008, 6.85484807e-008, -4.91440296e-005, -1.00000048, -2.58457248e-007, -1.00000119, 5.06043434e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.907832682, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490570068, 2.16637135, -0.59552145, -1, 5.03652586e-007, -9.78606565e-008, 3.74831302e-007, 1.00000119, -5.90085983e-005, 1.12062189e-007, -5.75780869e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50901365, 0.441551208, -1.02857399, -2.58317846e-006, -4.78029251e-005, -1.00000048, 1, -5.96029224e-007, -2.59738044e-006, -4.67077939e-007, -1.00000119, 4.92632389e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.343439102, -1.6748538, 6.38581324, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669056, -0.441566467, 0.889873505, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.680874228, 0.226957604))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.2453022, -1.87109709, 6.38581371, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 1.37374437))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -0.889888287, 2.70605993, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 1.7662425))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -0.742720604, -1.61145926, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.907832682, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38580227, 0.147171021, 1.47865772, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 1.07937324, 1.37374437))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -0.791760921, 0.547310829, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 1.0793705))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -0.59549427, 2.85327172, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0.5,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.541453838, -0.343442917, 2.75432682, 3.11322225e-007, 1.00000119, -5.87999821e-005, -1, 4.40155929e-007, 1.19739425e-007, 1.05533914e-007, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.680874527, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.588747501))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -0.203001022, 0.154825211, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.54164124, -1.32749319, 8.05396652, 0.707097888, -3.48687172e-005, -0.707116067, -0.70711571, -3.42428684e-005, -0.707098246, 3.17420216e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.588748991, 0.686872184))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, 1.62586546, 2.838027, 1, 6.56904035e-007, -8.54040309e-007, 8.39773065e-007, 5.33163548e-005, 1.00000048, 7.85775228e-007, -1.00000119, 5.47766685e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38581562, 0.2453022, 1.57677174, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.588748991, 1.7662425))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.343442917, -1.62586355, -1.61146402, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490627289, 2.29831171, -0.68013978, -1, 7.83419068e-007, 3.55170016e-007, -6.54571295e-007, -1.00000119, 5.92768192e-005, 3.40984968e-007, 5.78463078e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.907832682, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -1.38047361, 6.38581276, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.813092232, -1.03410339, 8.01469326, 0.707098067, 3.42428684e-005, 0.707115889, 0.707115531, -3.48985195e-005, -0.707098365, 3.29195359e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 5.0610857, 0.889895916, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694484711, -0.245313644, 1.87116098, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -2.950562, 1.42107105, 1, -5.93067057e-007, -4.65370036e-008, -3.23365512e-008, -4.87565994e-005, -1.00000048, 4.64237701e-007, 1.00000119, -5.02169132e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 4.66860676, 1.18429279, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.668118))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.714970589, -1.1322422, 7.22968769, 0.707098067, 3.42428684e-005, 0.707115889, 0.707115531, -3.48985195e-005, -0.707098365, 3.29195359e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.34344101, -1.67490387, 0.694500923, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.55123901))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(1.23536968, -0.235519409, 7.51424789, -2.45105412e-008, 4.87565994e-005, 1.00000048, 1, -4.46888748e-007, 1.03027666e-008, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958111, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669461, -0.490633011, 0.59551239, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.907832325, 0.226957604))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.294372559, -0.449383259, -0.692103148, -1, 6.05387072e-007, -3.68178448e-008, 3.73051137e-007, 0.707064152, -0.707151592, -3.00909818e-007, -0.707151115, -0.707062602))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 0.90783006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.343437195, -2.50902224, 1.22481298, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 0.680872798))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.461185604, 0.432347715, 0.784996629))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0343418121, -0.104858875, 2.90233016, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.55123901))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(1.43161774, -0.382684708, 7.51424408, -2.45105412e-008, 4.87565994e-005, 1.00000048, 1, -4.46888748e-007, 1.03027666e-008, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.668118))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.44156456, -1.67484713, 7.56333065, 1, -4.46884371e-007, 9.97237137e-008, 1.13931456e-007, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.588748991, 1.7662425))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -1.62586355, -1.61146402, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.588748813, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, 0.0423226357, 0.498250484, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490837097, -0.537950993, -2.26368427, 1, -5.83602514e-007, 2.18954085e-007, -4.54788051e-007, -1.00000119, 5.90085983e-005, 2.33150899e-007, -5.75780869e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669747, -0.834083557, 0.301120758, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.226958096, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694484711, 1.87116098, -0.147171021, -3.18063314e-007, -1.00000119, 5.87999821e-005, 3.50953684e-008, 5.73694706e-005, 1.00000048, -1, 4.46892955e-007, 4.9300418e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50900507, -1.42107391, -0.441551208, -1.837117e-006, -4.78029251e-005, -1.00000048, -7.05506295e-007, -1.00000119, 4.92632389e-005, -1, 8.34422053e-007, 1.85130671e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.441556931, -2.50901222, 1.22480965, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694489002, -0.343442917, -1.47865105, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.69448328, -1.96928787, 0.245300293, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490608215, 0.631049156, -2.64176512, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.907832682, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 1.75643003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -1.89372039, 0.867925167, 1, -3.81058499e-007, -8.9002981e-008, -2.31236939e-007, -0.707139194, -0.707074523, 1.25466727e-007, 0.707076073, -0.70713979))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 1.6681174))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -1.18425035, 2.55887699, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.294376373, 0.0806875229, 1.10842729, -1, 5.11558653e-007, 5.70222696e-008, -2.40349664e-007, -0.707064152, 0.707151532, 3.00909903e-007, 0.707151055, 0.707062721))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 0.90783006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(2.50900507, -1.42107153, 0.539680481, -1.11077917e-007, 4.87565994e-005, 1.00000048, -3.50192465e-007, -1.00000119, 5.02169132e-005, 1, -4.79014773e-007, 9.68718012e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.96249199))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.539680481, -2.50901651, 0.390750885, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490837097, -2.16555643, 0.537970543, 1, -5.93067057e-007, -4.65370036e-008, -3.23365512e-008, -4.87565994e-005, -1.00000048, 4.64237701e-007, 1.00000119, -5.02169132e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694487572, -1.57677746, -0.147186279, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245313644, -1.6748538, 6.38581324, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 4.86483383, 1.18428659, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.5401485, -1.47866344, -0.0490589142, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490608215, -0.350220203, -2.64176798, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.907832682, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(8.05392838, 1.53261375, 0.191354752, 3.18018664e-007, 1.00000119, -5.87999821e-005, 9.46984926e-008, 5.73694706e-005, 1.00000048, 1, -4.46851743e-007, -1.08903585e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.680874527, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.55123925, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-7.51423454, 0.235517502, -1.03916979, -2.58459181e-007, -1.00000119, 5.87999821e-005, -1, 3.87285354e-007, -1.03109041e-008, 2.45194229e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694484711, 0.0490589142, -1.87116098, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.147184372, -1.47863054, 3.54016161, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.294372559, 0.0568704605, 1.08461213, -1, 5.11558653e-007, 5.70222696e-008, -2.40349664e-007, -0.707064152, 0.707151532, 3.00909903e-007, 0.707151055, 0.707062721))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 0.90783006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(2.50900507, -1.42107153, 0.539680481, -1.11077917e-007, 4.87565994e-005, 1.00000048, -3.50192465e-007, -1.00000119, 5.02169132e-005, 1, -4.79014773e-007, 9.68718012e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.147186279, -1.87115479, 0.694500923, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -2.85244274, 1.22480917, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.680872798))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490837097, 0.145457268, -2.26368189, -1, 7.58299052e-007, 1.08852319e-007, 6.2946566e-007, 1.00000119, -5.87999821e-005, -9.46655376e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014874, 0.147174835, 1.47866106, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.245300293, -1.47865295, 0.6945014, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -1.38050604, 3.54015994, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.55123925, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-7.51423168, -0.529888153, 1.43168259, -3.20809306e-007, -1.00000119, 5.87999821e-005, 1, -4.49635564e-007, 1.03145474e-008, -2.45194229e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50902605, -1.42107821, 0.44156456, 1.11077917e-007, -4.87565994e-005, -1.00000048, -2.85932202e-007, -1.00000119, 5.02169132e-005, -1, 4.14754425e-007, -9.68685754e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694488049, 1.47865915, 0.245315552, -3.18063314e-007, -1.00000119, 5.87999821e-005, 3.50953684e-008, 5.73694706e-005, 1.00000048, -1, 4.46892955e-007, 4.9300418e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(2.50901127, -1.42107344, -0.343437195, -1.1107786e-007, 4.87565994e-005, 1.00000048, -3.50192494e-007, -1.00000119, 5.02169132e-005, 1, -4.7901483e-007, 9.68717444e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.784996629))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.54166603, -1.2293663, 6.72925854, 0.707097888, -3.48687172e-005, -0.707116067, -0.70711571, -3.42428684e-005, -0.707098246, 3.17420216e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38579988, -1.87116051, 0.343439102, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -2.75431156, 1.42107296, 1, -5.93067057e-007, -4.65370036e-008, -3.23365512e-008, -4.87565994e-005, -1.00000048, 4.64237701e-007, 1.00000119, -5.02169132e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490818024, -2.16555786, 0.341711044, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.680872798))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694487095, 0.147184372, -1.77303648, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245315552, -1.67488289, 3.54015994, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(2.5089941, -1.42107391, 0.34344101, -1.11077917e-007, 4.87565994e-005, 1.00000048, -3.50192465e-007, -1.00000119, 5.02169132e-005, 1, -4.79014773e-007, 9.68718012e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.147184372, -1.87113667, 3.54016066, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014897, 1.47866106, 0.245315552, -3.18063314e-007, -1.00000119, 5.87999821e-005, 3.50953684e-008, 5.73694706e-005, 1.00000048, -1, 4.46892955e-007, 4.9300418e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014444, 0.0490570068, -1.87116718, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Bright red","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(8.05392933, -0.191354752, 1.82700491, 3.11322225e-007, 1.00000119, -5.87999821e-005, -1, 4.40155929e-007, 1.19739425e-007, 1.05533914e-007, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.680874527, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.55123901))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -2.36180878, 1.2738905, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958111, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.34344101, -1.77302837, 0.6945014, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.55123925, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-7.51423073, -1.43168259, -0.235519409, -3.1798163e-007, -1.00000119, 5.87999821e-005, 1.13912478e-007, -5.73694706e-005, -1.00000048, 1, -4.46802744e-007, 9.97075205e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.2453022, -1.13521957, -0.875504017, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832325, 0.68087256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.34344101, -1.77300739, 3.54015589, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245315552, -1.57675743, 3.54016066, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.55123925, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.27386999, -0.2453022, -2.36181974, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.294372559, 0.692106962, -0.0568642616, -1, 6.05404409e-007, 3.10511211e-007, 5.46503543e-007, 0.707139015, 0.707074642, 1.27459003e-007, 0.707076252, -0.707139552))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 0.90783006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.668118))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.6397686, -1.22936916, 7.26893377, 0.707097888, -3.48687172e-005, -0.707116067, -0.70711571, -3.42428684e-005, -0.707098246, 3.17420216e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.177495))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.147184372, -1.13524342, -1.6114583, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.147174835, -1.96926403, 3.54016185, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.34344101, -1.67488289, 3.54015899, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.432347655, 0.588748991, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, 3.88357353, 0.301130295, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 1, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 5.06108475, 1.18427896, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0.5,"Really red","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50901461, -0.0490589142, -0.541426659, -9.46957712e-008, -4.87565994e-005, -1.00000048, -1, 4.46894546e-007, 1.08903606e-007, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.680874527, 0.226957589))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 2.55124497, 0.588747501))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -0.0558166504, -0.433925629, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50901222, -1.42107344, 0.245321274, -1.837117e-006, -4.78029251e-005, -1.00000048, -7.05506295e-007, -1.00000119, 4.92632389e-005, -1, 8.34422053e-007, 1.85130671e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.2943573, 0.715921402, -0.080678463, -1, 6.05404409e-007, 3.10511211e-007, 5.46503543e-007, 0.707139015, 0.707074642, 1.27459003e-007, 0.707076252, -0.707139552))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 0.90783006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0.5,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.541457176, -0.245313644, 2.75432682, -3.11322196e-007, -1.00000119, 5.90085983e-005, 1, -4.40154651e-007, -9.80572565e-008, 8.38518233e-008, 5.75780869e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.680874527, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014421, -0.245315552, 1.87116718, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50901508, 1.02857304, -0.343446732, -3.44488672e-006, -4.81307507e-005, -1.00000048, 3.7769712e-007, 1.00000119, -4.95910645e-005, 1, -5.06690526e-007, -3.45909302e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014349, -1.96930313, 0.245304108, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -2.75431681, 1.22483969, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.680872798))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.37374437))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -2.06742668, 0.0963764191, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694487572, -1.47865915, -0.0490608215, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.432347655, 1.37374759, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, 4.27608585, 0.595516682, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 1, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.588748991, 1.7662425))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245313644, -1.62587166, -1.61146212, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245315552, -1.57678032, 0.694500923, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 3.68730807, 1.18429136, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.55123925, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.27386951, 2.36181927, 0.147186279, -3.18063314e-007, -1.00000119, 5.87999821e-005, 3.50953684e-008, 5.73694706e-005, 1.00000048, -1, 4.46892955e-007, 4.9300418e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.69448328, -1.87116718, 0.34344101, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490589142, -1.96927261, 3.54016185, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0.5,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.541446686, -0.245315552, -2.26369286, 3.34473356e-007, 1.00000119, -5.87999821e-005, 1, -4.63309902e-007, -1.68503149e-007, -1.54298974e-007, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.680874527, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669032, -0.539684296, 1.18426561, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.226958096, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.432347655, 0.588748991, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 4.66858578, 0.889900208, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 1, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669771, -0.245315552, 0.301145077, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.226958096, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014397, -1.87116718, 0.34344101, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490627289, -1.02355766, 2.64175844, 1, -1.13017222e-008, -7.91671823e-007, 7.77441755e-007, 4.84883785e-005, 1.00000048, 1.17563076e-007, -1.00000119, 4.99486923e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.907832682, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Lime green","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(8.05392647, -0.103023529, -1.53262234, 3.34473356e-007, 1.00000119, -5.87999821e-005, 1, -4.63309902e-007, -1.68503149e-007, -1.54298974e-007, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.680874527, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014063, 0.147182465, -1.77304411, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.34344101, -1.57675695, 3.54016113, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.294372559, -1.08461046, 0.449367523, -1, 5.81013978e-007, 1.47227425e-007, -4.13802127e-007, -0.707139015, -0.707074642, -2.25677297e-007, -0.707076252, 0.707139552))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 0.90783006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, 4.27608585, 0.301128387, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.2943573, -1.10842776, 0.47317791, -1, 5.81013978e-007, 1.47227425e-007, -4.13802127e-007, -0.707139015, -0.707074642, -2.25677297e-007, -0.707076252, 0.707139552))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 0.90783006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.5401473, 0.245304108, 1.57678747, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245313644, -1.57672119, 6.38582945, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.245304108, -1.47863007, 3.5401597, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, 3.88358545, 1.18429613, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.96249199))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.441566467, 2.50903749, 0.390751839, -1, 4.46891647e-007, 4.92917671e-008, 3.50839642e-008, 4.87565994e-005, 1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014659, -1.57678795, -0.147184372, -3.17553969e-007, -1.00000119, 5.87999821e-005, 2.45077985e-008, -5.73694706e-005, -1.00000048, 1, -4.46380227e-007, 1.03026991e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.441556931, 1.77297735, 8.05396557, -1, 4.46891647e-007, 4.92917671e-008, 3.50839642e-008, 4.87565994e-005, 1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490531921, 3.49107122, 0.301146984, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.2453022, -1.47860289, 6.38581467, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669056, -0.245315552, 1.18426561, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.226958096, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669461, -0.735940933, 0.59551239, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.226958096, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.784996629))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.12285614, -0.810565948, 6.72925806, 0.707097888, -3.48687172e-005, -0.707116067, -0.70711571, -3.42428684e-005, -0.707098246, 3.17420216e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -1.96928167, 0.694500446, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.61050987, 1.07523632, 8.00489521, -0.707098067, -3.42428684e-005, -0.707115889, -0.707115531, 3.49879265e-005, 0.707098365, 3.71347738e-007, 1.00000119, -5.03659248e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, 4.07983494, 1.18428326, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.784996629))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -2.16555119, 1.17575836, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.680874228, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245315552, -1.77301359, 3.54015589, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-6.38579845, -0.34344101, -1.47865248, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.343439102, -1.57671022, 8.34834385, 1, -4.46884371e-007, 9.97237137e-008, 1.13931456e-007, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694486141, 1.77303457, -0.245300293, -3.18063314e-007, -1.00000119, 5.87999821e-005, 3.50953684e-008, 5.73694706e-005, 1.00000048, -1, 4.46892955e-007, 4.9300418e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, -1.42104483, -2.85244846, 1, -5.83602514e-007, 2.18954085e-007, -4.54788051e-007, -1.00000119, 5.90085983e-005, 2.33150899e-007, -5.75780869e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.343439102, -1.77296782, 8.34834576, 1, -4.46884371e-007, 9.97237137e-008, 1.13931456e-007, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.147171021, -1.96922827, 6.38581371, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.55123925, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-7.51423454, 1.03916979, 0.529888153, -3.05380524e-007, -1.00000119, 5.87999821e-005, 3.50952547e-008, 5.73694706e-005, 1.00000048, -1, 4.34210165e-007, 4.93010717e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.784996629))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.343439102, -1.67485523, 7.0236311, 1, -4.46884371e-007, 9.97237137e-008, 1.13931456e-007, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490570068, 0.104875565, 0.694504738, -1, 4.46888748e-007, -1.03144195e-008, -2.45221941e-008, 4.87565994e-005, 1.00000048, 3.18062263e-007, 1.00000119, -5.02169132e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Institutional white","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-8.05392933, -0.103021622, 1.82700682, -3.11322196e-007, -1.00000119, 5.90085983e-005, 1, -4.40154651e-007, -9.80572565e-008, 8.38518233e-008, 5.75780869e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.680874527, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.34344101, -1.57677126, 0.694500446, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.55123901))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.245300293, -2.50899744, 1.27389288, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50900507, 1.02857828, 0.343431473, -3.44488672e-006, -4.81307507e-005, -1.00000048, 3.7769712e-007, 1.00000119, -4.95910645e-005, 1, -5.06690412e-007, -3.45909325e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 3.49106789, 0.595517159, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490608215, 0.35022068, -2.34740973, -1, 5.06501863e-007, 1.52921388e-007, 1.38716672e-007, 4.91440296e-005, 1.00000048, 3.77667334e-007, 1.00000119, -5.06043434e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.907832682, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -1.38052273, 0.694500446, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.294376373, -0.473195553, -0.71591568, -1, 6.05387072e-007, -3.68178448e-008, 3.73051137e-007, 0.707064152, -0.707151592, -3.00909818e-007, -0.707151115, -0.707062602))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.907832682, 0.90783006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245315552, -2.50901842, 1.22481108, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.453916222, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245315552, -1.67490387, 0.694500446, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 5.06109333, 0.595511913, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.784996629))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.764038086, 1.19418287, 6.7390604, -0.707097769, 3.49879265e-005, 0.707116127, 0.707115829, 3.41534615e-005, 0.707098126, 4.43859108e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490570068, 2.46075344, -0.301148415, -1, 5.03652586e-007, -9.78606565e-008, 3.74831302e-007, 1.00000119, -5.90085983e-005, 1.12062189e-007, -5.75780869e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.432347655, 0.588748991, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, 3.88356614, 0.889912128, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 1, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669032, -0.392501831, 1.18426561, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 0.453916222, 0.226957604))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014707, -0.343442917, -1.47866058, -2.90589298e-007, -1.00000119, 5.87999821e-005, -1, 4.19412089e-007, -6.991894e-008, 8.41255599e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.55123901))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -2.65619135, 1.27388859, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958111, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.784996629))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.441556931, 1.67486477, 6.72926092, -1, 4.46891647e-007, 4.92917671e-008, 3.50839642e-008, 4.87565994e-005, 1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.784996629))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -0.301120758, 3.00045681, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.245304108, -1.87113667, 3.54016066, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490627289, -0.742734432, 2.64176559, -1, 8.82553365e-007, 7.91620323e-007, -7.77434252e-007, -4.91440296e-005, -1.00000048, -7.53687004e-007, -1.00000119, 5.06043434e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.907832682, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0.5,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50900459, -0.343442917, -0.541424751, -9.46957712e-008, -4.87565994e-005, -1.00000048, -1, 4.46894546e-007, 1.08903606e-007, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.680874527, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.764011383, 1.09605169, 8.06375217, -0.707097769, 3.49879265e-005, 0.707116127, 0.707115829, 3.41534615e-005, 0.707098126, 4.43859108e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490570068, 1.87200308, -0.889911175, -1, 5.03652586e-007, -9.78606565e-008, 3.74831302e-007, 1.00000119, -5.90085983e-005, 1.12062189e-007, -5.75780869e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.680874228, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014468, -0.147184372, 1.96930313, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.147186279, -1.47865295, 0.694500923, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 5.06109333, 0.301119328, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.784996629))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.61053324, 1.17336941, 6.68018913, -0.707098067, -3.42428684e-005, -0.707115889, -0.707115531, 3.49879265e-005, 0.707098365, 3.71347738e-007, 1.00000119, -5.03659248e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490818024, -2.26368475, 0.341706753, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.680872798))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.245315552, -1.77303028, 0.694502354, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.54014444, 1.87116718, -0.147174835, -3.18063314e-007, -1.00000119, 5.87999821e-005, 3.50953684e-008, 5.73694706e-005, 1.00000048, -1, 4.46892955e-007, 4.9300418e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.813094139, -1.23036385, 8.01469421, 0.707098067, 3.42428684e-005, 0.707115889, 0.707115531, -3.48985195e-005, -0.707098365, 3.29195359e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490837097, -2.16555357, -0.145475388, -1, 5.93067284e-007, 5.20292858e-008, -3.78288192e-008, -4.87565994e-005, -1.00000048, -4.64237644e-007, -1.00000119, 5.02169132e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.490623981, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-3.19669747, -0.539684296, 0.301120758, -3.18063314e-007, -1.00000119, 5.87999821e-005, 1, -4.46892955e-007, -4.92917493e-008, 3.50866856e-008, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.453915119, 1, 0.226957604))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.55123925, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.27386522, -0.147186279, 2.65620184, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490589142, 3.49106383, 0.889908791, 1, -3.28492746e-007, -2.35756062e-007, 1.99652547e-007, 1.00000119, -5.87999821e-005, 2.21543942e-007, 5.73694706e-005, 1.00000048))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.45391649, 0.680872858))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-2.50901937, -0.245321274, -1.02857685, -2.58317846e-006, -4.78029251e-005, -1.00000048, 1, -5.96029224e-007, -2.59738044e-006, -4.67077939e-007, -1.00000119, 4.92632389e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.453915209, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0.5,"Toothpaste","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.541447163, 2.26368523, 0.343442917, 3.18018664e-007, 1.00000119, -5.87999821e-005, 9.46984926e-008, 5.73694706e-005, 1.00000048, 1, -4.46851743e-007, -1.08903585e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.680874527, 0.680872738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490570068, 1.02855015, -2.85244894, -1, 7.58299052e-007, 1.08852319e-007, 6.2946566e-007, 1.00000119, -5.87999821e-005, -9.46655376e-008, -5.73694706e-005, -1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.764024734, 1.29229784, 8.06375122, -0.707097769, 3.49879265e-005, 0.707116127, 0.707115829, 3.41534615e-005, 0.707098126, 4.43859108e-007, 1.00000119, -5.03361225e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(2.84561348, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.694488049, 0.147172928, 1.47865915, -3.60331796e-007, -1.00000119, 5.87999821e-005, 1, -4.89164961e-007, -1.08895435e-007, 9.46928367e-008, 5.73694706e-005, 1.00000048))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.668118))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.7086463, 1.17337132, 7.21989059, -0.707098067, -3.42428684e-005, -0.707115889, -0.707115531, 3.49879265e-005, 0.707098365, 3.71347738e-007, 1.00000119, -5.03659248e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-1.61052322, 1.27147961, 8.00489521, -0.707098067, -3.42428684e-005, -0.707115889, -0.707115531, 3.49879265e-005, 0.707098365, 3.71347738e-007, 1.00000119, -5.03659248e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Fossil","Part",Vector3.new(0.490622938, 0.432347715, 0.432347715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(-0.0490531921, 0.104857922, 3.34389472, -1, 3.61571296e-007, 1.02468533e-007, 8.82564066e-008, 4.87565994e-005, 1.00000048, 2.32739438e-007, 1.00000119, -5.02169132e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.226958096, 0.226957589))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 1.96249199))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -2.95057631, 0.390752316, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.680872858, 0.226958096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.432347655, 0.432347715, 2.84561276))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.147171021, -1.96928167, 0.694502354, 1, -4.46891647e-007, -4.92917671e-008, -3.50839642e-008, -4.87565994e-005, -1.00000048, 3.18062291e-007, 1.00000119, -5.02169132e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.226957604, 0.226958096, 1))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Barrel",Vector3.new(0.432347655, 1.7281816, 0.432347715))
Barrelweld=weld(m,Handle,Barrel,CFrame.new(0, 0, 0, 1, -3.93950415e-007, -7.33235552e-008, -1.83752363e-007, -0.500038326, -0.866003275, 2.00045037e-007, 0.866004765, -0.500039279),CFrame.new(0.0490570068, -7.23259068, -1.68114424, 1, -4.46850237e-007, -4.93354477e-008, -3.18020852e-007, -1.00000119, 5.02467155e-005, -3.51276483e-008, -4.88162041e-005, -1.00000036))
mesh("CylinderMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(0.666200757, 1, 0.666200459))

ready = false

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function LaserBarrage(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,0,0.5,BrickColor.new("Dark stone grey"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
spread=vt((math.random(0,0)+math.random())*0,(math.random(0,0)+math.random())*0,(math.random(0,0)+math.random())*0)*(Prt.Position-Mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=Mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,0,1,BrickColor.new("Dark stone grey"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Hot pink"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(9999) 
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Hot pink"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function shoot()
 if ready==true then
                attack=true
                ready = false
LaserBarrage(Barrel,m)
so("http://roblox.com/asset/?id=166535638",Barrel,1,1) 
so("http://roblox.com/asset/?id=166535638",Barrel,1,1) 
                for i=0,1,0.1 do
                        swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-10),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0.3) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-.3, 0.4, -0.8) * angles(math.rad(120), math.rad(0), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,0,-0.5)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(70)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.5)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
                end
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(-10),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0.3) * angles(math.rad(80), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-.3, 0.4, -0.8) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,0,-0.5)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(70)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.5)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
end
                attack=false
        end
end

mouse.Button1Down:connect(function()
        pcall(function()
                shoot()
        end)
end)

mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=='f' then
                if ready==false then
                        ready=true
                        attack=true
                elseif ready==true then
                        ready=false
                        attack=false
                end
end
end)



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
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Humanoid.WalkSpeed = 16
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Humanoid.WalkSpeed = 16
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
Humanoid.WalkSpeed = 16
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(70), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-.3, 0.4, -0.8) * angles(math.rad(80), math.rad(0), math.rad(60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(-5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.5)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
Humanoid.WalkSpeed = 16
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(70), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-.3, 0.4, -0.8) * angles(math.rad(80), math.rad(0), math.rad(60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.5)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
end
end
end
if ready==true then
Humanoid.WalkSpeed = 5
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(-10),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0.3) * angles(math.rad(80), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-.3, 0.4, -0.8) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,0,-0.5)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(70)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.5)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
        end
end