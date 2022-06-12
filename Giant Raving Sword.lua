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
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
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
w2.BrickColor = BrickColor.new("Really red")
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Really red"))
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Handle",Vector3.new(0.47127685, 6.3622365, 0.47127685))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994874, 0, 0, 0, 1),CFrame.new(-0.138687134, -1.94626427, -1.14470816, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.942553699, 0.431683987, 7.77606821))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -1.90734863e-005, 10.6036348, -2.7978557e-019, 1, -2.11954898e-009, -1, -4.49694887e-017, -2.10845315e-008, -2.10845315e-008, 2.11954898e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 2.35638404))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-0.235641241, -1.90734863e-005, 8.60073185, 5.96046448e-007, 1, 8.72877948e-008, -1, 5.96046448e-007, -2.10845137e-008, -2.10845652e-008, -8.72877806e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.548587799, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Hitbox",Vector3.new(1.17819202, 0.431683987, 7.77606821))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.57627869e-007, 2.0980835e-005, 10.6036358, 8.64267349e-007, -1, 3.70933577e-008, 1, 8.64267349e-007, 2.24855157e-007, -2.24855185e-007, 3.70931623e-008, 1))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.436686844, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(10.2471504, -1.71661377e-005, 10.2471485, 4.17314908e-007, 0.707106769, 0.707106888, -1, 4.06722535e-007, 1.8344987e-007, -1.57877665e-007, -0.707106829, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.551317096, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 2.35638404))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0.235642195, -1.90734863e-005, 8.60073185, 5.96046448e-007, 1, 8.72877948e-008, -1, 5.96046448e-007, -2.10845137e-008, -2.10845652e-008, -8.72877806e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.548587799, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -1.52587891e-005, 7.30471659, 1.1920929e-006, 1, -2.11952234e-009, -1, 1.1920929e-006, 5.50754237e-007, 5.50754237e-007, 2.11886575e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.849999964, 0.551317096, 0.850000083))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553461))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.1920929e-006, -1.90734863e-005, 13.9025793, 5.96046448e-007, 1, 8.72877948e-008, -1, 5.96046448e-007, -2.10845137e-008, -2.10845652e-008, -8.72877806e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.548587799, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.81469727e-006, -1.90734863e-005, 8.95417881, -2.7978557e-019, 1, -2.11954898e-009, -1, -4.49694887e-017, -2.10845315e-008, -2.10845315e-008, 2.11954898e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 0.551317096, 0.436686993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-6.58149529, -1.71661377e-005, 6.58149815, -2.9884724e-008, 0.707106709, -0.707106948, -1, 6.84152184e-008, 1.1067857e-007, 1.26638426e-007, 0.707106888, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 0.551317096, 0.436686993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.16521358, -1.90734863e-005, 5.16521358, 4.17314908e-007, 0.707106769, 0.707106888, -1, 4.06722535e-007, 1.8344987e-007, -1.57877665e-007, -0.707106829, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.849999964, 0.551317096, 0.850000083))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 2.35638404))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(9.53674316e-007, -1.90734863e-005, 11.7818422, 5.96046448e-007, 1, 8.72877948e-008, -1, 5.96046448e-007, -2.10845137e-008, -2.10845652e-008, -8.72877806e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.548587799, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.81469727e-006, -1.90734863e-005, 9.66108418, -2.7978557e-019, 1, -2.11954898e-009, -1, -4.49694887e-017, -2.10845315e-008, -2.10845315e-008, 2.11954898e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 0.551317096, 0.436686993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.942553699, 0.47127676, 0.942553461))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(2.46478605, 0, -2.45052147, 2.9719919e-008, 0.707106709, -0.707106948, -1, 6.74940921e-008, 2.54637627e-008, 6.57311361e-008, 0.707106948, 0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-0.00832653046, -2.95724702, 0.00832653046, -0.707106292, -0.707107365, 1.63920468e-008, -1.13011822e-011, 2.31931363e-008, 1, -0.707107365, 0.707106292, -1.64080038e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0.00832748413, -3.06328011, -0.00832462311, -0.707106292, 0.707107365, -1.64079239e-008, 2.10848246e-008, -2.11949636e-009, -1, -0.707107365, -0.707106292, -1.3410526e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 0.589102745, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 0.471286774, 3.81469727e-006, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 0.82473278, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 1.29600334, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 2.91010475, 3.81469727e-006, 1, -2.27335702e-017, 8.06892189e-008, -8.06892189e-008, 2.11954165e-009, 1, -1.93757754e-016, -1, 2.11954165e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 1.17818928, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 0.942557335, 3.81469727e-006, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 0.706920624, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 1.06036949, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.80000001192093,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 2.75697637, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 2.78053427, 3.81469727e-006, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.80000001192093,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-006, 2.86297798, 0, 1, -2.27335702e-017, 8.06892189e-008, -8.06892189e-008, 2.11954165e-009, 1, -1.93757754e-016, -1, 2.11954165e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 2.88654709, 3.81469727e-006, 1, -2.27335702e-017, 8.06892189e-008, -8.06892189e-008, 2.11954165e-009, 1, -1.93757754e-016, -1, 2.11954165e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.60000002384186,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 2.75696874, 3.81469727e-006, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 2.82766294, 3.81469727e-006, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.60000002384186,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 2.86297035, 3.81469727e-006, 1, -2.27335702e-017, 8.06892189e-008, -8.06892189e-008, 2.11954165e-009, 1, -1.93757754e-016, -1, 2.11954165e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 2.80409765, 3.81469727e-006, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 2.93367577, 3.81469727e-006, 1, -2.27335702e-017, 8.06892189e-008, -8.06892189e-008, 2.11954165e-009, 1, -1.93757754e-016, -1, 2.11954165e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.0545858555, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.47127685, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 2.00292492, 3.81469727e-006, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.600444376, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 6.3622365, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-0.129585266, -0.0589094162, 3.81469727e-006, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.949999988, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0.00832748413, -3.0514946, -0.00832462311, -0.707106292, 0.707107365, -1.64079239e-008, 2.10848246e-008, -2.11949636e-009, -1, -0.707107365, -0.707106292, -1.3410526e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.496731251, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.942553699, 0.47127676, 0.942553461))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(2.46478605, 0, -2.45052147, 2.9719919e-008, 0.707106709, -0.707106948, -1, 6.74940921e-008, 2.54637627e-008, 6.57311361e-008, 0.707106948, 0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1.00999999, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-0.00832653046, -2.94546914, 0.00832653046, -0.707106292, -0.707107365, 1.63920468e-008, -1.13011822e-011, 2.31931363e-008, 1, -0.707107365, 0.707106292, -1.64080038e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.496731251, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 6.3622365, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0.129598618, -0.0589094162, 3.81469727e-006, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.949999988, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-3.58234119, 1.90734863e-006, 3.58231902, 2.9719919e-008, 0.707106709, -0.707106948, -1, 6.74940921e-008, 2.54637627e-008, 6.57311361e-008, 0.707106948, 0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.540399909, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.471276909, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.08363247, 1.90734863e-006, 3.08129597, 2.38500974e-007, 0.707106769, 0.707106888, -1, 2.62476846e-007, 7.48144728e-008, -1.32697366e-007, -0.707106829, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.55677563, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-2.49929142, 1.90734863e-006, 2.49926829, 2.9719919e-008, 0.707106709, -0.707106948, -1, 6.74940921e-008, 2.54637627e-008, 6.57311361e-008, 0.707106948, 0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.540399909, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(1.17819202, 0.431683987, 1.1781919))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.08245516, 1.90734863e-006, 3.08247662, 2.38500974e-007, 0.707106769, 0.707106888, -1, 2.62476846e-007, 7.48144728e-008, -1.32697366e-007, -0.707106829, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-2.49929142, 1.90734863e-006, 2.49926829, 2.9719919e-008, 0.707106709, -0.707106948, -1, 6.74940921e-008, 2.54637627e-008, 6.57311361e-008, 0.707106948, 0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.543129206, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(1.17819202, 0.431683987, 1.1781919))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.08245468, 1.90734863e-006, 3.08247614, -5.95222431e-008, 0.707106769, 0.707106829, -1, 2.13529061e-009, -8.63124541e-008, -6.2542e-008, -0.707106829, 0.707106829))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.551317096, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.706915319, 0.431683987, 0.70691514))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-3.58234119, 1.90734863e-006, 3.58231902, 2.9719919e-008, 0.707106709, -0.707106948, -1, 6.74940921e-008, 2.54637627e-008, 6.57311361e-008, 0.707106948, 0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.543129206, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 3.06329918))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.83053207, 0, -3.59342003, -2.10848654e-008, 2.11953632e-009, 1, -1, 5.96472081e-018, -2.10848654e-008, -5.06548632e-017, -1, 2.11953632e-009))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 0.436686844, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 3.06329918))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.03983116, 0, -5.66268873, 1.0092191e-010, -0.49999997, 0.866025448, -1, -8.85555448e-011, 6.54072352e-011, 4.39878793e-011, -0.866025448, -0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 0.436686844, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 3.06329918))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.1596446, 0, -1.14267612, 2.99032479e-008, 0.5, 0.866025507, -1, 5.96862151e-008, 6.94447694e-011, -5.16550607e-008, -0.866025448, 0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 0.436686844, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 3.06329918))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.06750488, -7.62939453e-006, -5.63829994, 1.00921965e-010, 0.49999997, 0.866025507, 1, -7.84179527e-011, -7.1260331e-011, 3.22817779e-011, 0.866025448, -0.49999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 0.436686844, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 3.06329918))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.8422966, -5.7220459e-006, -3.55846047, -2.10848654e-008, 2.11953632e-009, 1, 1, -5.96472081e-018, 2.10848654e-008, 5.06548632e-017, 1, -2.11953632e-009))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 0.436686844, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 3.06329918))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.15236616, -5.7220459e-006, -1.10649979, -2.97014005e-008, -0.49999997, 0.866025448, 1, -5.95192411e-008, -6.7222547e-011, 5.15787875e-008, 0.866025448, 0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 0.436686844, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 2.12074566))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.47706032, 1.90734863e-006, -3.12215781, -2.10848654e-008, 2.11953632e-009, 1, -1, 5.96472081e-018, -2.10848654e-008, -5.06548632e-017, -1, 2.11953632e-009))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 2.12074566))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.68635941, 0, -5.19142342, 1.0092191e-010, -0.49999997, 0.866025448, -1, -8.85555448e-011, 6.54072352e-011, 4.39878793e-011, -0.866025448, -0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 2.12074566))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.8061738, 1.90734863e-006, -0.671413898, 2.99032479e-008, 0.5, 0.866025507, -1, 5.96862151e-008, 6.94447694e-011, -5.16550607e-008, -0.866025448, 0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 2.12074566))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.71404743, -5.7220459e-006, -5.16704845, 1.00921965e-010, 0.49999997, 0.866025507, 1, -7.84179527e-011, -7.1260331e-011, 3.22817779e-011, 0.866025448, -0.49999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 2.12074566))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.4887991, -7.62939453e-006, -3.08720088, -2.10848654e-008, 2.11953632e-009, 1, 1, -5.96472081e-018, 2.10848654e-008, 5.06548632e-017, 1, -2.11953632e-009))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.706915319, 0.431683987, 2.12074566))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.79890299, -5.7220459e-006, -0.635236621, -2.97014005e-008, -0.49999997, 0.866025448, 1, -5.95192411e-008, -6.7222547e-011, 5.15787875e-008, 0.866025448, 0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 1.88510728))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.35923672, 1.90734863e-006, -3.004354, -2.10848654e-008, 2.11953632e-009, 1, -1, 5.96472081e-018, -2.10848654e-008, -5.06548632e-017, -1, 2.11953632e-009))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553699))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.71270561, -1.90734863e-006, -4.53597069, -2.10848654e-008, 2.11953632e-009, 1, -1, 5.96472081e-018, -2.10848654e-008, -5.06548632e-017, -1, 2.11953632e-009))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 1.88510728))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.56853008, 1.90734863e-006, -5.07360697, 1.0092191e-010, -0.49999997, 0.866025448, -1, -8.85555448e-011, 6.54072352e-011, 4.39878793e-011, -0.866025448, -0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553699))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.92202568, 1.90734863e-006, -6.60524845, 1.0092191e-010, -0.49999997, 0.866025448, -1, -8.85555448e-011, 6.54072352e-011, 4.39878793e-011, -0.866025448, -0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 1.88510728))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.6883502, 1.90734863e-006, -0.553584576, 2.99032479e-008, 0.5, 0.866025507, -1, 5.96862151e-008, 6.94447694e-011, -5.16550607e-008, -0.866025448, 0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553699))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.04181051, 1.90734863e-006, -2.08520555, 2.99032479e-008, 0.5, 0.866025507, -1, 5.96862151e-008, 6.94447694e-011, -5.16550607e-008, -0.866025448, 0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 1.88510728))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.59622097, -7.62939453e-006, -5.04922485, 1.00921965e-010, 0.49999997, 0.866025507, 1, -7.84179527e-011, -7.1260331e-011, 3.22817779e-011, 0.866025448, -0.49999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553699))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.94971085, -5.7220459e-006, -6.58086109, 1.00921965e-010, 0.49999997, 0.866025507, 1, -7.84179527e-011, -7.1260331e-011, 3.22817779e-011, 0.866025448, -0.49999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 1.88510728))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.37100601, -7.62939453e-006, -2.96938396, -2.10848654e-008, 2.11953632e-009, 1, 1, -5.96472081e-018, 2.10848654e-008, 5.06548632e-017, 1, -2.11953632e-009))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553699))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.72446442, -7.62939453e-006, -4.50100327, -2.10848654e-008, 2.11953632e-009, 1, 1, -5.96472081e-018, 2.10848654e-008, 5.06548632e-017, 1, -2.11953632e-009))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 1.88510728))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.68107176, -7.62939453e-006, -0.517408967, -2.97014005e-008, -0.49999997, 0.866025448, 1, -5.95192411e-008, -6.7222547e-011, 5.15787875e-008, 0.866025448, 0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553699))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(4.03451967, -5.7220459e-006, -2.0490427, -2.97014005e-008, -0.49999997, 0.866025448, 1, -5.95192411e-008, -6.7222547e-011, 5.15787875e-008, 0.866025448, 0.49999997))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.272929311, 0.551317096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.17819202, 0.471276879))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, 6.12653065, -0.235630035, 1, -1.10232007e-017, 3.90650889e-008, -3.90650889e-008, 2.11953455e-009, 1, -9.38230139e-017, -1, 2.11953455e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127676, 0.471276939))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, 0.706905127, -6.00870228, -1, 9.85864956e-018, -3.49257157e-008, 8.38854116e-017, 1, -2.11954898e-009, 3.49257157e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127676, 0.471276939))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, 0.706909895, -6.0087018, 1, -2.07059851e-018, 7.24334726e-009, -1.74232295e-017, -1, 2.11954898e-009, 7.24334726e-009, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.17819202, 0.471276879))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, 6.12653017, -0.235634089, -1, 9.06044012e-019, -3.10397041e-009, -3.10397041e-009, 2.11953766e-009, 1, 7.48503163e-018, 1, -2.11953766e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127679, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -5.33699083, 5.37031364, -1, 1.10232007e-017, -3.90650889e-008, 2.99255909e-008, -0.642787695, -0.766044378, -2.5110559e-008, -0.766044378, 0.642787695))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.534941494, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.41383028, 0.471276939))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.71661377e-005, -15.1985502, 0.235637665, 1, -7.95318443e-018, 2.81527921e-008, 2.81527921e-008, -2.11953988e-009, -1, 6.76241459e-017, 1, -2.11953988e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127679, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -6.45125961, 3.288414, -1, 5.96462445e-018, -2.10845315e-008, 1.98129797e-008, -0.342020154, -0.939692676, -7.21133508e-009, -0.939692736, 0.342020154))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.540400028, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.70691514, 1.17819214))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -6.59780788, 1.06036115, -1, 1.10232007e-017, -3.90650889e-008, 3.90650889e-008, -2.11953455e-009, -1, -9.38230139e-017, -1, 2.11953455e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127679, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -6.45125961, 3.28841209, 1, -5.96462197e-018, 2.10845279e-008, 1.98129744e-008, 0.342020184, -0.939692616, -7.2113342e-009, 0.939692616, 0.342020184))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.540400028, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.70691514, 1.17819214))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -6.59780741, 1.06035578, 1, -9.06044012e-019, 3.10397041e-009, 3.10397041e-009, -2.11953766e-009, -1, 7.48503163e-018, 1, -2.11953766e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127679, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -5.33699036, 5.37031269, 1, -9.06044012e-019, 3.10397041e-009, 2.37777975e-009, 0.642787635, -0.766044378, -1.99519423e-009, 0.766044438, 0.642787635))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.534941494, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.41383028, 0.471276939))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -15.1985502, 0.235634089, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.47127679, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(2.86102295e-005, -5.45164728, 5.4353075, -1, 1.10232041e-017, -3.90650854e-008, 2.99255873e-008, -0.642787695, -0.766044378, -2.51105554e-008, -0.766044378, 0.642787695))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.47127679, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.05175781e-005, -5.72134924, 4.95808125, -1, 5.96046519e-008, -2.81763075e-008, -1.11071472e-008, -0.57357645, -0.819151998, -6.49865441e-008, -0.819152057, 0.57357651))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.47127679, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -5.70764017, 4.97766304, 1, -5.96046519e-008, 1.39927545e-008, 4.56500118e-008, 0.573576331, -0.819152117, 4.07993674e-008, 0.819152117, 0.573576391))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 1.17819214))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -6.66683817, 2.64804816, 1, -9.10891291e-020, 2.07233342e-010, 2.00172337e-010, 0.258819014, -0.965925813, -5.36357139e-011, 0.965925932, 0.258819044))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.47127679, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -5.4362812, 5.45362663, 1, -9.06044012e-019, 3.10397041e-009, 2.37777975e-009, 0.642787635, -0.766044378, -1.99519423e-009, 0.766044438, 0.642787635))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.47127679, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -6.57304001, 3.33273697, 1, -5.96462197e-018, 2.10845279e-008, 1.98129744e-008, 0.342020184, -0.939692616, -7.2113342e-009, 0.939692616, 0.342020184))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 2.12074542, 0.471276939))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -15.5520258, 0.294540286, 1, -7.95318443e-018, 2.81527921e-008, 2.81527921e-008, -2.11953988e-009, -1, 6.76241459e-017, 1, -2.11953988e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 2.12074542, 0.471276939))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -15.5520258, 0.294544458, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 1.17819214))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -6.72740221, 1.06035578, 1, -9.06044012e-019, 3.10397041e-009, 3.10397041e-009, -2.11953766e-009, -1, 7.48503163e-018, 1, -2.11953766e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 1.64946854, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, 10.2501783, 0.0589027405, 1, -5.96462445e-018, 2.10845315e-008, -2.10845315e-008, 2.11953899e-009, 1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.5, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -13.0189238, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, 0.11782074, -10.1323633, 1, -9.97980505e-018, 3.53563578e-008, -8.49193411e-017, -1, 2.11954898e-009, 3.53563578e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 1.17819214))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.05175781e-005, -6.72740459, 1.03645062, -1, 1.10232041e-017, -3.90650854e-008, 3.90650854e-008, -2.1195381e-009, -1, -9.38231396e-017, -1, 2.1195381e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.47127679, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.05175781e-005, -6.58121395, 3.31027269, -1, 5.96462197e-018, -2.10845279e-008, 1.98129761e-008, -0.342020154, -0.939692676, -7.21133375e-009, -0.939692736, 0.342020154))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.471276999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.71661377e-005, -7.01797199, 2.4415319, 1, 2.71393856e-017, -9.65826104e-008, -9.32916819e-008, 0.258817583, -0.96592629, 2.49972771e-008, 0.96592629, 0.258817583))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -0.235641718, 10.1323643, 1, -1.94944302e-018, 6.81270151e-009, 1.63893034e-017, 1, -2.11954898e-009, -6.81270151e-009, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -3.81469727e-006, 13.0189199, -1, 5.96462445e-018, -2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.47127676, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -0.294540286, 10.5447378, -1, 9.97980505e-018, -3.53563578e-008, -8.49193411e-017, -1, 2.11954898e-009, -3.53563578e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.5, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -0.23563385, 10.1323671, -1, 9.97980505e-018, -3.53563578e-008, -8.49193411e-017, -1, 2.11954898e-009, -3.53563578e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.47127676, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -0.294544458, 10.5447369, 1, -1.94944302e-018, 6.81270151e-009, 1.63893034e-017, 1, -2.11954898e-009, -6.81270151e-009, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.5, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 1.17819214))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.05175781e-005, -6.67302656, 2.62495732, -1, 1.18381556e-017, -4.1961826e-008, 4.05320151e-008, -0.258819073, -0.965925932, -1.08605205e-008, -0.965925932, 0.258819073))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 1.64946854, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, 10.2501783, 0.0589065552, -1, 5.9646261e-018, -2.10845386e-008, -2.10845386e-008, 2.11953721e-009, 1, 5.06540956e-017, 1, -2.11953721e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.5, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -0.11782074, 10.9570942, 1, -1.94944302e-018, 6.81270151e-009, 1.63893034e-017, 1, -2.11954898e-009, -6.81270151e-009, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -0.117828369, 10.9570932, -1, 9.97980505e-018, -3.53563578e-008, -8.49193411e-017, -1, 2.11954898e-009, -3.53563578e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, 0.117824554, -10.1323681, -1, 1.94944302e-018, -6.81270151e-009, 1.63893034e-017, 1, -2.11954898e-009, 6.81270151e-009, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.71661377e-005, -13.3488045, 0.117819667, -1, -5.96046519e-008, 1.3320961e-007, -1.3320961e-007, 8.72877663e-008, -1, 5.96046412e-008, -1, -8.72877735e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.71661377e-005, -0.235645652, 13.2427616, 1, 5.96046519e-008, -1.3320961e-007, -5.96046519e-008, 1, -2.11954898e-009, 1.3320961e-007, 2.11955697e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -0.235641718, -13.124959, -1, 5.96462445e-018, -2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, 2.10845315e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.71661377e-005, 0.117832184, -13.242775, 1, 5.96046519e-008, -1.3320961e-007, 5.96046519e-008, -1, 2.11954898e-009, -1.3320961e-007, -2.11955697e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, 0.11782074, 13.124959, -1, 5.96462445e-018, -2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, 0.117828369, 13.124959, 1, -5.96046519e-008, 2.1084535e-008, 5.96046519e-008, 1, -2.11954543e-009, -2.1084535e-008, 2.11954676e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.71661377e-005, -0.117829442, 13.36059, -1, -5.96046519e-008, 1.3320961e-007, 5.96046412e-008, -1, -8.72878303e-008, 1.3320961e-007, -8.72878232e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.33514404e-005, 4.88758087e-006, -13.3723717, -1, 3.27825546e-007, 4.00545844e-007, 3.27825575e-007, 1, 8.72878374e-008, -4.00545815e-007, 8.72879653e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.33514404e-005, 13.3723755, 1.07288361e-006, -1, 3.27825546e-007, 4.00545844e-007, 4.00545815e-007, -8.72877663e-008, 1, 3.27825575e-007, 1, 8.72876385e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, 0.117824554, -8.01163101, -1, 1.94944302e-018, -6.81270151e-009, 1.63893034e-017, 1, -2.11954898e-009, 6.81270151e-009, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.942553759))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, 0.117824554, -8.01163292, 1, -4.84687142e-018, 1.71115211e-008, -4.11155814e-017, -1, 2.11954898e-009, 1.71115211e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.71661377e-005, -0.235642552, 13.2427635, -1, -5.96046519e-008, 1.3320961e-007, 5.96046412e-008, -1, -8.72878303e-008, 1.3320961e-007, -8.72878232e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, 13.0189199, 0.117828369, -1, 5.96462445e-018, -2.10845315e-008, -2.10845315e-008, 2.11953899e-009, 1, 5.06541121e-017, 1, -2.11953899e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -0.235637665, -13.124959, 1, -5.96046519e-008, 2.1084535e-008, -5.96046519e-008, -1, 2.11954543e-009, 2.1084535e-008, -2.11954676e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -0.11782074, -13.0071325, -1, 5.96462445e-018, -2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, 2.10845315e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.71661377e-005, 0.117814183, -13.2427731, -1, -5.96046519e-008, 1.3320961e-007, -5.96046412e-008, 1, 8.72878303e-008, -1.3320961e-007, 8.72878232e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.47127676, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.71661377e-005, 2.21567225, -5.99290466, -1, -5.96046519e-008, 4.70381849e-007, 6.41713527e-008, 0.965925157, 0.258821607, -4.69780616e-007, 0.258821636, -0.965925217))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.47127676, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, 2.21566916, -5.99291849, 1, 1.13911638e-017, -4.06060394e-008, 1.05096039e-008, -0.965925932, 0.258818716, -3.92224351e-008, -0.258818746, -0.965925992))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.471276999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -7.01795816, 2.44157147, -1, 5.96046519e-008, 1.61682223e-008, -3.10443156e-008, -0.258822441, -0.965924978, -5.338892e-008, -0.965924919, 0.258822411))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.52587891e-005, -0.11782074, 8.60072708, 1, -2.68220901e-007, -3.94595418e-007, 2.68220901e-007, 1, -2.11953632e-009, 3.94595418e-007, 2.11943041e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 1.17819214))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, 0.235634089, -6.7156353, 1, -4.84687142e-018, 1.71115211e-008, -4.11155814e-017, -1, 2.11954898e-009, 1.71115211e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.47127676, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-005, -7.24581957, 0.471252203, 1, 1.49011612e-007, -3.50100997e-008, -3.50097054e-008, -2.65452309e-006, -1, -1.49011711e-007, 1, -2.65452309e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.47127676, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -7.24579668, 0.471290231, -1, -4.64906606e-018, 1.66415006e-008, -1.66415006e-008, -3.04195237e-006, -1, 5.06273016e-014, -1, 3.04195237e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 1.17819214))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, 0.235637665, -6.71563721, -1, 6.25757625e-018, -2.21258283e-008, 5.31543582e-017, 1, -2.11954898e-009, 2.21258283e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.545858502, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.47127676, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(2.47955322e-005, -2.21564531, 6.69983864, 1, -1.4603138e-006, 3.62147802e-007, 1.50428559e-006, 0.965926766, -0.258815557, 2.814369e-008, 0.258815557, 0.965926766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.47127676, 0.706915379))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-005, -2.21567488, 6.69983006, -1, 8.64267349e-007, 6.3673042e-008, -8.512975e-007, -0.965925157, -0.258821487, -1.62187604e-007, -0.258821517, 0.965925217))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.52587891e-005, -0.11782527, 8.6007309, -1, 2.68220901e-007, 3.84296584e-007, -2.6822093e-007, -1, -8.7287809e-008, 3.84296555e-007, -8.72879156e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -2.46171904, -6.44813824, 1, -5.96046519e-008, -1.56151387e-007, 2.3676936e-008, -0.874312937, 0.485362679, -1.65455063e-007, -0.485362709, -0.874312997))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.435595185, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.94255352, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -0.754919529, -6.5783577, 1, 5.96046519e-008, 8.44457091e-008, -1.58495475e-008, -0.718900204, 0.695113361, 1.02140021e-007, -0.695113361, -0.718900144))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436141044, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -5.47849655, -4.83053112, 1, -5.96462445e-018, 2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, 2.10845315e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 1.1781919, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, 0.794997692, -6.17932892, 1, -5.96462445e-018, 2.10845315e-008, -1.80798381e-008, -0.514495671, 0.857492924, 1.08479004e-008, -0.857492983, -0.51449573))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -4.65464973, -6.76117277, 1, 4.62503547e-017, -1.64512002e-007, -2.76709966e-009, -0.999858618, -0.0168200471, -1.64488739e-007, 0.0168200471, -0.999858618))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.435595185, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.94255352, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-006, -2.79210186, -7.44828796, 1, 5.96046519e-008, 1.27823441e-007, 2.68232707e-008, -0.970142603, 0.242535606, 1.38463207e-007, -0.242535591, -0.970142543))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436141044, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 1.1781919, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -0.947648764, -7.54688501, 1, -9.33695006e-018, 3.30713483e-008, -1.60516027e-008, -0.874312937, 0.485362828, 2.89147053e-008, -0.485362798, -0.874312878))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -7.54776335, -4.03987265, 1, -9.33695006e-018, 3.30713483e-008, 1.65356742e-008, -0.866025448, -0.5, 2.86406294e-008, 0.5, -0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -0.644618988, -4.67205238, 1, -2.68220901e-007, -9.28621517e-008, -5.83698743e-008, -0.51449573, 0.857492983, -2.77774717e-007, -0.857492983, -0.51449573))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.435595185, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.94255352, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 0.540613174, -4.39249039, 1, 5.96046519e-008, 3.15287636e-008, -1.39198644e-008, -0.275029242, 0.961435914, 6.59773818e-008, -0.961435854, -0.275029242))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436141044, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 1.1781919, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 1.4806242, -3.73265815, 1, -5.96046519e-008, 1.65360845e-008, -1.75362942e-008, -0.0168199558, 0.999858618, -5.93180864e-008, -0.999858618, -0.0168199558))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -3.02773857, -4.15963984, 1, -5.96046519e-008, 1.65360845e-008, -5.9887185e-008, -0.866025448, 0.50000006, -1.54816604e-008, -0.50000006, -0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -4.61986828, -6.7735424, -1, 5.81796227e-017, -2.06681079e-007, 3.4763874e-009, 0.999858618, -0.0168200564, 2.06651848e-007, -0.0168200564, -0.999858558))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.435595185, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.94255352, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(9.53674316e-006, -2.755301, -7.45122194, -1, -5.96046519e-008, 8.56543636e-008, -3.70507784e-008, 0.970142543, 0.242535576, -9.75531833e-008, 0.242535576, -0.970142543))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436141044, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 1.1781919, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -0.911337137, -7.54020405, -1, 2.59229801e-018, -9.09770925e-009, -4.41568915e-009, 0.874312937, 0.485362768, 7.95424437e-009, 0.485362709, -0.874312878))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, -7.52333641, -4.06755209, -1, 2.59229801e-018, -9.09770925e-009, 4.54885507e-009, 0.866025448, -0.50000006, 7.8788478e-009, -0.50000006, -0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -2.42543793, -6.44142866, -1, 5.96046519e-008, -1.98320492e-007, -4.41442545e-008, 0.874312937, 0.485362709, 2.02324031e-007, 0.485362679, -0.874312878))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.435595185, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.94255352, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -0.7215662, -6.56250381, -1, -5.96046519e-008, 4.2276632e-008, -1.34627616e-008, 0.718900383, 0.695113182, -7.18246582e-008, 0.695113182, -0.718900383))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436141044, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 1.1781919, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 0.823094845, -6.15539932, -1, 5.96462445e-018, -2.10845315e-008, -1.80798381e-008, 0.51449573, 0.857492983, 1.08479012e-008, 0.857492983, -0.51449573))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, -5.44353104, -4.8422966, -1, 5.96462445e-018, -2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, 2.10845315e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(3.81469727e-006, -0.616511345, -4.64811897, -1, 2.68220901e-007, -1.35031215e-007, 2.22102337e-008, 0.51449585, 0.857492864, 2.99470514e-007, 0.857492864, -0.51449585))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.435595185, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.94255352, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, 0.561533928, -4.36208248, -1, -5.96046519e-008, -1.06402904e-008, -2.6622974e-008, 0.275029153, 0.961435914, -5.43796617e-008, 0.961435914, -0.275029153))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436141044, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 1.1781919, 0.47127682))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 1.49296141, -3.69788003, -1, 5.96046519e-008, -2.56329802e-008, -2.4626809e-008, 0.0168199651, 0.999858618, 6.00273751e-008, 0.999858618, -0.0168199651))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Electric blue","Part",Vector3.new(0.431683987, 0.70691514, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, -2.99156237, -4.15233135, -1, 5.96046519e-008, -2.56329802e-008, 3.88026571e-008, 0.866025448, 0.5, 5.20011412e-008, 0.5, -0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.436686903, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.1781919, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -4.77160645, -4.47705936, 1, -5.96462445e-018, 2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, 2.10845315e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -2.16785407, 4.83054352, -1, 5.96462445e-018, -2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.540400028, 0.545858562, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127682, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 1.82617533, 4.71272469, 1, -5.96462445e-018, 2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.94255358, 0.471276879))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, 1.59053767, 4.35926437, 1, -5.96462445e-018, 2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.1781919, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -6.84085512, -3.68640089, 1, -9.33695006e-018, 3.30713483e-008, 1.65356742e-008, -0.866025448, -0.5, 2.86406294e-008, 0.5, -0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.94255358, 0.471276879))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 3.6597867, 3.5685668, 1, -9.33695006e-018, 3.30713483e-008, -1.65356742e-008, 0.866025448, 0.5, -2.86406294e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-006, -4.23710251, 4.03983641, -1, 9.33695006e-018, -3.30713483e-008, 1.65356742e-008, -0.866025448, -0.5, -2.86406294e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.540400028, 0.545858562, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127682, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 3.89543247, 3.92199945, 1, -9.33695006e-018, 3.30713483e-008, -1.65356742e-008, 0.866025448, 0.5, -2.86406294e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.1781919, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -2.32085609, -3.80615664, 1, -5.96046519e-008, 1.65360845e-008, -5.9887185e-008, -0.866025448, 0.50000006, -1.54816604e-008, -0.50000006, -0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.94255358, 0.471276879))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -0.860202789, 3.68838453, 1, -5.96046519e-008, 1.65360845e-008, 5.9887185e-008, 0.866025448, -0.50000006, 1.54816604e-008, 0.50000006, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-006, 0.28290081, 4.15967131, -1, 5.96046519e-008, -1.65360845e-008, -5.9887185e-008, -0.866025448, 0.50000006, 1.54816604e-008, 0.50000006, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.540400028, 0.545858562, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127682, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -0.624579906, 4.04186392, 1, -5.96046519e-008, 1.65360845e-008, 5.9887185e-008, 0.866025448, -0.50000006, 1.54816604e-008, 0.50000006, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.1781919, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, -6.81646252, -3.71407461, -1, 2.59229801e-018, -9.09770925e-009, 4.54885507e-009, 0.866025448, -0.50000006, 7.8788478e-009, -0.50000006, -0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.94255358, 0.471276879))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, 3.63541222, 3.5962615, -1, 2.59229801e-018, -9.09770925e-009, -4.54885507e-009, -0.866025448, 0.50000006, -7.8788478e-009, 0.50000006, 0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-5.7220459e-006, -4.21271515, 4.06753111, 1, -2.59229801e-018, 9.09770925e-009, 4.54885507e-009, 0.866025448, -0.50000006, -7.8788478e-009, 0.50000006, 0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.540400028, 0.545858562, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127682, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, 3.87103081, 3.94970846, -1, 2.59229801e-018, -9.09770925e-009, -4.54885507e-009, -0.866025448, 0.50000006, -7.8788478e-009, 0.50000006, 0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.1781919, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, -4.73662186, -4.48879814, -1, 5.96462445e-018, -2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, 2.10845315e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.94255358, 0.471276879))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, 1.55557752, 4.37102509, -1, 5.96462445e-018, -2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-7.62939453e-006, -2.1328826, 4.84232903, 1, -5.96462445e-018, 2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.540400028, 0.545858562, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127682, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, 1.79121137, 4.72449493, -1, 5.96462445e-018, -2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 1.1781919, 0.7069152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -2.28466034, -3.79887199, -1, 5.96046519e-008, -2.56329802e-008, 3.88026571e-008, 0.866025448, 0.5, 5.20011412e-008, 0.5, -0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.94255358, 0.471276879))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -0.896381855, 3.68110657, -1, 5.96046519e-008, -2.56329802e-008, -3.88026571e-008, -0.866025448, -0.5, -5.20011412e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-7.62939453e-006, 0.319051743, 4.15240955, 1, -5.96046519e-008, 2.56329802e-008, 3.88026571e-008, 0.866025448, 0.5, -5.20011412e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.540400028, 0.545858562, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.431683987, 0.47127682, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, -0.660738468, 4.03456402, -1, 5.96046519e-008, -2.56329802e-008, -3.88026571e-008, -0.866025448, -0.5, -5.20011412e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.545858622, 1, 0.545858681))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 4.47706032, -3.88795829, 1, -5.96462445e-018, 2.10845315e-008, -2.10845315e-008, 2.11953899e-009, 1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -4.59487629, 4.12361526, 1, -5.96462445e-018, 2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, 5.06541121e-017, 1, -2.11953899e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -4.00576591, -4.42994595, 1, -5.96462445e-018, 2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, 2.10845315e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, 4.00578308, 4.66557503, 1, -5.96462445e-018, 2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(1.90734863e-006, -5.06615257, -4.71270514, 1, -5.96462445e-018, 2.10845315e-008, -1.93576611e-015, -1, 9.15268927e-008, 2.10845315e-008, -9.15268927e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 2.00288558, 4.35926437, 1, -5.96462445e-018, 2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -3.8042016, 6.19287872, 1, -9.33695006e-018, 3.30713483e-008, 2.86406294e-008, 0.49999997, -0.866025448, -1.65356742e-008, 0.866025448, 0.49999997))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -6.0750351, -3.63924742, 1, -9.33695006e-018, 3.30713483e-008, 1.65356742e-008, -0.866025448, -0.5, 2.86406294e-008, 0.5, -0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 6.0750699, 3.87487745, 1, -9.33695006e-018, 3.30713483e-008, -1.65356742e-008, 0.866025448, 0.5, -2.86406294e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, 3.6863513, -5.95721436, 1, -9.33695006e-018, 3.30713483e-008, -2.86406294e-008, -0.49999997, 0.866025448, 1.65356742e-008, -0.866025448, -0.49999997))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, -7.13541365, -3.92203617, 1, -9.33695006e-018, 3.30713483e-008, 1.65356742e-008, -0.866025448, -0.5, 2.86406276e-008, 0.49999997, -0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, 4.07215261, 3.56856489, 1, -9.33695006e-018, 3.30713483e-008, -1.65356742e-008, 0.866025448, 0.5, -2.86406294e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -3.92400312, 1.67285705, 1, -5.96046519e-008, 1.65360845e-008, -1.54816515e-008, -0.49999997, -0.866025507, 5.9887185e-008, 0.866025448, -0.49999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -1.55502748, -3.75904417, 1, -5.96046519e-008, 1.65360845e-008, -5.9887185e-008, -0.866025448, 0.50000006, -1.54816604e-008, -0.50000006, -0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(-1.90734863e-006, 1.55503702, 3.99468088, 1, -5.96046519e-008, 1.65360845e-008, 5.9887185e-008, 0.866025448, -0.50000006, 1.54816604e-008, 0.50000006, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, 3.80617571, -1.43718886, 1, -5.96046519e-008, 1.65360845e-008, 1.54816515e-008, 0.49999997, 0.866025507, -5.9887185e-008, -0.866025448, 0.49999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -2.61539006, -4.04182625, 1, -5.96046519e-008, 1.65360845e-008, -5.9887185e-008, -0.866025329, 0.50000006, -1.5481664e-008, -0.500000119, -0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(0, -0.447852612, 3.68841124, 1, -5.96046519e-008, 1.65360845e-008, 5.9887185e-008, 0.866025448, -0.50000006, 1.54816604e-008, 0.50000006, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, -3.83188629, 6.16848278, -1, 2.59229801e-018, -9.09770925e-009, 7.87884868e-009, -0.49999997, -0.866025507, -4.54885374e-009, -0.866025448, 0.49999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -6.05066299, -3.66692972, -1, 2.59229801e-018, -9.09770925e-009, 4.54885507e-009, 0.866025448, -0.50000006, 7.8788478e-009, -0.50000006, -0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 6.05066776, 3.90255499, -1, 2.59229801e-018, -9.09770925e-009, -4.54885507e-009, -0.866025448, 0.50000006, -7.8788478e-009, 0.50000006, 0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 3.71402836, -5.93283463, -1, 2.59229801e-018, -9.09770925e-009, -7.87884868e-009, 0.49999997, 0.866025507, 4.54885374e-009, 0.866025448, -0.49999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -7.1110096, -3.94973993, -1, 2.59229801e-018, -9.09770925e-009, 4.54885507e-009, 0.866025448, -0.50000006, 7.8788478e-009, -0.50000006, -0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 4.04776955, 3.59624338, -1, 2.59229801e-018, -9.09770925e-009, -4.54885507e-009, -0.866025448, 0.50000006, -7.8788478e-009, 0.50000006, 0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, -4.60666656, 4.08863068, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -3.970783, -4.44169998, -1, 5.96462445e-018, -2.10845315e-008, 5.06543239e-017, 1, -2.11954898e-009, 2.10845315e-008, -2.11954898e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 3.97082877, 4.67734241, -1, 5.96462445e-018, -2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 4.48880005, -3.85297799, -1, 5.96462445e-018, -2.10845315e-008, -2.10845315e-008, 2.11953899e-009, 1, 5.06541121e-017, 1, -2.11953899e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -5.03117704, -4.72449589, -1, 5.96462445e-018, -2.10845315e-008, -1.83445758e-015, 1, 8.72877948e-008, 2.10845315e-008, 8.72877948e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 1.96795416, 4.37102509, -1, 5.96462445e-018, -2.10845315e-008, -5.06543239e-017, -1, 2.11954898e-009, -2.10845315e-008, 2.11954898e-009, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -3.9167099, 1.63669538, -1, 5.96046519e-008, -2.56329802e-008, 5.20011412e-008, 0.5, -0.866025448, -3.88026571e-008, -0.866025448, -0.5))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, -1.51884508, -3.75176907, -1, 5.96046519e-008, -2.56329802e-008, 3.88026571e-008, 0.866025448, 0.5, 5.20011412e-008, 0.5, -0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.47127685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, 1.51886177, 3.98740387, -1, 5.96046519e-008, -2.56329802e-008, -3.88026571e-008, -0.866025448, -0.5, -5.20011412e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(7.62939453e-006, 3.7989006, -1.40103054, -1, 5.96046519e-008, -2.56329802e-008, -5.20011412e-008, -0.5, 0.866025448, 3.88026571e-008, 0.866025448, 0.5))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -2.57921457, -4.03452349, -1, 5.96046519e-008, -2.56329802e-008, 3.88026535e-008, 0.866025448, 0.50000006, 5.20011376e-008, 0.5, -0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.431683987, 0.431683987, 0.431683928))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 5.96462445e-018, -2.10845315e-008, 2.10845315e-008, -2.11953899e-009, -1, -5.06541121e-017, -1, 2.11953899e-009),CFrame.new(5.7220459e-006, -0.484000444, 3.68109703, -1, 5.96046519e-008, -2.56329802e-008, -3.88026571e-008, -0.866025448, -0.5, -5.20011412e-008, -0.5, 0.866025448))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.551317215, 0.272929251, 0.272929341))

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10000000,10000000,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(10),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.6) 
so("http://roblox.com/asset/?id=231917871",Hitbox,1,0.8) 
 for i=0,1,0.1 do
                swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(-70), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
        attack=false
