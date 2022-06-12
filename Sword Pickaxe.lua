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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Really black"))
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Handle",Vector3.new(0.399999976, 6.5999999, 0.800000012))
handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994874, 0, 0, 0, 1),CFrame.new(0.0507202148, -2.52714539, 1.07002306, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.200000003, 2.19999981))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000564575195, 7.66964722, 1.47541952, 0.999999821, -3.44649777e-007, -2.91872539e-006, 2.73044566e-006, -6.73997056e-005, 0.999999821, -3.44861661e-007, -0.999999821, -7.3311603e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.200000003, 2.19999981))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000564575195, 7.66740417, -1.51460314, 0.999999821, -3.44649777e-007, -2.91872539e-006, 2.73044566e-006, -6.73997056e-005, 0.999999821, -3.44861661e-007, -0.999999821, -7.3311603e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.200000003, 3))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000556945801, 7.2594986, -2.07578278, 0.999999821, -3.98708266e-008, -2.78470065e-006, 1.80762606e-006, -0.707154274, 0.707054794, -1.86429861e-006, -0.707058966, -0.707158446))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.200000003, 3.79999995))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000564575195, 7.67505646, -0.444343567, 0.999999642, -5.20824486e-008, -2.79772325e-006, 2.0444179e-006, -0.601868689, 0.798591197, -1.58032435e-006, -0.798594832, -0.601873219))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 1, 0.200000048))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000564575195, 0.0484619141, -7.28675842, 0.999999821, -5.98131294e-007, -3.56129613e-006, 1.96194651e-006, -0.707154334, 0.707054913, -2.80819268e-006, -0.707059085, -0.707158506))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 1, 0.200000048))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000564575195, -1.95571899, -7.67503357, -1.00000417, 1.01207308e-006, 2.75585353e-006, 2.3536104e-006, 0.798599243, 0.60187608, -1.44131911e-006, 0.601875842, -0.798596144))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.99999994, 0.200000048))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000564575195, -1.98649597, -7.69823456, 0.999999821, -4.62420445e-007, -3.67828466e-006, 1.73081651e-006, -0.798675954, 0.601756394, -3.06568472e-006, -0.601761043, -0.798679531))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.200000003, 3))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000564575195, 7.2868042, -2.04853058, -0.999999821, 3.65708871e-007, 2.25400572e-006, 1.71940098e-006, 0.707059085, 0.707158446, -1.20197456e-006, 0.707154274, -0.707054913))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 1, 0.200000048))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000564575195, 0.0756988525, -7.25950623, -1.00000417, 1.07557219e-006, 2.81106031e-006, 2.61523587e-006, 0.707061827, 0.707162321, -1.09386144e-006, 0.70716244, -0.707058728))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.200000003, 4.5999999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000564575195, 7.92796326, 0.682914734, 0.999999821, -1.3379514e-007, -2.85678175e-006, 2.24400219e-006, -0.500058174, 0.865988493, -1.45030845e-006, -0.865991473, -0.5000633))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.200000003, 3.79999995))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000564575195, 7.69830322, -0.413574219, -0.999999583, 3.42691209e-007, 2.2613026e-006, 1.86686486e-006, 0.601761103, 0.798679531, -9.57987822e-007, 0.798675895, -0.601756394))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.200000003, 4.5999999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.00057220459, 7.94728088, 0.716293335, -0.999999821, -1.33946315e-007, 2.85676219e-006, 2.24413407e-006, 0.499941558, 0.866061687, -1.45007982e-006, 0.866058707, -0.499936432))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,1,"Pastel yellow","Hitbox",Vector3.new(0.399999976, 2.95000029, 8.42000008))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-1.52587891e-005, -7.13064575, -0.259962082, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 0.800000191))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000549316406, 7.32797241, 3.78292847, 0.999999821, -5.95495209e-008, -2.55292593e-006, 2.01799162e-006, -0.500058293, 0.865988672, -1.23406596e-006, -0.865991652, -0.50006336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(4.20000029, 0.200000003, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-1.2829361, 0.000549316406, 7.62794495, 1.23406596e-006, 0.865991652, 0.50006336, -0.999999821, 5.95495209e-008, 2.55292593e-006, 2.01799162e-006, -0.500058293, 0.865988672))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 0.800000191))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000549316406, 7.32798767, 1.21704102, -0.999999821, 5.95495209e-008, 2.55292593e-006, 2.01799162e-006, -0.500058293, 0.865988672, 1.23406596e-006, 0.865991652, 0.50006336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 0.800000191))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000549316406, -7.94722748, 3.81633759, 0.999999821, 5.96597474e-008, -2.55291707e-006, -2.01812372e-006, -0.499941617, -0.866061866, -1.23383734e-006, 0.866058886, -0.499936491))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 0.800000191))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000549316406, 7.34732819, 3.81626892, -0.999999821, -5.96597474e-008, 2.55291707e-006, 2.01812372e-006, 0.499941617, 0.866061866, -1.23383734e-006, 0.866058886, -0.499936491))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 0.800000191))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000549316406, -7.92785645, 3.78297424, -0.999999821, 5.95495209e-008, 2.55292593e-006, -2.01799162e-006, 0.500058293, -0.865988672, -1.23406596e-006, -0.865991652, -0.50006336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 0.800000191))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000549316406, -7.94728851, 1.18369293, -0.999999821, -5.96597474e-008, 2.55291707e-006, -2.01812372e-006, -0.499941617, -0.866061866, 1.23383734e-006, -0.866058886, 0.499936491))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(4.20000029, 0.200000003, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.31630707, 0.000549316406, 7.64728546, -1.23383734e-006, 0.866058886, -0.499936491, -0.999999821, -5.96597474e-008, 2.55291707e-006, 2.01812372e-006, 0.499941617, 0.866061866))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 0.800000191))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000549316406, 7.34729767, 1.18365479, 0.999999821, 5.96597474e-008, -2.55291707e-006, 2.01812372e-006, 0.499941617, 0.866061866, 1.23383734e-006, -0.866058886, 0.499936491))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 0.800000191))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000549316406, -7.92796326, 1.2170639, 0.999999821, -5.95495209e-008, -2.55292593e-006, -2.01799162e-006, 0.500058293, -0.865988672, 1.23406596e-006, 0.865991652, 0.50006336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.800000012, 1.20000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000549316406, 7.22796631, 1.41705322, -0.999999821, 5.95495209e-008, 2.55292593e-006, 2.01799162e-006, -0.500058293, 0.865988672, 1.23406596e-006, 0.865991652, 0.50006336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.600000024, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000602722168, 8.04922485, 2.2826767, -0.999999821, -1.03368154e-006, 1.92164384e-006, 1.9565648e-006, -0.707154155, 0.707055032, 4.9492246e-007, 0.707059205, 0.707158327))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(4.20000029, 0.200000003, 1.60000002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-1.2829361, 0.000564575195, 7.62794495, 1.23406596e-006, 0.865991652, 0.50006336, -0.999999821, 5.95495209e-008, 2.55292593e-006, 2.01799162e-006, -0.500058293, 0.865988672))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.980000019, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.600000024, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000541687012, -7.86872101, 4.7230072, 0.999999821, 6.18751557e-008, -2.79253641e-006, -7.33608772e-007, 0.965943217, -0.258748204, 2.49958407e-006, 0.258753926, 0.965944707))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.800000012, 1.20000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000549316406, -8.02798462, 1.41706085, 0.999999821, -5.95495209e-008, -2.55292593e-006, -2.01799162e-006, 0.500058293, -0.865988672, 1.23406596e-006, 0.865991652, 0.50006336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.800000012, 1.20000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000549316406, -8.04729462, 1.38368225, -0.999999821, -5.96597474e-008, 2.55291707e-006, -2.01812372e-006, -0.499941617, -0.866061866, 1.23383734e-006, -0.866058886, 0.499936491))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.600000024, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000549316406, -7.90600586, 4.71310425, -0.999999821, 6.17326492e-008, 2.79254573e-006, -7.33863715e-007, -0.965908289, -0.258889705, 2.49951563e-006, -0.258883983, 0.965906799))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.600000024, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000579833984, -8.19786835, 3.0612793, -0.999999821, 1.67408443e-009, 3.03368324e-006, -1.42435294e-006, -0.865991592, -0.5000633, 2.46326499e-006, -0.500058234, 0.865988612))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.600000024, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000610351563, 8.07653809, 2.25543213, 0.999999821, -1.03365596e-006, -1.9217955e-006, 1.95675148e-006, 0.707058907, 0.707158625, 4.94735673e-007, -0.707154453, 0.707054734))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.800000012, 1.20000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000549316406, 7.24727631, 1.38367462, 0.999999821, 5.96597474e-008, -2.55291707e-006, 2.01812372e-006, 0.499941617, 0.866061866, 1.23383734e-006, -0.866058886, 0.499936491))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.600000024, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.00057220459, -8.16441345, 3.08054352, 0.999999821, 1.84907067e-009, -3.03368279e-006, -1.42412443e-006, 0.866058826, -0.499936432, 2.46339664e-006, 0.499941558, 0.866061807))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.800000012, 1.20000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000549316406, 7.22822571, 3.98279572, 0.999999821, -5.95495209e-008, -2.55292593e-006, 2.01799162e-006, -0.500058293, 0.865988672, -1.23406596e-006, -0.865991652, -0.50006336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.800000012, 1.20000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000549316406, -8.02787781, 3.98300171, -0.999999821, 5.95495209e-008, 2.55292593e-006, -2.01799162e-006, 0.500058293, -0.865988672, -1.23406596e-006, -0.865991652, -0.50006336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.800000012, 1.20000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0.000549316406, 7.24758148, 4.0161438, -0.999999821, -5.96597474e-008, 2.55291707e-006, 2.01812372e-006, 0.499941617, 0.866061866, -1.23383734e-006, 0.866058886, -0.499936491))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.800000012, 1.20000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-0.000549316406, -8.04721832, 4.01631165, 0.999999821, 5.96597474e-008, -2.55291707e-006, -2.01812372e-006, -0.499941617, -0.866061866, -1.23383734e-006, 0.866058886, -0.499936491))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(4.20000029, 0.200000003, 1.60000002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.31628418, 0.000564575195, 7.6472702, -1.23383734e-006, 0.866058886, -0.499936491, -0.999999821, -5.96597474e-008, 2.55291707e-006, 2.01812372e-006, 0.499941617, 0.866061866))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.980000019, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.400000006, 0.600000024, 0.600000083))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, -2.73671722, 2.73668671, -0.999999821, 9.49127994e-008, 2.40484042e-006, -1.63459686e-006, -0.707059026, -0.707158506, 1.50011931e-006, -0.707154334, 0.707054853))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.800000012, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.400000006, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, -4.79164124, 5.3915863, -0.999999821, 9.49127994e-008, 2.40484042e-006, -1.63459686e-006, -0.707059026, -0.707158506, 1.50011931e-006, -0.707154334, 0.707054853))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.400000006, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, 5.99164581, -5.39162445, -0.999999821, -9.50369241e-008, 2.90747721e-006, 1.85573333e-006, 0.707058907, 0.707158327, -1.98983753e-006, 0.707154155, -0.707054734))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.400000006, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, 4.79161072, 5.39163208, -0.999999821, -2.51380015e-007, 2.56118346e-006, 1.85554666e-006, -0.707154155, 0.707054734, 1.50030701e-006, 0.707058907, 0.707158327))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.400000006, 0.200000003, 4))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-1.52587891e-005, -0.300024509, -5.0990448, 0.999999642, 8.86621194e-008, -2.71263866e-006, 8.84640485e-008, -0.999999642, -7.33413981e-005, -2.52439077e-006, 6.74295079e-005, -0.999999642))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.400000006, 0.200000003, 4))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-1.52587891e-005, 0.299972534, -5.0990448, 0.999999642, 8.86621194e-008, -2.71263866e-006, 8.84640485e-008, -0.999999642, -7.33413981e-005, -2.52439077e-006, 6.74295079e-005, -0.999999642))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.400000006, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, -5.99160767, -5.3916626, -0.999999821, 2.51255869e-007, 2.75113416e-006, -1.63441007e-006, 0.707154334, -0.707054853, -1.99002329e-006, -0.707059026, -0.707158506))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.400000006, 0.200000003, 0.600000083))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, 1.99224091, 2.19223022, -0.999999821, -2.51380015e-007, 2.56118346e-006, 1.85554666e-006, -0.707154155, 0.707054734, 1.50030701e-006, 0.707058907, 0.707158327))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 0.769999981))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.400000006, 0.200000003, 0.600000083))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, -1.99222565, 2.1922226, -0.999999821, 9.49127994e-008, 2.40484042e-006, -1.63459686e-006, -0.707059026, -0.707158506, 1.50011931e-006, -0.707154334, 0.707054853))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.300000012, 0.769999981))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.399999976, 0.400000006, 1.20000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-5.9855423, -1.52587891e-005, -5.18557739, -1.74497791e-006, 0.707154274, -0.707054913, 0.999999821, 6.20720975e-011, -2.65615972e-006, -1.74516435e-006, -0.707059085, -0.707158446))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.399999976, 0.400000006, 1.20000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-4.78553772, -1.52587891e-005, -5.58559418, -1.74497791e-006, 0.707154274, -0.707054913, 0.999999821, 6.20720975e-011, -2.65615972e-006, -1.74516435e-006, -0.707059085, -0.707158446))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.399999976, 0.400000006, 1.20000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-5.9855957, 1.52587891e-005, -5.58554077, -1.74516435e-006, -0.707059085, -0.707158446, -0.999999821, -6.20720975e-011, 2.65615972e-006, -1.74497791e-006, 0.707154274, -0.707054913))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.399999976, 0.400000006, 1.20000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-4.7855835, 1.52587891e-005, -5.18553162, -1.74516435e-006, -0.707059085, -0.707158446, -0.999999821, -6.20720975e-011, 2.65615972e-006, -1.74497791e-006, 0.707154274, -0.707054913))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(7.62939453e-006, -7.84564209, 1.18071747, -0.999999821, 9.66749326e-007, 2.13135627e-006, -1.94302879e-006, 6.75486881e-005, -0.999999821, -9.6690826e-007, -0.999999821, -7.3460651e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-3.05175781e-005, -7.84564209, 1.21925235, 0.999999821, -9.66678385e-007, -3.18110392e-006, -2.99277713e-006, 6.71314556e-005, -0.999999821, 9.66907237e-007, 0.999999821, 7.30434185e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, 7.44563293, 1.21924734, -0.999999821, -9.66873472e-007, 3.18096318e-006, 2.99277804e-006, -6.75486881e-005, 0.999999821, -9.6664337e-007, 0.999999821, 7.3460651e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(7.62939453e-006, -7.84564209, -0.419251919, -0.999999821, 9.66750008e-007, 2.13135809e-006, -1.94302993e-006, 6.75784904e-005, -0.999999821, -9.66909511e-007, -0.999999821, -7.34904534e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(2.28881836e-005, -0.180722237, -8.0456543, -0.999999821, 5.24748202e-007, 3.62297351e-006, 5.25008204e-007, 0.999999821, 7.34904534e-005, -3.43467877e-006, 6.75784904e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-7.62939453e-006, 7.44563293, -0.419239521, 0.999999821, 9.66802304e-007, -2.13121507e-006, 1.94302902e-006, -6.71016533e-005, 0.999999821, 9.66643483e-007, -0.999999821, -7.30136162e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(2.28881836e-005, 7.44564819, -0.380721092, -0.999999821, -9.66873017e-007, 3.18096227e-006, 2.99277667e-006, -6.75784904e-005, 0.999999821, -9.66642006e-007, 0.999999821, 7.34904534e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-7.62939453e-006, 7.44563293, 1.18072891, 0.999999821, 9.66802418e-007, -2.1312153e-006, 1.9430297e-006, -6.71314556e-005, 0.999999821, 9.66644393e-007, -0.999999821, -7.30434185e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(7.62939453e-006, -0.21928072, 8.84564209, -0.999999821, -5.24871439e-007, 1.68934548e-006, 5.24742063e-007, -0.999999821, -7.34904534e-005, 1.5011276e-006, -6.75784904e-005, 0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0, -0.219273567, -8.0456543, 0.999999821, -5.2487735e-007, -1.68942256e-006, -5.25005987e-007, -0.999999821, -7.30136162e-005, -1.50112783e-006, 6.71016533e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-2.28881836e-005, -0.180725098, 8.84564209, 0.999999821, 5.2500036e-007, -3.62289711e-006, -5.24742177e-007, 0.999999821, 7.29838139e-005, 3.43467877e-006, -6.70718509e-005, 0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-7.62939453e-006, -0.219299316, -6.44563293, 0.999999821, -5.248761e-007, -1.68942245e-006, -5.25004509e-007, -0.999999821, -7.28646046e-005, -1.50112771e-006, 6.69526416e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(2.28881836e-005, -0.180696487, -6.44563293, -0.999999821, 5.24747293e-007, 3.62297396e-006, 5.25007465e-007, 0.999999821, 7.35649592e-005, -3.43467877e-006, 6.76529962e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-2.28881836e-005, -7.84564209, -0.380716801, 0.999999821, -9.66679295e-007, -3.18110324e-006, -2.99277576e-006, 6.71016533e-005, -0.999999821, 9.66908829e-007, 0.999999821, 7.30136162e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0, -0.219314575, 7.24563599, -0.999999821, -5.24872348e-007, 1.68934582e-006, 5.24742916e-007, -0.999999821, -7.35649592e-005, 1.50112783e-006, -6.76529962e-005, 0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-1.52587891e-005, -0.180728436, 7.24563599, 0.999999821, 5.25001496e-007, -3.62289666e-006, -5.24743371e-007, 0.999999821, 7.29540116e-005, 3.43467809e-006, -6.70420486e-005, 0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0, -0.200022697, 3.69998169, -0.999999821, -6.20720975e-011, 2.65615972e-006, 1.31964842e-010, 0.999999821, 7.32520348e-005, -2.46790319e-006, 6.73400718e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0, -0.199978352, 3.69998169, 0.999999821, 6.20720975e-011, -2.65615972e-006, -1.31964842e-010, -0.999999821, -7.32520348e-005, -2.46790319e-006, 6.73400718e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.600000024, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, 2.5995636, 0.20001173, -0.999999821, -6.20720975e-011, 2.65615972e-006, 2.46790319e-006, -6.73400718e-005, 0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.600000024, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-1.52587891e-005, 2.5995636, 0.199989319, 0.999999821, 6.20720975e-011, -2.65615972e-006, 2.46790319e-006, -6.73400718e-005, 0.999999821, -1.31964842e-010, -0.999999821, -7.32520348e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.400000036, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, -4.89909363, 0.500017643, -0.999999821, 7.47743161e-006, 2.65699214e-006, -2.46814989e-006, 5.76073035e-005, -0.999999821, -7.47759987e-006, -0.999999821, -6.35192409e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.400000036, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-2.28881836e-005, -4.89909363, 0.50004673, 0.999999821, -7.4775262e-006, -2.65642279e-006, -2.4674348e-006, 7.70728439e-005, -0.999999821, 7.47774311e-006, 0.999999821, 8.2984785e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.200000033, 0.800000072))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-5.34057617e-005, 0.100078583, 5.09907532, 0.999999821, 3.96872668e-009, -1.0130585e-005, -8.97625707e-009, 0.999999821, 8.29848068e-005, 9.94809852e-006, -7.70728439e-005, 0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.200000033, 1.20000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(3.81469727e-005, 0.699976921, -4.09957886, -0.999999821, 2.83815882e-009, 1.01304904e-005, -2.36349496e-009, 0.999999821, 6.35192628e-005, -9.94800394e-006, 5.76073035e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.200000033, 0.800000072))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(2.28881836e-005, 0.499930382, -4.29948425, 0.999999821, -6.6497019e-010, 4.82133237e-006, -2.50907961e-010, -0.999999821, -8.29848068e-005, 5.00964597e-006, 7.70728439e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.200000033, 0.800000072))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(3.81469727e-005, 0.500016212, -4.29951477, -0.999999821, 2.83815882e-009, 1.01304904e-005, -2.36349496e-009, 0.999999821, 6.35192628e-005, -9.94800394e-006, 5.76073035e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(1.80000007, 0.400000006, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-3.79954529, 1.52587891e-005, 1.90734863e-005, -2.46790319e-006, 6.73400718e-005, -0.999999821, -0.999999821, -6.20720975e-011, 2.65615972e-006, 1.31964842e-010, 0.999999821, 7.32520348e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.200000033, 0.800000072))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-2.28881836e-005, 0.100017548, 5.09906006, -0.999999821, -2.81154766e-009, -4.8182651e-006, 8.87377194e-009, -0.999999821, -6.35192628e-005, -5.00075112e-006, -5.76072998e-005, 0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.200000033, 1.20000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(2.28881836e-005, 0.69994545, -4.09954834, 0.999999821, -6.6497019e-010, 4.82133237e-006, -2.50907961e-010, -0.999999821, -8.29848068e-005, 5.00964597e-006, 7.70728439e-005, -0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0, -0.199980259, -3.09999084, -0.999999821, -6.20720975e-011, 2.65615972e-006, -1.31964842e-010, -0.999999821, -7.32520348e-005, 2.46790319e-006, -6.73400718e-005, 0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Part",Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(0, -0.20002079, -3.09999084, 0.999999821, 6.20720975e-011, -2.65615972e-006, 1.31964842e-010, 0.999999821, 7.32520348e-005, 2.46790319e-006, -6.73400718e-005, 0.999999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.800000072, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-5.34057617e-005, 1.33576965, -2.48857117, 0.999999821, 5.16932005e-007, -1.74312263e-005, 4.96099256e-006, -0.965943098, 0.258748472, -1.65219808e-005, -0.258754194, -0.965944588))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.800000072, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-3.05175781e-005, 1.39878464, -2.47839355, -0.999999821, -4.90805292e-007, -1.21189832e-005, -3.66019731e-006, 0.96590817, 0.258890003, 1.17606105e-005, 0.258884311, -0.96590668))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 1.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-3.05175781e-005, 3.91101837, -1.28395081, -0.999999821, -6.39833274e-007, -1.18780463e-005, -8.98512008e-006, 0.707058847, 0.707158685, 8.07914512e-006, 0.707154512, -0.707054675))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-4.57763672e-005, 4.64130402, 0.180419922, -0.999999821, -4.90812965e-007, -1.20061359e-005, -1.08064278e-005, 0.499941379, 0.866061985, 5.67143161e-006, 0.866059065, -0.499936253))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.970000029, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 2.00000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-3.05175781e-005, 2.76877594, -1.9785614, -0.999999821, -6.99441955e-007, -1.18177722e-005, -6.60940168e-006, 0.865991533, 0.500063479, 1.00473708e-005, 0.500058472, -0.865988493))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 1.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-6.86645508e-005, 3.86151886, -1.3242569, 0.999999821, 5.95436006e-007, -1.7190272e-005, 1.24424796e-005, -0.707154155, 0.707055032, -1.1602061e-005, -0.707059205, -0.707158327))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 2.00000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-6.86645508e-005, 2.71051025, -2.0047226, 0.999999821, 6.41683698e-007, -1.71299907e-005, 9.02559623e-006, -0.866058826, 0.49993673, -1.43517545e-005, -0.499941796, -0.866061807))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.400000036, 2.20000029))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-6.86645508e-005, 4.60388184, 0.128692627, 0.999999821, 4.28497856e-007, -1.73183871e-005, 1.50488149e-005, -0.500058055, 0.865988791, -8.19501111e-006, -0.865991771, -0.500063181))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.970000029, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(7.62939453e-006, 3.71121216, 2.82486343, -0.999999821, -1.97225904e-006, 2.36766391e-006, 2.61569949e-006, -0.258884281, 0.965906739, -1.34077732e-006, 0.965908229, 0.258890003))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.400000006, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(7.62939453e-006, 2.19729614, 5.34124756, -0.999999821, -2.2279487e-006, 2.0706359e-006, 2.90644743e-006, -0.707154512, 0.707054675, -2.44128955e-007, 0.707058847, 0.707158685))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.400000006, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-7.62939453e-006, 2.22851563, 5.3099823, 0.999999821, 1.58679245e-006, -2.07068274e-006, 2.09235395e-007, 0.707059264, 0.707158267, 2.45308138e-006, -0.707154095, 0.707055092))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(7.62939453e-006, 3.8639679, 0.922094584, -0.999999821, -1.58131888e-006, 2.41916155e-006, 2.2310212e-006, -6.75784904e-005, 0.999999821, -1.58114017e-006, 0.999999821, 7.34904606e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.400000006, 1.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(1.52587891e-005, 3.15304565, 4.29320526, -0.999999821, -1.68681856e-006, 2.48592164e-006, 2.83326176e-006, -0.500058532, 0.865988553, -3.1177467e-007, 0.865991533, 0.500063539))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-1.52587891e-005, 3.86395264, 0.877912998, 0.999999821, 2.23347001e-006, -2.4191138e-006, 2.23102029e-006, -6.71016533e-005, 0.999999821, 2.23329266e-006, -0.999999821, -7.30136235e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.400000006, 1.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-2.28881836e-005, 3.17512512, 4.25492859, 0.999999821, 2.12797931e-006, -2.48588958e-006, 9.26044322e-007, 0.499941796, 0.866061747, 2.9916207e-006, -0.866058767, 0.49993673))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cool yellow","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.999999821, 6.20720975e-011, -2.65615972e-006, -2.46790319e-006, 6.73400718e-005, -0.999999821, 1.31964842e-010, 0.999999821, 7.32520348e-005),CFrame.new(-1.52587891e-005, 3.72265625, 2.78215027, 0.999999821, 1.84252258e-006, -2.36767346e-006, 1.62845026e-006, 0.258754224, 0.965944648, 2.34368144e-006, -0.965943158, 0.258748502))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 1, 1))

TrailDeb = false

function attackone()
	attack=true
	for i=0,1,0.07 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(50)),.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(160), math.rad(0), math.rad(10)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(160), math.rad(0), math.rad(50)), 0.2)
        handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(60),math.rad(-10),math.rad(0)),.2)
	end
	so("http://www.roblox.com/asset/?id=203691447",Hitbox,1,1)
	con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
	 if TrailDeb == false then
							TrailDeb = true
						end
						

coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Navy blue")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)() 
	for i=0,1,0.06 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(50)),.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(5),math.rad(-50)),.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(.2, 0.2, -.5) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.2)
        handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(-10),math.rad(0)),.2)
	end
	attack=false
	con1:disconnect()
	if TrailDeb == true then
						TrailDeb = false
						end
end

function attacktwo()
        attack=true
        for i=0,1,0.06 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(0), math.rad(60), math.rad(90)), 0.1)
handleweld.C0=clerp(handleweld.C0,cf(0,-.5,-2)*angles(math.rad(-80),math.rad(-10),math.rad(0)),.1)

        end
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
so("http://www.roblox.com/asset/?id=203691492",Hitbox,1,1)
if TrailDeb == false then
TrailDeb = true
end
coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Navy blue")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)() 
for i=0,1,0.06 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.1)
handleweld.C0=clerp(handleweld.C0,cf(0,-.5,-2)*angles(math.rad(-80),math.rad(-10),math.rad(0)),.1)
end

for i=0,1,1 do
swait()
so("http://www.roblox.com/asset/?id=203691467",Hitbox,1,1)
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,6*i),.3)
end
end

attack=false
con1:disconnect()
if TrailDeb == true then
						TrailDeb = false
						end
end

function attackthree()
        attack=true
        for i=0,1.5,0.06 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(00)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(00)),.1)
