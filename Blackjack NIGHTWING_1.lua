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

Handle1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle1",Vector3.new(0.874639988, 0.200000003, 0.538240016))
Handle1weld=weld(m,Character["Right Arm"],Handle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.29614592, -0.0330114365, -0.0364151001, -2.18557464e-011, 1.00000083, 0.00029155612, 1, 2.18539804e-011, 6.26317401e-012, 6.25671433e-012, 0.000291556091, -1.00000095))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxA",Vector3.new(1.0092001, 0.201839983, 0.672799945))
HitboxAweld=weld(m,Handle1,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.86238098e-005, 0, -6.48498535e-005, 1.00000346, 3.84204577e-013, 7.42121483e-006, -3.83895037e-013, 1, 2.26815094e-016, -7.42141856e-006, -6.11056344e-016, 1.00000393))
mesh("BlockMesh",HitboxA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0092001, 0.200000003, 0.672799945))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000140190125, 0, -0.000114440918, 1.0000025, 3.8331442e-013, 7.18253432e-006, -3.83076085e-013, 1, -3.10081821e-016, -7.18273805e-006, 1.21430643e-017, 1.0000031))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.302759975, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.403881311, 0.168102264, -0.0336685181, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370234966, 0.100944519, -0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168125153, -0.100980163, 0.0336675644, 0.000573056866, 2.98486214e-008, -1.0000056, 1.00000012, 2.69930268e-007, 0.000581997563, 2.69947321e-007, -1.00000715, -2.96909342e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403671861, -0.168109894, 0.0336675644, -0.999998152, -5.05912532e-013, -9.94937727e-006, -1.0142976e-006, -1.25001372e-011, 1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403880239, -0.168109894, -0.0336685181, 0.999998152, 5.0591199e-013, 1.00386096e-005, 1.10352994e-006, 1.25001372e-011, -1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168125153, -0.100980163, 0.0336675644, 0.000573056866, 2.98486214e-008, -1.0000056, 1.00000012, 2.69930268e-007, 0.000581997563, 2.69947321e-007, -1.00000715, -2.96909342e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0733351931, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336615801, 0.16809082, -0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.16796875, -0.10090518, 0.0336675644, 0.000573500176, -2.98232514e-008, -1.0000056, -1.00000012, -1.49107777e-007, -0.000582440873, -1.49089473e-007, 1.00000715, -2.9910705e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16834259, -0.403576255, 0.0336675644, 0.000573248719, 1.25004182e-011, -1.0000056, -1.00000012, -4.98775825e-013, -0.000582189416, -5.06288913e-013, 1.00000715, 1.20206492e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403676748, -0.168113708, 0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370247602, 0.23550415, -0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.16796875, -0.10090518, 0.0336675644, 0.000573500176, -2.98232514e-008, -1.0000056, -1.00000012, -1.49107777e-007, -0.000582440873, -1.49089473e-007, 1.00000715, -2.9910705e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0733351931, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.3366189, 0.168102264, -0.0336685181, -0.999998152, -5.05912532e-013, -9.94937727e-006, -1.0142976e-006, -1.25001372e-011, 1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370234966, 0.100944519, 0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168281555, -0.100830197, 0.0336685181, -0.000573068857, 3.10669677e-008, 1.0000056, -1.00000012, -2.23650019e-007, -0.000582009437, 2.23630153e-007, -1.00000715, 3.11978283e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0686255917, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000113844872, 5.34057617e-005, 0.0336675644, 0.999998152, 5.05974602e-013, 1.00088655e-005, 1.07378582e-006, 1.25001381e-011, -1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.438665539, 0.0968831778, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168281555, -0.100830197, 0.0336685181, -0.000573278638, -1.25004191e-011, 1.0000056, -1.00000012, -4.98838059e-013, -0.000582219218, 5.06288913e-013, -1.00000715, -1.20206492e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168125153, -0.101054907, 0.0336675644, -0.000573500176, -2.98486285e-008, 1.0000056, 1.00000012, -7.45608943e-008, 0.000582440873, 7.45434434e-008, 1.00000715, 2.9891396e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168125153, -0.101054907, 0.0336675644, -0.000573500176, -2.98486285e-008, 1.0000056, 1.00000012, -7.45608943e-008, 0.000582440873, 7.45434434e-008, 1.00000715, 2.9891396e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0733351931, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370035887, -0.235523224, 0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.33641088, 0.168117523, -0.0336685181, 0.999998152, 5.0591199e-013, 1.00386096e-005, 1.10352994e-006, 1.25001372e-011, -1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370036006, -0.235523224, -0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, 0.000113844872, -0.0336685181, 0.00057326362, 2.39958297e-007, -1.0000056, -1.00000012, 6.26174241e-008, -0.000582204317, 6.2479657e-008, 1.00000715, 2.39993909e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.145997554, 0.0995743647, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.33641088, 0.168117523, 0.0336675644, 0.999998152, 5.0591199e-013, 1.00386096e-005, 1.10352994e-006, 1.25001372e-011, -1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168292999, 0.336523175, 0.0336675644, 0.000573248719, 1.25004182e-011, -1.0000056, -1.00000012, -4.98775825e-013, -0.000582189416, -5.06288913e-013, 1.00000715, 1.20206492e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.3366189, 0.168102264, 0.0336675644, -0.999998152, -5.05912532e-013, -9.94937727e-006, -1.0142976e-006, -1.25001372e-011, 1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168338776, 0.403784871, 0.0336675644, 0.000573248719, 1.25004182e-011, -1.0000056, -1.00000012, -4.98775825e-013, -0.000582189416, -5.06288913e-013, 1.00000715, 1.20206492e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168292999, 0.336523175, -0.0336685181, 0.000573248719, 1.25004182e-011, -1.0000056, -1.00000012, -4.98775825e-013, -0.000582189416, -5.06288913e-013, 1.00000715, 1.20206492e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336615801, 0.16809082, 0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168338776, 0.403784871, -0.0336685181, 0.000573248719, 1.25004182e-011, -1.0000056, -1.00000012, -4.98775825e-013, -0.000582189416, -5.06288913e-013, 1.00000715, 1.20206492e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.403881311, 0.168102264, 0.0336666107, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403880239, -0.168109894, 0.0336675644, 0.999998152, 5.0591199e-013, 1.00386096e-005, 1.10352994e-006, 1.25001372e-011, -1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370247602, 0.23550415, 0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370010257, -0.100978851, -0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16834259, -0.403576255, -0.0336685181, 0.000573248719, 1.25004182e-011, -1.0000056, -1.00000012, -4.98775825e-013, -0.000582189416, -5.06288913e-013, 1.00000715, 1.20206492e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.336412072, -0.168121338, -0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403676867, -0.168113708, -0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168312073, -0.336315274, -0.0336685181, 0.000573248719, 1.25004182e-011, -1.0000056, -1.00000012, -4.98775825e-013, -0.000582189416, -5.06288913e-013, 1.00000715, 1.20206492e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.336411953, -0.168121338, 0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, 0.000113844872, 0.0336675644, 0.00057326362, 2.39958297e-007, -1.0000056, -1.00000012, 6.26174241e-008, -0.000582204317, 6.2479657e-008, 1.00000715, 2.39993909e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.145997554, 0.0995743647, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000113844872, 5.34057617e-005, -0.0336685181, 0.999998152, 5.05974602e-013, 1.00088655e-005, 1.07378582e-006, 1.25001381e-011, -1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.438665539, 0.0968831778, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168312073, -0.336315274, 0.0336675644, 0.000573248719, 1.25004182e-011, -1.0000056, -1.00000012, -4.98775825e-013, -0.000582189416, -5.06288913e-013, 1.00000715, 1.20206492e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370010138, -0.100978851, 0.0336675644, -1.0000006, 1.13307885e-006, -8.87716305e-006, -4.40966687e-006, -6.55631327e-010, 1.00000775, 1.13307692e-006, 1.00000358, 6.65452582e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000113844872, 5.34057617e-005, -0.0336685181, 0.999998152, 5.05974602e-013, 1.00088655e-005, 1.07378582e-006, 1.25001381e-011, -1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403679937, 0.0773719698, 0.0881367922))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403671861, -0.168109894, -0.0336685181, -0.999998152, -5.05912532e-013, -9.94937727e-006, -1.0142976e-006, -1.25001372e-011, 1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000113844872, 5.34057617e-005, 0.0336675644, 0.999998152, 5.05974602e-013, 1.00088655e-005, 1.07378582e-006, 1.25001381e-011, -1.00001013, -5.06285443e-013, 1.00000715, 1.20206544e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403679937, 0.0773719698, 0.0881367922))
mesh("BlockMesh",Handle1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))

