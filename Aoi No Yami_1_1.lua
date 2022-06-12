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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.800000012, 3.5999999, 0.800000012))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00978088379, 0.656887054, 1.14379132, -0.999998093, 0.00253854319, -2.98064613e-008, -2.98062979e-008, 8.94229968e-011, 1, 0.00253850338, 0.999997973, -1.37580555e-011))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 0.800000012, 0.399999976))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.2951355, -2.29264069, 2.06851101, -0.70664072, 0.683012187, 0.184808537, -0.707570016, -0.683011293, -0.181221515, 0.00244987407, -0.258822918, 0.965922773))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.80400002, 0.800000012, 1.36199999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.980000019, 0.400000006, 0.829999983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0090675354, -0.399864197, -0.00609540939, 0.999998093, -9.84101689e-013, -0.00253850338, 7.63833441e-013, 1, -8.94248287e-011, 0.00253854343, 8.94238988e-011, 0.999998093))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175476074, -0.668507576, 3.84399414, 0.999991536, 1.10027628e-007, -0.00253868476, -0.00245218934, 0.258818686, -0.965922773, 0.000656952092, 0.965919077, 0.258819729))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.200000003, 0.200000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00177383423, 0.301001668, 3.09999084, 0.999991536, -1.4007054e-006, -0.00253856136, -0.0025384964, -1.49101027e-007, -0.999997199, 1.40017289e-006, 0.999993384, -2.12260886e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 0.800000012, 0.399999976))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.25549316, -2.25797272, 1.87240982, 0.706640601, 0.683012187, -0.184808478, 0.707569897, -0.683011293, 0.181221485, -0.00244979863, -0.258822918, -0.965922713))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.80400002, 0.800000012, 1.36199999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.399999917, 1.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -3.19146729, -1.07241821, -0.999997497, 6.7068413e-009, 0.00253847218, 0.000657052209, -0.965925395, 0.258818537, 0.00245200517, 0.258818954, 0.96592319))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.980000019, 0.400000006, 0.829999983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0090675354, 0.40007019, -0.00609540939, 0.999997973, -9.84101689e-013, -0.00253850315, 7.63833441e-013, 0.999999881, -8.94248148e-011, 0.00253854343, 8.94238988e-011, 0.999998093))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.599999905, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0086517334, 2.09998322, 0.000371813774, 1.00000322, 1.17150734e-011, 0.000686014537, -1.1713297e-011, 1, 2.41529869e-011, -0.000685904175, -2.41570861e-011, 1.00000322))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.200000003, 0.200000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00177383423, 0.30100286, -2.90000153, -0.999991417, 1.32619959e-006, 0.00253841188, -0.0025385858, 1.4892214e-007, -0.999997199, -1.31182526e-006, -0.999993265, -2.05197622e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.399999917, 1.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00177001953, -3.24401093, -1.26851368, 0.999997735, 6.63194086e-008, -0.00253853458, -0.000656968332, -0.965925395, -0.258818537, -0.00245199562, 0.258818954, -0.965923369))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.799999952, 0.800000012, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.24404907, 0.00176620483, 2.06851101, 0.000657034281, 0.965924621, 0.258822441, -0.999997914, 7.07726201e-007, 0.00253604189, 0.0024494431, -0.258823037, 0.965922832))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.616000056, 0.593999982, 1.36199999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175476074, -1.86851025, 3.84400558, 0.999991536, 1.10027628e-007, -0.00253868476, -0.00245218934, 0.258818686, -0.965922773, 0.000656952092, 0.965919077, 0.258819729))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175476074, -1.26852417, 3.84400177, 0.999991536, 1.10027628e-007, -0.00253868476, -0.00245218934, 0.258818686, -0.965922773, 0.000656952092, 0.965919077, 0.258819729))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.799999893, 1.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00177001953, -3.24401093, -1.26851368, 0.999997735, 6.63194086e-008, -0.00253853458, -0.000656968332, -0.965925395, -0.258818537, -0.00245199562, 0.258818954, -0.965923369))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.799999893, 2.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000328063965, 2.99998474, 0.100373149, 1.00000119, 1.03472786e-011, 0.000678057317, -1.03561604e-011, 1, 2.38740295e-011, -0.00067801727, -2.38796205e-011, 1.00000119))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000255584717, 3.49998474, 0.000342130661, 1.00000119, 1.03490549e-011, 0.000589797972, -1.03561604e-011, 1, 2.07657936e-011, -0.000589757925, -2.07704687e-011, 1.00000119))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -0.668564796, -2.64397049, -0.999991536, 1.49007832e-007, 0.00253771944, -0.00245122844, 0.258800924, -0.96592766, -0.000656907854, -0.965923607, -0.258801997))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.19999998807907,"Navy blue","Part",Vector3.new(0.800000012, 0.599999905, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000328063965, 2.09998322, 0.0003708601, 1.00000358, 1.03526077e-011, 0.000683508348, -1.03490549e-011, 1, 2.40659801e-011, -0.000683391467, -2.40689066e-011, 1.00000358))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00101470947, 1.50983429, 0.000193715096, 1.00000095, 2.98064009e-008, -0.000846923911, 2.98064471e-008, -1, 4.59674659e-012, -0.000846963958, -2.9841872e-011, -1.00000095))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.940000057, 1.43400002, 0.988000035))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.910000026, 1.5999999, 0.819999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00496673584, 0.000102996826, -0.00546550751, 0.999998093, -9.84101689e-013, -0.00253850338, 7.63833441e-013, 1, -8.94248287e-011, 0.00253854343, 8.94238988e-011, 0.999998093))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.200000003, 0.200000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00176620483, 0.299010992, 3.09999084, -0.999991536, -1.46031755e-006, 0.00253854645, 0.00253852643, -1.48922183e-007, 0.999997258, -1.45978549e-006, 0.999993384, 2.12233388e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.400000006, 0.400000036, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00101470947, -3.79997253, 0.000193715096, 1.00000095, 2.98064009e-008, -0.000846923911, 2.98064471e-008, -1, 4.59674659e-012, -0.000846963958, -2.9841872e-011, -1.00000095))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.60800004, 0.241999984, 0.606000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.800000012, 0.200000003, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00032043457, 2.49998474, 0.000371456146, 1.00000381, 1.03526077e-011, 0.00068351021, -1.03490549e-011, 1, 2.40660495e-011, -0.00068339007, -2.40688372e-011, 1.00000381))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.600000024, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0102539063, 3.50998306, 0.000287055969, 1.00000119, 1.03490549e-011, 0.000534346327, -1.03526077e-011, 1, 1.88129321e-011, -0.00053430628, -1.88170521e-011, 1.00000119))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.399999917, 0.799999893))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00184249878, 2.99998856, -0.801000834, 0.999998212, -9.80548975e-013, -0.00248575397, 7.67386155e-013, 1, -8.7567141e-011, 0.00248579402, 8.75662667e-011, 0.999998212))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.399999917, 0.999999881))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00172424316, 2.99998856, 0.899011493, 0.999998152, -9.80548975e-013, -0.00250685378, 7.67386155e-013, 1, -8.83102202e-011, 0.00250689383, 8.83093182e-011, 0.999998152))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.399999976, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -1.86856842, -2.64398575, -0.999991536, 1.49007832e-007, 0.00253771944, -0.00245122844, 0.258800924, -0.96592766, -0.000656907854, -0.965923607, -0.258801997))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -1.26854801, -2.64397812, -0.999991536, 1.49007832e-007, 0.00253771944, -0.00245122844, 0.258800924, -0.96592766, -0.000656907854, -0.965923607, -0.258801997))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.910000026, 0.200000003, 0.819999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00489807129, -1.69981766, -0.0052703619, 0.999998152, 1.39959155e-011, -0.00251095998, -1.42090784e-011, 1, -8.84208123e-011, 0.00251100003, 8.84575052e-011, 0.999998152))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.200000003, 0.200000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00176620483, 0.299011946, -2.90000153, 0.999991536, 1.4007129e-006, -0.00253842724, 0.00253855623, 1.49100984e-007, 0.999997258, 1.3565367e-006, -0.999993265, 2.05262978e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175857544, -0.472471237, -2.59142685, 0.999991477, 2.08620037e-007, -0.00253769686, 0.00245122635, 0.258800924, 0.965927482, 0.000656995224, -0.965923607, 0.258801967))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.799999893, 1.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00177001953, -3.19146729, -1.07242203, -0.999997497, 6.7068413e-009, 0.00253847218, 0.000657052209, -0.965925395, 0.258818537, 0.00245200517, 0.258818954, 0.96592319))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.799999952, 0.800000012, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.19150543, -0.00177383423, 1.87240982, -0.000657099125, 0.965924621, -0.258822352, 0.999997795, 7.67338804e-007, -0.00253604399, -0.00244950107, -0.258823037, -0.965922952))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.616000056, 0.593999982, 1.36199999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -0.472427368, 3.79145432, -0.999991536, 5.04154229e-008, 0.00253869547, 0.00245207804, 0.258818686, 0.965922534, -0.000657055061, 0.965919077, -0.258819669))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.399999976, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175476074, -1.67246628, -2.59144211, 0.999991477, 2.08620037e-007, -0.00253769686, 0.00245122635, 0.258800924, 0.965927482, 0.000656995224, -0.965923607, 0.258801967))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175857544, -1.07245636, -2.59143829, 0.999991477, 2.08620037e-007, -0.00253769686, 0.00245122635, 0.258800924, 0.965927482, 0.000656995224, -0.965923607, 0.258801967))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -1.67240334, 3.79145813, -0.999991536, 5.04154229e-008, 0.00253869547, 0.00245207804, 0.258818686, 0.965922534, -0.000657055061, 0.965919077, -0.258819669))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00177001953, -1.07242966, 3.79145813, -0.999991536, 5.04154229e-008, 0.00253869547, 0.00245207804, 0.258818686, 0.965922534, -0.000657055061, 0.965919077, -0.258819669))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.910000026, 0.200000003, 0.819999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00319671631, 1.69999313, -0.00432527065, 1.00000656, 1.07949205e-011, 5.30879479e-005, -1.07611697e-011, 1, 1.86495437e-012, -5.28909732e-005, -1.85864692e-012, 1.00000656))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.25999999, 0.200000003, 1.60000014))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00993728638, -2.69981766, -3.56435776e-005, 1.00000131, 1.3251622e-012, 2.64146365e-006, -1.31805677e-012, 1, 9.47592699e-014, -2.60141678e-006, -9.33706237e-014, 1.00000131))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0780000091, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.99999994, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00101470947, -2.98979568, 0.000195622444, 0.999992371, 2.98643101e-008, -0.00423007505, -2.99577536e-008, 0.999999702, -5.96182872e-008, 0.0042301151, 1.50410031e-008, 0.999992251))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.954000056, 0.361999989, 0.988000035))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.25999999, 0.200000003, 1.60000014))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00993728638, 2.69984818, -1.4424324e-005, 0.999988437, 5.97829199e-008, -0.00507963076, 5.97626766e-008, -0.999999702, 5.95426322e-008, -0.00507967174, -8.95721328e-008, -0.999988258))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0780000091, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(0.800000012, 1.79999983, 7.19999981))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00791168213, 2.89998627, 0.200349331, 1.00000167, 1.03490549e-011, 0.000589731848, -1.03561604e-011, 1, 2.07634691e-011, -0.000589691801, -2.0768132e-011, 1.00000167))

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