con1:disconnect()
end

function attacktwo()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10000000,10000000,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)

        end

for i=0,1,1 do
swait()
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.7) 
so("http://www.roblox.com/asset/?id=234365573",Hitbox,1,0.7)
for i=0,1,0.1 do
swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(110)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,0)*angles(math.rad(-50),math.rad(10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,-6*i),.3)
end
end
con1:disconnect()
attack=false
end

function attackthree()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10000000,10000000,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
        for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(00)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.4) 
so("http://www.roblox.com/asset/?id=234365549",Hitbox,1,0.6)
for i=0,1,.1 do
swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
attack=false
con1:disconnect()
end

function CrimsonMoon()
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10000000,10000000,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(120),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(0),math.rad(-10)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
for i=0,1,0.15 do
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.8)
swait()
for i=0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-40),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-60)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5)*euler(0,-1.5,-6*i),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
end
attack=false
con1:disconnect()
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part("Custom",workspace,"SmoothPlastic",0,0,"Really red","Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
for i=0,1,0.05 do
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end

function Execution() --HEUAHUEHAUEHAUHUEAHUAEHUAHEUAHEUH
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,999999999,999999999,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
Humanoid.WalkSpeed = 0
for i=0,1,0.03 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(60)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-60)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(120)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.1)
end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.5)
 hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,0.8)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        hitconasdf:disconnect()
                end
        end)
for i=0,1,0.03 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-20),math.rad(70)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.2)
end
attack=false
con1:disconnect()
Humanoid.WalkSpeed= 16
pcall(function()
        hitconasdf:disconnect()
        end)
end

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        attackone()
                elseif attacktype==2 then
                        attack=true
                        attacktype=3
                        attacktwo()
               elseif attacktype==3 then
                        attack=true
                        attacktype=1
                        attackthree()
                end
        end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			CrimsonMoon()
		end
		elseif k=='e' then
		if attack==false then
			Execution()
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
end
end