Handle2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.874639988, 0.200000003, 0.538240016))
Handle2weld=weld(m,Character["Right Arm"],Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.22525215, -0.233011246, 0.324962616, -2.18563345e-011, 0.706900716, 0.70731312, 1, 1.10235857e-011, 1.98833918e-011, 6.25844428e-012, 0.707313061, -0.706900775))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxB",Vector3.new(1.0092001, 0.201839983, 0.672799945))
HitboxBweld=weld(m,Handle2,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-005, 0, -7.62939453e-006, 1.00000072, 3.8386655e-013, 7.06315041e-006, -3.83776344e-013, 1, 2.7929048e-016, -7.30156898e-006, -3.23525928e-016, 1.00000072))
mesh("BlockMesh",HitboxB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0092001, 0.200000003, 0.672799945))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0, -2.47955322e-005, 1.00000119, 3.8383359e-013, 6.85453415e-006, -3.83656648e-013, 1, 3.27862737e-016, -7.53998756e-006, -4.11996826e-016, 1.00000119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.302759975, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.40378952, 0.168237686, -0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370145798, 0.101079941, -0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.16825676, -0.100891113, 0.0336675644, 0.000573158264, 2.98486249e-008, -1.00000477, 0.999999404, 2.69930268e-007, 0.000581979752, 2.69947151e-007, -1.00000715, -2.96909235e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403764725, -0.167982101, 0.0336675644, -0.999997497, -5.06466397e-013, -9.89437103e-006, -1.07288361e-006, -1.2501793e-011, 1.0000093, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403787613, -0.168233871, -0.0336675644, 0.999997616, 5.06466397e-013, 9.983778e-006, 1.1920929e-006, 1.25017921e-011, -1.00000918, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.16825676, -0.100891113, 0.0336675644, 0.000573158264, 2.98486249e-008, -1.00000477, 0.999999404, 2.69930268e-007, 0.000581979752, 2.69947151e-007, -1.00000715, -2.96909235e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0733351931, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336524963, 0.168228149, -0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168094635, -0.100999832, 0.0336675644, 0.000573605299, -2.98232479e-008, -1.00000477, -0.999999523, -1.49107777e-007, -0.000582337379, -1.49089374e-007, 1.00000715, -2.99106517e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168212891, -0.403669357, 0.0336675644, 0.000573247671, 1.25020723e-011, -1.00000477, -0.999999523, -4.99328877e-013, -0.000582069159, -5.06891404e-013, 1.00000715, 1.20223718e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403766632, -0.167980194, 0.0336694717, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370157242, 0.235637665, -0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168094635, -0.100999832, 0.0336675644, 0.000573605299, -2.98232479e-008, -1.00000477, -0.999999523, -1.49107777e-007, -0.000582337379, -1.49089374e-007, 1.00000715, -2.99106517e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0733351931, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336526871, 0.168230057, -0.0336675644, -0.999997497, -5.06466397e-013, -9.89437103e-006, -1.07288361e-006, -1.2501793e-011, 1.0000093, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370145798, 0.101079941, 0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168149948, -0.100921631, 0.0336675644, -0.000573158264, 3.10669641e-008, 1.00000477, -0.999999404, -2.23650019e-007, -0.000581979752, 2.23630025e-007, -1.00000715, 3.11977928e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0686255917, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -8.01086426e-005, 0.0336675644, 0.999997497, 5.06527112e-013, 9.92417336e-006, 1.1920929e-006, 1.2501793e-011, -1.00000918, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.438665539, 0.0968831778, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168151855, -0.100923538, 0.0336675644, -0.000573396683, -1.25020758e-011, 1.00000477, -0.999999464, -4.9939046e-013, -0.000582128763, 5.06891404e-013, -1.00000715, -1.20223718e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.167991638, -0.100963593, 0.0336675644, -0.000573605299, -2.9848632e-008, 1.00000477, 0.999999523, -7.45609015e-008, 0.000582337379, 7.45433866e-008, 1.00000715, 2.98913676e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.167991638, -0.100963593, 0.0336675644, -0.000573605299, -2.9848632e-008, 1.00000477, 0.999999523, -7.45609015e-008, 0.000582337379, 7.45433866e-008, 1.00000715, 2.98913676e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0733351931, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370128632, -0.235393524, 0.0336685181, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336503983, 0.167989731, -0.0336675644, 0.999997616, 5.06466397e-013, 9.983778e-006, 1.1920929e-006, 1.25017921e-011, -1.00000918, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370128632, -0.235393524, -0.0336666107, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.01086426e-005, 2.0980835e-005, -0.0336675644, 0.000573247671, 2.39958325e-007, -1.00000477, -0.999999523, 6.26174312e-008, -0.000582069159, 6.24795931e-008, 1.00000715, 2.3999371e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.145997554, 0.0995743647, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336503983, 0.167989731, 0.0336675644, 0.999997616, 5.06466397e-013, 9.983778e-006, 1.1920929e-006, 1.25017921e-011, -1.00000918, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168420792, 0.336431503, 0.0336675644, 0.000573247671, 1.25020723e-011, -1.00000477, -0.999999523, -4.99328877e-013, -0.000582069159, -5.06891404e-013, 1.00000715, 1.20223718e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336526871, 0.168230057, 0.0336675644, -0.999997497, -5.06466397e-013, -9.89437103e-006, -1.07288361e-006, -1.2501793e-011, 1.0000093, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168464661, 0.403690338, 0.0336675644, 0.000573247671, 1.25020723e-011, -1.00000477, -0.999999523, -4.99328877e-013, -0.000582069159, -5.06891404e-013, 1.00000715, 1.20223718e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168420792, 0.336431503, -0.0336675644, 0.000573247671, 1.25020723e-011, -1.00000477, -0.999999523, -4.99328877e-013, -0.000582069159, -5.06891404e-013, 1.00000715, 1.20223718e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336524963, 0.168228149, 0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168464661, 0.403690338, -0.0336675644, 0.000573247671, 1.25020723e-011, -1.00000477, -0.999999523, -4.99328877e-013, -0.000582069159, -5.06891404e-013, 1.00000715, 1.20223718e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.40378952, 0.168237686, 0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403787613, -0.168233871, 0.0336675644, 0.999997616, 5.06466397e-013, 9.983778e-006, 1.1920929e-006, 1.25017921e-011, -1.00000918, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370157242, 0.235637665, 0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370100021, -0.100845337, -0.0336666107, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168212891, -0.403669357, -0.0336675644, 0.000573247671, 1.25020723e-011, -1.00000477, -0.999999523, -4.99328877e-013, -0.000582069159, -5.06891404e-013, 1.00000715, 1.20223718e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.336503983, -0.167987823, -0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403766632, -0.167980194, -0.033665657, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168182373, -0.336408615, -0.0336675644, 0.000573247671, 1.25020723e-011, -1.00000477, -0.999999523, -4.99328877e-013, -0.000582069159, -5.06891404e-013, 1.00000715, 1.20223718e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.336503983, -0.167987823, 0.0336675644, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.01086426e-005, 2.0980835e-005, 0.0336675644, 0.000573247671, 2.39958325e-007, -1.00000477, -0.999999523, 6.26174312e-008, -0.000582069159, 6.24795931e-008, 1.00000715, 2.3999371e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.145997554, 0.0995743647, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -8.01086426e-005, -0.0336675644, 0.999997497, 5.06527112e-013, 9.92417336e-006, 1.1920929e-006, 1.2501793e-011, -1.00000918, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.438665539, 0.0968831778, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168182373, -0.336408615, 0.0336675644, 0.000573247671, 1.25020723e-011, -1.00000477, -0.999999523, -4.99328877e-013, -0.000582069159, -5.06891404e-013, 1.00000715, 1.20223718e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370100021, -0.100845337, 0.0336685181, -0.999999881, 1.13307874e-006, -8.82148743e-006, -4.529953e-006, -6.55632992e-010, 1.00000679, 1.13307624e-006, 1.00000358, 6.65409061e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -8.01086426e-005, -0.0336675644, 0.999997497, 5.06527112e-013, 9.92417336e-006, 1.1920929e-006, 1.2501793e-011, -1.00000918, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403679937, 0.0773719698, 0.0881367922))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403764725, -0.167982101, -0.0336675644, -0.999997497, -5.06466397e-013, -9.89437103e-006, -1.07288361e-006, -1.2501793e-011, 1.0000093, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -8.01086426e-005, 0.0336675644, 0.999997497, 5.06527112e-013, 9.92417336e-006, 1.1920929e-006, 1.2501793e-011, -1.00000918, -5.06887067e-013, 1.00000715, 1.20223779e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403679937, 0.0773719698, 0.0881367922))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))

