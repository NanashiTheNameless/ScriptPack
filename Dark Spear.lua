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

Handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.412423253, 7.58860922, 0.253735453))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(-0.991550446, -1.10797119, 0.0577545166, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.975243747))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.412423253, 0.78360635, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.000106811523, 1.44050598, 4.95910645e-005, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 0.9849962))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.412423253, 0.78360635, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(8.39233398e-005, 0.643753052, 1.14440918e-005, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 0.9849962))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.412423253, 0.78360635, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(4.57763672e-005, 2.23980713, 0.000122070313, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 0.9849962))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.254121304, 0.254122317, 0.254121572))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-3.34858704, -2.75717163, -0.00225067139, 0.00391704869, 0.505952418, -0.862554848, -0.0086982036, -0.862518787, -0.50596267, -0.999962807, 0.00948455464, 0.00102232886))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.550768673, 0.545448899, 0.907306492))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.254121304, 0.762020946, 0.254121572))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-4.00640869, -1.49237061, -0.00200653076, 0.00154399395, 0.265469402, -0.9641186, -0.00947922003, -0.964080632, -0.265469939, -0.999961972, 0.00954897236, 0.00102788932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.643893838, 1, 0.907306492))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.254121304, 0.254122317, 0.254121572))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-3.34831238, -2.75457764, 0.0289077759, -0.00357113825, -0.489759535, -0.871852756, 0.00879916083, 0.871816099, -0.489766896, 0.999962986, -0.00942059513, 0.00119607977))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.550768673, 0.545448899, 0.907306492))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.254121304, 0.762020946, 0.254121572))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-4.00566101, -1.48971558, 0.0288200378, -0.00118909369, -0.247353673, -0.968925178, 0.00933418702, 0.96888876, -0.247351676, 0.99996388, -0.00933824852, 0.00115672988))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.643893838, 1, 0.907306492))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.275191188, 0.320495069, 0.254121572))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-2.52620697, -3.41609955, 0.0287590027, -0.00571917463, -0.698660135, -0.715436757, 0.00751610938, 0.715403855, -0.698676646, 0.999963582, -0.00937315263, 0.00115967111))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.907306492))
Hitbox=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(1.58666444, 0.253735244, 4.89258242))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-0.00231552124, -0.0244789124, -7.48760986, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(7.24377441, -0.0428543091, 5.4989624, -0.000151033761, -0.591266096, 0.80648005, 1.00000799, 0.000109934437, 0.000267871685, -0.000247037678, 0.806486726, 0.591261327))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.885846734, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-4.65231323, -0.0701599121, 8.03381348, -7.49159735e-005, 0.867560387, -0.497344196, -1.00000799, -0.000191825966, -0.000183979908, -0.000255011604, 0.497348338, 0.867553353))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.884220958, 0.459991723, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(2.28247833, -0.0434608459, 9.04037476, 0.000109888329, -0.973213494, 0.229936406, 1.00000799, 0.000162540251, 0.000210030092, -0.000241773014, 0.229938373, 0.973205686))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.885846734, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-7.24456787, -0.0709037781, 5.49820709, 7.20331445e-005, 0.591187656, -0.806537628, -1.00000823, -0.000232850463, -0.000259987719, -0.000341498351, 0.806544363, 0.591182947))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.884220958, 0.459991723, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-2.2789402, -0.0700111389, 9.04151917, -0.000192888911, 0.973314464, -0.229509324, -1.00000823, -0.000237291082, -0.000165853067, -0.000215882552, 0.229511321, 0.973306537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.884220958, 0.459991723, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(4.65382004, -0.0430488586, 8.0329895, 3.69156842e-005, -0.867464542, 0.497511268, 1.00000799, 0.000181213516, 0.000241757603, -0.000299866311, 0.4975155, 0.867457747))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.885846734, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(8.57350159, -0.0418281555, 2.12272644, -0.000252976897, -0.212173268, 0.977232635, 1.00000799, 0.000184864621, 0.00029900865, -0.000244092604, 0.977240503, 0.212171614))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.885846734, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(8.57542419, -0.043056488, 1.16332626, -0.00023596159, -0.101937227, 0.994790971, 1.00000799, 0.00011883305, 0.000249375851, -0.000143630503, 0.994799197, 0.101936504))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.885846734, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-8.37485504, -0.0710983276, 3.2864151, 0.000170995059, 0.343808174, -0.939041018, -1.00000811, -0.000277915708, -0.000283847563, -0.00035855826, 0.939048707, 0.343805432))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.884220958, 0.459991723, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(8.37462616, -0.0430335999, 3.28691101, -0.000183995217, -0.343870252, 0.939018309, 1.00000799, 0.000146947699, 0.00024975717, -0.000223865558, 0.939025939, 0.34386754))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.885846734, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-8.57349396, -0.071723938, 2.12358093, 0.000194976412, 0.212257221, -0.977214336, -1.00000811, -0.000299938663, -0.00026467198, -0.000349278154, 0.977222323, 0.212255538))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.884220958, 0.459991723, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-8.57539368, -0.07081604, 1.16521454, 0.000213961524, 0.102158278, -0.994768381, -1.00000811, -0.000301864027, -0.000246088515, -0.000325420348, 0.994776368, 0.102157526))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.884220958, 0.459991723, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(3.31175828, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(6.69754028, -0.0425338745, 0.38136673, -0.000298950035, -0.0092464881, 0.999957323, 1.00000799, 0.000157872622, 0.000300424465, -0.000160639829, 0.999965489, 0.00924650487))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(3.31175828, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-6.6978302, -0.071018219, 0.382289886, 0.000229949364, 0.00940148719, -0.999955833, -1.00000823, -0.000320878142, -0.000232978782, -0.000323050277, 0.999963999, 0.00940147787))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.459991723, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.691633821, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-0.418251038, -0.0708847046, 9.34434509, -0.00019387278, 0.999967039, 0.00906555261, -1.00000799, -0.000191600499, -0.000251948019, -0.000250198471, -0.00906553306, 0.999958932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.459991723, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.691221476, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.419998169, -0.0431976318, 9.34411621, 0.000137872412, -0.999969661, -0.00881155487, 1.00000799, 0.000135864146, 0.000228950434, -0.000227741955, -0.00881151669, 0.999961197))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(8.4226532, -0.0431213379, 0.745285034, -0.000239955174, -0.0529128537, 0.998599291, 1.00000799, 0.000123881604, 0.000246857962, -0.000136765957, 0.998607516, 0.0529125333))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.885846734, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-6.54148102, -0.0709838867, 6.49552155, 5.16811269e-008, 0.70111835, -0.713050425, -1.00000811, -0.000277705025, -0.000273126439, -0.000389505905, 0.713056445, 0.701112807))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.884220958, 0.459991723, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(6.54231262, -0.0434036255, 6.49456787, -5.16592991e-008, -0.701016009, 0.713151157, 1.00000799, 0.000214198808, 0.000210623548, -0.000300400832, 0.713156939, 0.701010466))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.885846734, 0.450239241, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.253735602, 0.253735244, 0.771231234))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-8.4229126, -0.0707778931, 0.74634552, 0.000222954986, 0.0530518405, -0.998591959, -1.00000823, -0.000314875739, -0.000239999717, -0.000327160582, 0.998600066, 0.0530514717))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.884220958, 0.459991723, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.275191188, 0.320495069, 0.254121572))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-2.52526093, -3.41908264, -0.00257873535, 0.00618710509, 0.712011456, -0.702146471, -0.0073781875, -0.702114105, -0.712031901, -0.999961734, 0.00958598033, 0.000909283233))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.907306492))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.35522258, 0.253735244, 1.38780403))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.000751495361, -0.00103378296, 4.5131073, -0.000193872809, 0.999963522, 0.00945455488, 1.00000799, 0.000191503248, 0.000251946971, 0.000250122917, 0.00945454091, -0.999955475))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.968745708, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.405412048, 0.253735244, 0.339836985))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.560440063, -0.0129928589, -8.81813049, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.918357968, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.318390727, 0.253735244, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-2.17488098, -0.0146484375, -8.48353577, 0.000316864549, -0.960335493, -0.278874695, -1.00000823, -0.000273923622, -0.00019296378, 0.000108916567, 0.278876841, -0.960327744))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.918357968, 0.433984667))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29170954, 0.253735244, 0.835569203))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-0.120380402, -0.0167503357, -4.62361145, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.906980097, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.405412048, 0.253735244, 0.339836985))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.559886932, -0.0118103027, -5.74542236, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.906980097, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.253735602, 1.73135781, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-0.266841888, -0.000377655029, 3.60221863, -1.00000799, -0.000136876712, -6.99505617e-005, 0.000137529365, -0.999963522, -0.00947355386, -6.86470084e-005, -0.00947350077, 0.999955177))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.664790511, 1, 0.661540687))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.253735602, 1.73135781, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-0.266765594, -0.000366210938, 4.13514709, -1.00000799, -0.000136876712, -6.99505617e-005, 0.000137529365, -0.999963522, -0.00947355386, -6.86470084e-005, -0.00947350077, 0.999955177))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.664790511, 1, 0.661540687))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.405412048, 0.253735244, 0.339836985))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.56029129, -0.0130119324, -8.18408203, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.918357968, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.4784109, 0.253735244, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-7.6322937, -0.014629364, -4.2954483, 0.000309896423, -0.45424521, -0.890878797, -1.00000823, -0.000313825178, -0.000187846337, -0.000194250286, 0.890885949, -0.454241425))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.918357968, 0.433984667))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.02610898, 0.253735244, 0.320865512))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-8.47691345, -0.0147171021, -0.370811462, 0.000195949076, 0.00974048674, -0.999952555, -1.00000823, -0.000236874577, -0.000198268433, -0.000238790628, 0.99996078, 0.0097405035))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.918357968, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.275911123, 0.253735244, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-0.739761353, -0.0150108337, -8.6053009, 0.000305868976, -0.993638158, -0.112692557, -1.00000823, -0.000288899144, -0.000166952887, 0.000133330119, 0.112693369, -0.993629992))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.918357968, 0.776945353))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.324164659, 0.253735244, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-4.78876495, -0.0146369934, -7.39229584, 0.000403867394, -0.819918215, -0.572490752, -1.00000823, -0.000359457452, -0.00019065637, -4.94647102e-005, 0.572495222, -0.819911361))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.918357968, 0.433984667))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.343960911, 0.253735244, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.178230286, -0.0146255493, -8.45265198, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.918357968, 0.776945353))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.405412048, 0.253735244, 0.339836985))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.574077606, -0.0148468018, -6.34494019, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.906980097, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.35233581, 0.253735244, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.00103378296, 4.46792603, 0.0002784729, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.450239241, 0.975243747))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.405412048, 0.253735244, 0.407474339))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.559688568, -0.0118675232, -4.54727173, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.906980097, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.73217762, 0.522541702, 0.701119363))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.000801086426, -0.000110626221, -3.868927, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.02280962, 0.371181935, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-3.92480469, 0.671592712, 0.000495910645, -5.89830815e-005, -0.267638594, 0.96351999, -7.51385815e-005, -0.963528037, -0.267636567, 1.00000823, -8.81796295e-005, 3.67255561e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.975243747))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.73217762, 0.522541702, 0.701119363))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-2.67028809e-005, -3.87425232, 0.000137329102, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.02280962, 0.371181935, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-3.92617798, -0.672889709, 5.34057617e-005, -0.000199917515, 0.249910489, 0.968269587, -0.000129111824, -0.968277395, 0.249908313, 1.00000823, -7.50500767e-005, 0.000225842596))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.975243747))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.405412048, 0.253735244, 0.339836985))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.560092926, -0.0129165649, -6.97294617, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.91673249, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.824846506, 1.09993589, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(9.91821289e-005, 3.97314453, 0.000282287598, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.975243747))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.253735602, 1.73135781, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.266132355, -0.000427246094, 4.1350708, -1.00000799, -0.000136876712, -6.99505617e-005, 0.000137529365, -0.999963522, -0.00947355386, -6.86470084e-005, -0.00947350077, 0.999955177))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.664790511, 1, 0.661540687))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.253735602, 1.73135781, 0.253735453))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.268154144, -0.00040435791, 3.60142517, -1.00000799, -0.000136876712, -6.99505617e-005, 0.000137529365, -0.999963522, -0.00947355386, -6.86470084e-005, -0.00947350077, 0.999955177))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.664790511, 1, 0.661540687))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.405412048, 0.253735244, 0.339836985))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.560287476, -0.0133323669, -7.5605011, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.919983447, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.526664436, 0.253735244, 3.31258249))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.267688751, -0.0145454407, -6.69779968, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.906980097, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.405412048, 0.253735244, 0.335300267))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.559841156, -0.0118560791, -5.13693237, 0.000241873204, -0.99996531, -0.00925355311, -1.00000823, -0.00024060173, -0.000138947973, 0.00013671245, 0.00925352518, -0.999957383))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.906980097, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.374067754, 0.253735244, 0.37571761))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.00569152832, -0.000339508057, 3.81860352, -0.000193872809, 0.999963522, 0.00945455488, 1.00000799, 0.000191503248, 0.000251946971, 0.000250122917, 0.00945454091, -0.999955475))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983374536, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.374067754, 0.253735244, 0.37571761))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(-0.330551147, -0.000354766846, 4.50065613, -0.000193872809, 0.999963522, 0.00945455488, 1.00000799, 0.000191503248, 0.000251946971, 0.000250122917, 0.00945454091, -0.999955475))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983374536, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.374067754, 0.253735244, 0.37571761))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.000261873385, -0.999963641, -0.0094405571, 0.000162948752, 0.00944053661, -0.999955475, 1.00000823, 0.000260327419, 0.000165416714),CFrame.new(0.337677002, -0.000377655029, 4.49931335, -0.000193872809, 0.999963522, 0.00945455488, 1.00000799, 0.000191503248, 0.000251946971, 0.000250122917, 0.00945454091, -0.999955475))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983374536, 1))

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
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
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
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
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
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
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
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
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,999999,999999,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
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