RW.C0=clerp(RW.C0,cf(1,0.8,-1)*angles(math.rad(130),math.rad(0),math.rad(-50)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.8,-1)*angles(math.rad(130),math.rad(0),math.rad(50)),.1)
handleweld.C0=clerp(handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
so("http://roblox.com/asset/?id=203691467",Hitbox,1,1) 
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
if TrailDeb == false then
TrailDeb = true
end 
coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Navy blue")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)() 
      for i=0,1.5,.06 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(00)),.2)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(-50)),.2)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(50)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(10),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(-20),math.rad(-70),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
attack=false
con1:disconnect()
if TrailDeb == true then
						TrailDeb = false
						end
end

function JumpSpin()
attack=true
for i=0,1,0.06 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(50)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.1)
handleweld.C0=clerp(handleweld.C0,cf(0,-.5,-2)*angles(math.rad(-80),math.rad(-10),math.rad(0)),.1)
end
if TrailDeb == false then
TrailDeb = true
end 
coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Navy blue")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)() 
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
for i=0,0.6,.5 do
	so("http://www.roblox.com/asset/?id=203691447",Hitbox,1,1)
swait()
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,4)*euler(0,1.2,6*i),.2)
end
end
attack=false
con1:disconnect()
if TrailDeb == true then
						TrailDeb = false
						end