Handle3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.874639988, 0.200000003, 0.538240016))
Handle3weld=weld(m,Character["Right Arm"],Handle3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.17321014, 0.166988373, -0.376420975, -2.18565339e-011, 0.70731312, -0.706900716, 1, 1.98822694e-011, -1.10249414e-011, 6.25667443e-012, -0.706900656, -0.70731318))
HitboxC=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxC",Vector3.new(1.0092001, 0.201839983, 0.672799945))
HitboxCweld=weld(m,Handle3,HitboxC,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.00543213e-005, 0, -2.28881836e-005, 1.00000072, 3.8378762e-013, 7.48038292e-006, -3.83802365e-013, 1, 2.56739074e-016, -7.03334808e-006, -3.45209972e-016, 1.00000083))
mesh("BlockMesh",HitboxC,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0092001, 0.200000003, 0.672799945))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.96453857e-005, 0, 0, 1.00000131, 3.83072046e-013, 7.56978989e-006, -3.83100669e-013, 1, -3.73832909e-016, -6.67572021e-006, 2.01227923e-016, 1.00000143))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.302759975, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.403652191, 0.168144226, -0.0336685181, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370010376, 0.100990295, -0.0336685181, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168167114, -0.100755692, 0.0336675644, 0.000573158264, 2.98486178e-008, -1.00000477, 0.999999404, 2.69930268e-007, 0.000582277775, 2.69947122e-007, -1.00000715, -2.96908667e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403900146, -0.168071747, 0.0336675644, -0.999997497, -5.06629461e-013, -1.00135803e-005, -1.01327896e-006, -1.25000375e-011, 1.00000918, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403652191, -0.168144226, -0.0336675644, 0.999997497, 5.06629461e-013, 1.01625919e-005, 1.1920929e-006, 1.25000392e-011, -1.00000906, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168167114, -0.100755692, 0.0336675644, 0.000573158264, 2.98486178e-008, -1.00000477, 0.999999404, 2.69930268e-007, 0.000582277775, 2.69947122e-007, -1.00000715, -2.96908667e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0733351931, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336391449, 0.168142319, -0.0336685181, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.16799736, -0.101131439, 0.0336675644, 0.000573456287, -2.9823255e-008, -1.00000453, -0.999999404, -1.49107777e-007, -0.000582545996, -1.4908936e-007, 1.00000715, -2.99107121e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168302536, -0.403802872, 0.0336675644, 0.000573188066, 1.25003176e-011, -1.00000453, -0.999999404, -4.99492808e-013, -0.000582367182, -5.07092632e-013, 1.00000715, 1.20206076e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403903961, -0.168067932, 0.0336685181, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.37002182, 0.235544205, -0.0336685181, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.16799736, -0.101131439, 0.0336675644, 0.000573456287, -2.9823255e-008, -1.00000453, -0.999999404, -1.49107777e-007, -0.000582545996, -1.4908936e-007, 1.00000715, -2.99107121e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0733351931, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336391449, 0.168138504, -0.0336675644, -0.999997497, -5.06629461e-013, -1.00135803e-005, -1.01327896e-006, -1.25000375e-011, 1.00000918, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.370010376, 0.100990295, 0.0336675644, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168243408, -0.101055145, 0.0336675644, -0.000573158264, 3.10669712e-008, 1.00000477, -0.999999404, -2.23650019e-007, -0.000582277775, 2.23630025e-007, -1.00000715, 3.11978496e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0686255917, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000110626221, 1.14440918e-005, 0.0336675644, 0.999997377, 5.06689309e-013, 1.01029873e-005, 1.1920929e-006, 1.25000392e-011, -1.00000906, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.438665539, 0.0968831778, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168243408, -0.101053238, 0.0336675644, -0.000573307276, -1.25003194e-011, 1.00000453, -0.999999404, -4.99556126e-013, -0.000582367182, 5.07092632e-013, -1.00000715, -1.20206076e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168081284, -0.100828171, 0.0336675644, -0.000573456287, -2.98486249e-008, 1.00000453, 0.999999404, -7.45609015e-008, 0.000582545996, 7.45433795e-008, 1.00000715, 2.98913676e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0834272057, 0.0659343898, 0.29401359))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168081284, -0.100828171, 0.0336675644, -0.000573456287, -2.98486249e-008, 1.00000453, 0.999999404, -7.45609015e-008, 0.000582545996, 7.45433795e-008, 1.00000715, 2.98913676e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111893941",Vector3.new(0, 0, 0),Vector3.new(0.0793904066, 0.0733351931, 0.287285566))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370262146, -0.23548317, 0.0336685181, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336639404, 0.168081284, -0.0336675644, 0.999997497, 5.06629461e-013, 1.01625919e-005, 1.1920929e-006, 1.25000392e-011, -1.00000906, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370262146, -0.23548317, -0.0336675644, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.33514404e-005, -0.000108718872, -0.0336675644, 0.000573188066, 2.39958325e-007, -1.00000453, -0.999999404, 6.26174312e-008, -0.000582367182, 6.24796286e-008, 1.00000715, 2.3999371e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.145997554, 0.0995743647, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336639404, 0.168081284, 0.0336675644, 0.999997497, 5.06629461e-013, 1.01625919e-005, 1.1920929e-006, 1.25000392e-011, -1.00000906, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168329239, 0.336299896, 0.0336675644, 0.000573188066, 1.25003176e-011, -1.00000453, -0.999999404, -4.99492808e-013, -0.000582367182, -5.07092632e-013, 1.00000715, 1.20206076e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336391449, 0.168138504, 0.0336675644, -0.999997497, -5.06629461e-013, -1.00135803e-005, -1.01327896e-006, -1.25000375e-011, 1.00000918, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168373108, 0.403558731, 0.0336675644, 0.000573188066, 1.25003176e-011, -1.00000453, -0.999999404, -4.99492808e-013, -0.000582367182, -5.07092632e-013, 1.00000715, 1.20206076e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168329239, 0.336299896, -0.0336675644, 0.000573188066, 1.25003176e-011, -1.00000453, -0.999999404, -4.99492808e-013, -0.000582367182, -5.07092632e-013, 1.00000715, 1.20206076e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.336391449, 0.168142319, 0.0336675644, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168373108, 0.403558731, -0.0336675644, 0.000573188066, 1.25003176e-011, -1.00000453, -0.999999404, -4.99492808e-013, -0.000582367182, -5.07092632e-013, 1.00000715, 1.20206076e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.403652191, 0.168144226, 0.0336675644, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403652191, -0.168144226, 0.0336675644, 0.999997497, 5.06629461e-013, 1.01625919e-005, 1.1920929e-006, 1.25000392e-011, -1.00000906, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.37002182, 0.235544205, 0.0336675644, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370235443, -0.100938797, -0.0336675644, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168302536, -0.403802872, -0.0336675644, 0.000573188066, 1.25003176e-011, -1.00000453, -0.999999404, -4.99492808e-013, -0.000582367182, -5.07092632e-013, 1.00000715, 1.20206076e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.336641312, -0.168083191, -0.0336675644, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403903961, -0.168067932, -0.0336675644, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168273926, -0.336544037, -0.0336675644, 0.000573188066, 1.25003176e-011, -1.00000453, -0.999999404, -4.99492808e-013, -0.000582367182, -5.07092632e-013, 1.00000715, 1.20206076e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.336641312, -0.168083191, 0.0336685181, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.33514404e-005, -0.000108718872, 0.0336675644, 0.000573188066, 2.39958325e-007, -1.00000453, -0.999999404, 6.26174312e-008, -0.000582367182, 6.24796286e-008, 1.00000715, 2.3999371e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.145997554, 0.0995743647, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000110626221, 1.14440918e-005, -0.0336675644, 0.999997377, 5.06689309e-013, 1.01029873e-005, 1.1920929e-006, 1.25000392e-011, -1.00000906, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.438665539, 0.0968831778, 0.0686255991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168273926, -0.336544037, 0.0336675644, 0.000573188066, 1.25003176e-011, -1.00000453, -0.999999404, -4.99492808e-013, -0.000582367182, -5.07092632e-013, 1.00000715, 1.20206076e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370235443, -0.100938797, 0.0336685181, -0.999999762, 1.13307874e-006, -9.08970833e-006, -4.35113907e-006, -6.55631216e-010, 1.00000668, 1.13307613e-006, 1.00000358, 6.65693278e-010))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0672799945, 0.0679528043, 0.0679528043))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000110626221, 1.14440918e-005, -0.0336675644, 0.999997377, 5.06689309e-013, 1.01029873e-005, 1.1920929e-006, 1.25000392e-011, -1.00000906, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403679937, 0.0773719698, 0.0881367922))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403900146, -0.168071747, -0.0336675644, -0.999997497, -5.06629461e-013, -1.00135803e-005, -1.01327896e-006, -1.25000375e-011, 1.00000918, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0242207684, 0.0511327684, 0.0235479958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000110626221, 1.14440918e-005, 0.0336675644, 0.999997377, 5.06689309e-013, 1.01029873e-005, 1.1920929e-006, 1.25000392e-011, -1.00000906, -5.07090897e-013, 1.00000715, 1.20206128e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403679937, 0.0773719698, 0.0881367922))
mesh("BlockMesh",Handle3,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))

