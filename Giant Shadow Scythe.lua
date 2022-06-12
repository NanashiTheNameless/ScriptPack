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
w1.Material = "Neon"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Dark indigo")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "Neon"
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
w2.Material = "Neon"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Dark indigo")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "Neon"
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Dark indigo"))
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Handle",Vector3.new(0.39999938, 13.7999973, 0.399999976))
handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(-0.0048122406, -6.40232849, 1.03116059, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark stone grey","Part",Vector3.new(0.39999938, 0.80000025, 4.20000219))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000183105469, -9.09996033, 2.7000494, 1, -1.19209076e-007, 4.47013271e-008, 4.49016397e-008, 0.00168089767, -0.999998569, 1.19133766e-007, 0.999998569, 0.00168089778))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1, 0.200000271, 4.59999943))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.59981537, -0.319915771, 2.48973823, 1.63094505e-009, -0.00167454977, 0.999998569, 1, -1.19209083e-007, -1.83056925e-009, 1.19211975e-007, 0.999998569, 0.00167454977))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000036, 0.200000271, 4.00000048))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(9.30006409, 0.310112, 2.78980875, 2.04899884e-008, -0.00160901435, 0.999998689, 1, -1.19209126e-007, -2.06818243e-008, 1.19242245e-007, 0.999998689, 0.00160901435))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1, 0.200000271, 4.60000038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.60009003, 0.310125351, 2.48941946, 5.51521886e-008, -0.00159262656, 0.999998808, 1, -1.78814503e-007, -5.54370416e-008, 1.78902582e-007, 0.999998808, 0.00159262656))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.39999938, 0.200000271, 0.400000036))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.00018119812, -2.2995882, -6.70053864, 1, -1.19209076e-007, -2.38424491e-007, -1.1956142e-007, -0.999998927, -0.00147830346, -2.3824802e-007, 0.00147830346, -0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark stone grey","Part",Vector3.new(0.39999938, 1.39999998, 0.600001216))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.00016784668, -7.99960327, 1.49982166, 1, -1.19209076e-007, 4.47013271e-008, 4.49034943e-008, 0.00169644796, -0.999998569, 1.1913307e-007, 0.999998569, 0.00169644807))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000036, 0.200000271, 4.00000048))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(9.29983521, -0.319908142, 2.79043484, -2.11861551e-008, -0.00168578397, 0.999998569, 1, -1.19209076e-007, 2.09852242e-008, 1.19173528e-007, 0.999998569, 0.00168578397))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.79997253, -0.349954605, 0.990463495, 1.07072758e-007, -0.00169718312, 0.999998569, 1, -1.19209126e-007, -1.07275234e-007, 1.19391018e-007, 0.999998569, 0.00169718324))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.670000017, 0.200000003, 1.19999981))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(5.26336288, 0.310119629, 5.93222046, -5.96040408e-008, -0.70810169, 0.706110597, 1, -1.21502552e-007, -3.74334022e-008, 1.12300903e-007, 0.706110597, 0.70810169))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1, 0.220000014, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.80014038, -0.31993103, 0.989957035, 6.97039013e-008, -0.00164350378, 0.999998689, 1, -1.19209126e-007, -6.98999116e-008, 1.19323843e-007, 0.999998689, 0.00164350378))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.220000014, 2.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.79997253, -0.31993103, 2.49022627, 4.06004794e-008, -0.00169145432, 0.999998569, 1, -1.19209126e-007, -4.08021741e-008, 1.19277971e-007, 0.999998569, 0.00169145432))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.80001068, 0.340049744, 0.990428209, 4.40637784e-008, -0.00169488578, 0.999998569, 1, -1.49011811e-007, -4.43164012e-008, 1.49086716e-007, 0.999998569, 0.00169488578))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.39999938, 0.400000036, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000152587891, -6.70035553, 2.00017023, 1, -1.19209076e-007, 4.47013271e-008, 4.48878374e-008, 0.00156501064, -0.999998808, 1.19138974e-007, 0.999998808, 0.00156501064))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark stone grey","Part",Vector3.new(0.39999938, 1.60000014, 4.00000191))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.00016784668, -7.89893341, 4.39826918, 1, -1.19209076e-007, 4.47013271e-008, 4.49000481e-008, 0.00166750455, -0.999998689, 1.19134377e-007, 0.999998689, 0.00166750455))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000274, 0.400000036))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.310112, 7.90003204, -4.58929634, 1, 2.84616067e-006, -7.45070793e-007, 7.49569381e-007, -0.00158089248, 0.999998808, 2.84497946e-006, -0.999998808, -0.00158089248))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.220000014, 0.999999821))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(3.58646393, -0.319763184, 9.33159637, -1.63910798e-007, -0.70812124, 0.706090868, 1, -1.80042989e-007, 5.15776932e-008, 9.06034572e-008, 0.706090927, 0.708121181))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.220000014, 0.999999821))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(3.58652115, 0.310195923, 9.33126068, -1.63910798e-007, -0.70812124, 0.706090868, 1, -1.80042989e-007, 5.15776932e-008, 9.06034572e-008, 0.706090927, 0.708121181))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.799999356, 0.600000262, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(7.62939453e-005, -0.299938679, -7.40008545, 1, -5.96036465e-008, 1.4898605e-008, -5.95790759e-008, -0.999998689, -0.00164388563, 1.49965658e-008, 0.00164388563, -0.999998689))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.670000017, 0.200000003, 1.19999981))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(5.26215744, -0.319839478, 5.93211365, -5.96040337e-008, -0.708129704, 0.706082463, 1, -8.2250601e-008, 1.92603378e-009, 5.67118228e-008, 0.706082463, 0.708129704))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.379999876, 4.44999886, 1.39999998))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-2.86102295e-005, -6.05581665, 9.78747559, -1, 1.78814503e-007, -4.47013306e-008, -1.84294734e-007, -0.966237664, 0.257652611, 2.87991475e-009, 0.257652611, 0.966237605))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.600000024, 0.200000271, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.61552429, 0.320259094, -0.297967553, -1.84659328e-008, -3.39928299e-008, 1, 1, -1.19209076e-007, 1.84659292e-008, 1.19209076e-007, 1, 3.39928334e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.600000024, 0.200000271, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.61553192, -0.309753418, -0.297967553, -1.84659328e-008, -3.39928299e-008, 1, 1, -1.19209076e-007, 1.84659292e-008, 1.19209076e-007, 1, 3.39928334e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.409999728, 4.00000095, 0.330000013))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.00499916077, -4.83165169, 10.0465012, -1, 1.78814503e-007, -8.94054182e-008, -1.98313487e-007, -0.943822086, 0.33045423, -2.52927972e-008, 0.33045423, 0.943822086))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.220000014, 2.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.80001068, 0.310049057, 2.49015784, 5.47156347e-008, -0.00167805818, 0.999998569, 1, -1.49011811e-007, -5.49657635e-008, 1.4910384e-007, 0.999998569, 0.0016780583))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark stone grey","Part",Vector3.new(0.39999938, 1.80000019, 0.600001216))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000183105469, -7.79891205, 2.09967065, 1, -1.19209076e-007, 4.47013271e-008, 4.49037572e-008, 0.00169865007, -0.999998569, 1.1913297e-007, 0.999998569, 0.00169865007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.799999356, 2.00000048, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(5.34057617e-005, -8.7000885, -4.86373901e-005, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000274, 0.400000036))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.319801331, 7.89910126, -4.58908844, 1, 2.84616067e-006, -7.45070793e-007, 7.49658e-007, -0.00161204918, 0.999998689, 2.84495559e-006, -0.999998689, -0.00161204918))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000274, 0.409999907))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.329921722, 7.89820099, 6.19515657, -1, -5.81154893e-007, -2.93556536e-006, -2.93463631e-006, -0.00159285218, 0.999998808, -5.85830151e-007, 0.999998808, 0.00159285218))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.01046753, 0.350257874, 5.18440056, -1.16208916e-007, -0.00116245728, 0.999999404, 1, -1.49011811e-007, 1.16035764e-007, 1.48876836e-007, 0.999999404, 0.00116245728))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000274, 0.409999907))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.310253143, 7.89775848, 6.19417667, -1, -5.81154893e-007, -2.93556536e-006, -2.93464905e-006, -0.0015708321, 0.999998808, -5.8576552e-007, 0.999998808, 0.0015708321))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000036, 1.62000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.319927216, -9.30068207, 5.59171581, 1, -2.6822255e-007, 7.00361113e-007, 7.00755379e-007, 0.00147273287, -0.999998927, 2.67190842e-007, 0.999998927, 0.00147273298))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 1.4000001, 1.22000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.310224533, -8.39997101, 5.39148617, 1, -2.6822255e-007, 7.00361113e-007, 7.00779196e-007, 0.0015618616, -0.999998808, 2.67128371e-007, 0.999998808, 0.0015618616))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000036, 1.62000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.310092926, -9.30047607, 5.59133577, 1, -2.6822255e-007, 7.00361113e-007, 7.00781584e-007, 0.0015708236, -0.999998808, 2.67122118e-007, 0.999998808, 0.0015708236))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.00996399, 0.340263367, 5.58438683, -7.12149699e-008, -0.00116247579, 0.999999404, 1, -1.49011782e-007, 7.10417893e-008, 1.48929118e-007, 0.999999404, 0.00116247579))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 1.4000001, 1.22000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.319879532, -8.40018463, 5.39162922, 1, -2.6822255e-007, 7.00361113e-007, 7.00766748e-007, 0.00151529128, -0.999998927, 2.67161028e-007, 0.999998927, 0.00151529128))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.670000017, 0.200000003, 0.599999845))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(7.60210419, -0.309745789, -0.0262105465, 4.40637713e-008, -0.00107338815, 0.999999404, 1, -1.19209105e-007, -4.41917543e-008, 1.1925647e-007, 0.999999404, 0.00107338815))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.39999938, 0.200019345, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000244140625, -2.40885925, -0.0768338442, 1, -1.49011782e-007, 1.19208131e-007, 1.1940115e-007, 0.00129606796, -0.999999166, 1.48857154e-007, 0.999999166, 0.00129606796))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.379999906, 7.79999733, 0.800000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.00018119812, -6.90127945, 10.9409103, -1, 2.38419915e-007, -5.96027014e-008, -2.36358872e-007, -0.866616547, 0.498974591, 6.73128042e-008, 0.498974621, 0.866616607))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.39999938, 3.60000086, 1.39999986))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-7.62939453e-005, -3.00021267, 10.1993179, -1, 1.78814503e-007, -4.47013306e-008, -1.78743079e-007, -0.999998808, -0.00159316196, -4.49861588e-008, -0.00159316196, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark stone grey","Part",Vector3.new(0.410000145, 0.800000012, 7.41999722))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.00538063049, 10.1888885, 6.88093567, -1, -9.55176984e-006, 6.25857228e-006, 5.75701051e-007, 0.505192995, 0.863006473, -1.14050263e-005, 0.863006473, -0.505192995))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark stone grey","Part",Vector3.new(0.409999877, 0.800000012, 4.42000008))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.00535774231, 8.73274994, 6.06542397, -1, -1.08034828e-005, 3.5465257e-006, 5.6521867e-007, 0.264285922, 0.964444458, -1.13566548e-005, 0.964444399, -0.264285892))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.670000017, 0.200000003, 0.599999845))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(7.62210083, 0.310256958, -0.0261899233, 6.71427998e-008, -0.00107328093, 0.999999404, 1, -1.1920914e-007, -6.72707898e-008, 1.19281268e-007, 0.999999404, 0.00107328082))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.39999938, 6.20002079, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000244140625, -3.80190277, 0.122788072, 1, -1.19209076e-007, 4.47013271e-008, 4.48775985e-008, 0.00147906633, -0.999998927, 1.19142832e-007, 0.999998927, 0.00147906633))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 1, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.329883575, -8.59844971, 6.20097303, 1, -2.6822255e-007, 7.00361113e-007, 7.00766861e-007, 0.00151565345, -0.999998927, 2.67160772e-007, 0.999998927, 0.00151565345))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.00995636, -0.329696655, 5.58438635, -2.65702909e-008, -0.00116240955, 0.999999404, 1, -1.19209076e-007, 2.64317368e-008, 1.19178281e-007, 0.999999404, 0.00116240955))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.41021729, 0.340257645, 5.3848424, -6.07377402e-008, -0.0011624021, 0.999999404, 1, -1.49011782e-007, 6.05645667e-008, 1.48941297e-007, 0.999999404, 0.0011624021))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.40995026, -0.329879761, 5.38500214, 1.32141196e-008, -0.00116239127, 0.999999404, 1, -1.19209112e-007, -1.33526949e-008, 1.19224552e-007, 0.999999404, 0.00116239127))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 1, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.310100555, -8.58777618, 6.20157337, 1, -2.6822255e-007, 7.00361113e-007, 7.00768169e-007, 0.00152056233, -0.999998927, 2.67157333e-007, 0.999998927, 0.00152056233))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 1, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.329891205, -8.60809326, 6.20138168, 1, -2.6822255e-007, 7.00361113e-007, 7.00766861e-007, 0.00151576323, -0.999998927, 2.67160686e-007, 0.999998927, 0.00151576323))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.01044464, -0.329711914, 5.18439245, -3.97250446e-008, -0.00116242282, 0.999999404, 1, -1.19209027e-007, 3.95864994e-008, 1.19162934e-007, 0.999999404, 0.00116242282))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.449999839, 0.400000036, 1.62000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.0149345398, -9.30037689, 5.59038067, 1, -2.6822255e-007, 7.00361113e-007, 7.00780447e-007, 0.00156656664, -0.999998808, 2.67125102e-007, 0.999998808, 0.00156656664))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.799999356, 0.600000262, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-5.34057617e-005, -0.300057292, -7.40003967, -1, 5.96036465e-008, -2.97999652e-008, 5.95545799e-008, 0.999998689, 0.00164382579, 2.98979046e-008, 0.00164382579, -0.999998689))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000274, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.319915771, -9.29981232, -0.490157127, -1, 2.38419972e-007, 7.89774788e-007, -7.89374269e-007, 0.00167544454, -0.999998569, -2.39742832e-007, -0.999998569, -0.00167544466))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.39999938, 0.80000025, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(9.91821289e-005, -6.90019989, 1.50059986, 1, -1.19209076e-007, 4.47013271e-008, 4.4898453e-008, 0.00165412505, -0.999998689, 1.19134981e-007, 0.999998689, 0.00165412517))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.799999356, 0.400000274, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(6.86645508e-005, 6.1750412e-005, -7.30003357, 1, -1.19209076e-007, 4.47013271e-008, -1.19135436e-007, -0.999998689, -0.00164388528, 4.48972344e-008, 0.00164388528, -0.999998689))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000274, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.310134888, -9.30013275, -0.489312172, -1, 1.7881456e-007, 8.34478897e-007, -8.34196783e-007, 0.00157221942, -0.999998808, -1.80126335e-007, -0.999998808, -0.00157221942))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1, 0.230000019, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.80010223, 0.31505394, 0.98993659, 1.01164737e-007, -0.00164465304, 0.999998689, 1, -1.19209147e-007, -1.01360932e-007, 1.19375699e-007, 0.999998689, 0.00164465304))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.799999356, 0.80000025, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(5.34057617e-005, 5.73396683e-005, -7.50003052, 1, -5.96036465e-008, 1.4898605e-008, -5.95790759e-008, -0.999998689, -0.00164388563, 1.49965658e-008, 0.00164388563, -0.999998689))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.39999938, 2.40000057, 0.599999964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(7.62939453e-005, -7.70002747, 0.900098503, 1, -1.19209076e-007, 4.47013271e-008, 4.490321e-008, 0.00169407704, -0.999998569, 1.19133176e-007, 0.999998569, 0.00169407704))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.20000005, 0.200000271, 3.60000038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(6.64672661, -0.319740295, 6.71153259, -1.49010674e-007, -0.965943158, 0.258754343, 1, -1.37425829e-007, 6.28593853e-008, -2.51590695e-008, 0.258754343, 0.965943217))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.39999938, 0.400021255, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000175476074, 1.89885712, 0.0156496763, 1, -5.96036465e-008, 1.4898605e-008, 1.49867816e-008, 0.00147968298, -0.999998927, 5.95815379e-008, 0.999998927, 0.00147968309))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.39999938, 12.200017, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000259399414, -1.20265961, -0.277392983, 1, -5.96036465e-008, 1.4898605e-008, 1.49865258e-008, 0.00147536665, -0.999998927, 5.95816019e-008, 0.999998927, 0.00147536665))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.40220642, -0.339752197, -1.96429634, -6.7053584e-008, -0.258818865, 0.965925932, 1, -1.20999317e-007, 3.69973279e-008, 1.07300764e-007, 0.965925872, 0.258818835))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.20000005, 0.200000271, 3.60000038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(6.64637566, 0.320261002, 6.71100616, -4.47039312e-008, -0.965927541, 0.258812845, 1, -3.71759228e-008, 3.39808679e-008, -2.32014479e-008, 0.258812845, 0.965927541))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.400021255, 0.400000036))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000144958496, 7.89817047, 0.00817203522, 1, -1.19209076e-007, 4.47013271e-008, 4.48658213e-008, 0.00138024637, -0.999999046, 1.19147266e-007, 0.999999046, 0.00138024637))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.39999938, 0.200019345, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000267028809, -0.808837891, -0.0789266825, 1, -1.49011782e-007, 1.19208131e-007, 1.19401165e-007, 0.00129613746, -0.999999166, 1.4885714e-007, 0.999999166, 0.00129613746))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.600000024, 0.200000271, 4.5999999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.4032135, -0.309745789, -0.264072418, -3.72516631e-008, -0.258819014, 0.965925872, 1, -1.20990833e-007, 6.14636386e-009, 1.15277373e-007, 0.965925872, 0.258818984))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.39999938, 0.200019345, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.00025177002, -4.00882721, -0.074775219, 1, -1.49011782e-007, 1.19208131e-007, 1.19401165e-007, 0.00129615236, -0.999999166, 1.48857154e-007, 0.999999166, 0.00129615236))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.400000036, 3.89000034))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.130329132, 3.28823376, -5.64214325, 1, -9.53684548e-007, 4.64922141e-006, -5.19986472e-008, -0.981745541, -0.190198928, 4.74574244e-006, 0.190198958, -0.981745601))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 1.00000024, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.3203125, -5.2211442, -6.02006531, -1, 1.19209076e-007, -4.47013271e-008, 1.19207854e-007, 1, 2.74369886e-005, 4.4704592e-008, 2.74369886e-005, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(2.20000029, 0.640000463, 3.82000041))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.60221863, 0.00025177002, -0.674562454, -3.72516631e-008, -0.258819014, 0.965925872, 1, -1.20990833e-007, 6.14636386e-009, 1.15277373e-007, 0.965925872, 0.258818984))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1.20000041, 2.00000024, 0.400000751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.00805044174, -9.8965683, 0.0198116302, -1.78812996e-007, -1, -2.60661e-005, 9.18402918e-008, -2.60661e-005, 1, -1, 1.78810609e-007, 9.1844953e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.486000061, 2.70200038, 0.234000027))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 1.00000024, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.319747925, -5.23132992, -6.02177429, -1, 1.19209076e-007, -4.47013271e-008, 1.19205289e-007, 1, 8.46573894e-005, 4.47114168e-008, 8.46573894e-005, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.800021231, 0.800000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000129699707, 7.29879761, 0.00948095322, 1, -1.19209076e-007, 4.47013271e-008, 4.48690756e-008, 0.0014075588, -0.999999046, 1.19146044e-007, 0.999999046, 0.00140755891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1, 0.200000271, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.40219879, -0.329719543, -1.96434212, -1.04305997e-007, -0.258814603, 0.965927064, 1, -1.49004592e-007, 6.80604515e-008, 1.26312528e-007, 0.965927064, 0.258814603))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.800021231, 1.20000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.000144958496, 8.49656677, 0.00763309002, 1, -1.19209076e-007, 4.47013271e-008, 4.48658888e-008, 0.0013808267, -0.999999046, 1.19147238e-007, 0.999999046, 0.0013808267))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.439999968, 0.849999964, 3.90000057))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(-0.000289916992, -3.91264629, -5.64580536, -1, 1.19209076e-007, -4.47013271e-008, 1.08530877e-007, 0.98174566, 0.190198451, 6.65587194e-008, 0.190198481, -0.98174572))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.40220642, 0.350257874, -1.9643116, -6.7053584e-008, -0.258818865, 0.965925932, 1, -1.20999317e-007, 3.69973279e-008, 1.07300764e-007, 0.965925872, 0.258818835))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.600000024, 0.200000271, 4.5999999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.40222931, 0.320251465, -0.264352798, -3.72516631e-008, -0.258819014, 0.965925872, 1, -1.20990833e-007, 6.14636386e-009, 1.15277373e-007, 0.965925872, 0.258818984))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1, 0.200000271, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(8.40221405, 0.340270996, -1.96434784, -1.11756485e-007, -0.258814663, 0.965927064, 1, -1.50931754e-007, 7.52573754e-008, 1.26311349e-007, 0.965927064, 0.258814663))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Dark stone grey","Hitbox",Vector3.new(0.39999938, 3.00000024, 11.4000025))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, -1.19209076e-007, 4.47013271e-008, 4.48972415e-008, 0.00164393289, -0.999998689, 1.19135436e-007, 0.999998689, 0.00164393289),CFrame.new(0.00016784668, -8.39911652, 2.29857397, 1, -1.19209076e-007, 4.47013271e-008, 4.49000481e-008, 0.00166750455, -0.999998689, 1.19134377e-007, 0.999998689, 0.00166750455))

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
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
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
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
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
handleweld.C0=clerp(handleweld.C0,cf(0,-0,0)*angles(math.rad(-50),math.rad(10),math.rad(0)),.3)
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
handleweld.C0=clerp(handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
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
handleweld.C0=clerp(handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
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
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
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
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
end
attack=false
con1:disconnect()
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part("Custom",workspace,"Neon",0,0,"Dark indigo","Effect",vt(0.5,0.5,0.5))
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
handleweld.C0=clerp(handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.1)
end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.5)
 hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,0.8)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        BreakEffect(BrickColor.new("Dark indigo"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
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
handleweld.C0=clerp(handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.2)
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
handleweld.C0=clerp(handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
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
handleweld.C0=clerp(handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
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
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
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
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
end
end