end

mouse.Button1Down:connect(function()
	if attack==false then
		if attacktype==1 then
			attacktype = 2
			attackone()
		elseif attacktype==2 then
			attacktype = 3
			attacktwo()
			elseif attacktype==3 then
			attacktype = 1
			attackthree()
		end
	end
end)

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Material = "SmoothPlastic"
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
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        nooutline(S)
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Material = "SmoothPlastic"
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
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        nooutline(S)
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Material = "SmoothPlastic"
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
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        nooutline(S)
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0,0.1,0) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

DOHHit=function(hit,Damage,Pos) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
        if attackdebounce2 == false then 
        attackdebounce2 = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce2 = false 
        end)) 
        elseif attackdebounce2==true then return end
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                h:TakeDamage(Damage) 
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-3,3),math.random(-3,3),math.random(-3,3))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.05)
                f=it("BodyPosition")
                f.P=800
                f.D=100
                f.maxForce=vt(math.huge,math.huge,math.huge)
                f.position=Pos.Position
                f.Parent=t
                game:GetService("Debris"):AddItem(f,.1)
        else
                if hit.CanCollide==false then
                        return
                end
--                DBExplode(DB)
        end
end

colors={"Really black","Navy blue"}
random=colors[math.random(1,#colors)]
function Absorber()
attack=true
so("http://www.roblox.com/asset/?id=231917977",LeftArm,1,1) 
for i=0,1,0.1 do
wait()
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(-10),math.rad(-60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
end
for i=0,1,0.1 do
wait(0)
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
end
for i=0,1,0.2 do
wait()
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(-10),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(5),math.rad(80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
end
for i=0,1,0.15 do
wait(0)
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
end
so("http://www.roblox.com/asset/?id=231917822",LeftArm,1,1) 
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("Navy blue")) 
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("Black")) 
lacf=LeftArm.CFrame
coroutine.resume(coroutine.create(function() 
local derppart=part(3,workspace,"SmoothPlastic",0,0,BrickColor.new("Really black"),"Effect",vt(1,1,1))
derppart.Anchored=true
derppart.CFrame=lacf*CFrame.new(0,-1,0)
for i=1,50 do
wait()
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - derppart.Position;
local mag = targ.magnitude;
if mag <= 7 and c[i].Name ~= Player.Name then 
DOHHit(head,math.random(1,3),derppart)
end 
end 
end 
end 
MMMAGIC2(lacf,3,3,3,0,-1,0,BrickColor.new(random)) 
MMMAGIC3(lacf,1,4,1,0,-1,0,BrickColor.new(random)) 
end
derppart.Parent=nil
end))
for i=0,1,0.2 do
wait()
end
attack=false
end

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			JumpSpin()
		end
		elseif k=='e' then
		if attack==false then
			Absorber()
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-5),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(10),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(-20),math.rad(-70),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(100),math.rad(-10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(5),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(10),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(-20),math.rad(-70),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(100),math.rad(-10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(5),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(100),math.rad(-10),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-5),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(90),math.rad(-10),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-5),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(90),math.rad(-10),math.rad(0)),.3)
end
end
end
end