Throwing = false

function attackone()
attack = true
Throwing = true
local con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,5),"Normal",RootPart,.2,1) end) 
local con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,5),"Normal",RootPart,.2,1) end) 
local con3=HitboxC.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(.9, 0.5, -.5) * angles(math.rad(0), math.rad(130), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-.8, 0.3, -.5) * angles(math.rad(60), math.rad(11), math.rad(70)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(0)),.2)
Handle1weld.C0=clerp(Handle1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle3weld.C0=clerp(Handle3weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
so("http://roblox.com/asset/?id=10209640",RightArm,1,2) 
coroutine.resume(coroutine.create(function()
while Throwing == true do
wait()
so("http://roblox.com/asset/?id=10209640",Handle1,0.4,3) 
so("http://roblox.com/asset/?id=10209640",Handle2,0.4,3) 
so("http://roblox.com/asset/?id=10209640",Handle3,0.4,3) 
end
end))
for i = 0,1,0.02 do
swait()
--so("http://roblox.com/asset/?id=10209640",RightArm,1,3) 
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handle1weld.C0=clerp(Handle1weld.C0,cf(0,-10,-2)*angles(5+30*i,0,0),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(0,-10,-2)*angles(5+30*i,0,0),.2)
Handle3weld.C0=clerp(Handle3weld.C0,cf(0,-10,-2)*angles(5+30*i,0,0),.2)
end
con1:disconnect()
con2:disconnect()
con3:disconnect()
attack = false
Throwing = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 1
attackone()
end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	
end)

local string1=part(3,m,"SmoothPlastic",0,0.8,BrickColor.new("White"),"String1",vt(1,1,1))
local stringmsh1=mesh("CylinderMesh",string1,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld1=weld(string1,string1,Handle1,euler(0,0,0),cf(0,0,0))

local string2=part(3,m,"SmoothPlastic",0,0.8,BrickColor.new("White"),"String2",vt(1,1,1))
local stringmsh2=mesh("CylinderMesh",string2,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld2=weld(string2,string2,Handle2,euler(0,0,0),cf(0,0,0))

local string3=part(3,m,"SmoothPlastic",0,0.8,BrickColor.new("White"),"String2",vt(1,1,1))
local stringmsh3=mesh("CylinderMesh",string3,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld3=weld(string3,string3,Handle3,euler(0,0,0),cf(0,0,0))

local strmdl = "Arrow"
coroutine.resume(coroutine.create(function()
repeat
wait(-10)

local top = RightArm.CFrame*cf(0,-1,0)
local bottom = Handle1.CFrame
local bottom2 = Handle2.CFrame
local bottom3 = Handle3.CFrame
local oristrpos
local oristrpos2
local oristrpos3

if strmdl == "Bow" then
oristrpos = CFrame.new((top.p+bottom.p)/2)
oristrpos2 = CFrame.new((top.p+bottom.p)/2)
oristrpos3 = CFrame.new((top.p+bottom.p)/2)
elseif strmdl == "Arrow" then
oristrpos = Handle1.CFrame
oristrpos2 = Handle2.CFrame
oristrpos3 = Handle3.CFrame
end

local mg1 = (top.p - oristrpos.p).magnitude
local mg2 = (bottom.p - oristrpos.p).magnitude
string1.Size = Vector3.new(0.2,mg1,0.2)
string1.Anchored=true
string1.CFrame = CFrame.new((top.p+oristrpos.p)/2,oristrpos.p) * CFrame.Angles(math.rad(90),0,0)

local mg1B = (top.p - oristrpos2.p).magnitude
local mg2B = (bottom2.p - oristrpos2.p).magnitude
string2.Size = Vector3.new(0.2,mg1B,0.2)
string2.Anchored=true
string2.CFrame = CFrame.new((top.p+oristrpos2.p)/2,oristrpos2.p) * CFrame.Angles(math.rad(90),0,0)

local mg1C = (top.p - oristrpos3.p).magnitude
local mg2C = (bottom3.p - oristrpos3.p).magnitude
string3.Size = Vector3.new(0.2,mg1C,0.2)
string3.Anchored=true
string3.CFrame = CFrame.new((top.p+oristrpos3.p)/2,oristrpos3.p) * CFrame.Angles(math.rad(90),0,0)
until false
end))


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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handle1weld.C0=clerp(Handle1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle3weld.C0=clerp(Handle3weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(10)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-10)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(20),math.rad(90),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-30),math.rad(-90),math.rad(0)),.2)
Handle1weld.C0=clerp(Handle1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle3weld.C0=clerp(Handle3weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(.9, 0.5, -.5) * angles(math.rad(80), math.rad(0), math.rad(-50)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-.8, 0.3, -.5) * angles(math.rad(60), math.rad(11), math.rad(70)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handle1weld.C0=clerp(Handle1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle3weld.C0=clerp(Handle3weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(50)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(2),math.rad(-50)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(.9, 0.5, -.5) * angles(math.rad(80), math.rad(0), math.rad(-50)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-.8, 0.3, -.5) * angles(math.rad(60), math.rad(11), math.rad(70)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handle1weld.C0=clerp(Handle1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle3weld.C0=clerp(Handle3weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handle1weld.C0=clerp(Handle1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle3weld.C0=clerp(Handle3weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
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