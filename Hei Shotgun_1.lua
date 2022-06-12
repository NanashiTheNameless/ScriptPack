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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1.52991915, 0.437119901, 0.393407792))
handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(0.629271507, 0.364027023, -0.03515625, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Barrel",Vector3.new(0.437119901, 0.200000003, 0.200000003))
Barrelweld=weld(m,Handle,Barrel,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-1.15781593, -6.02580214, -0.00540161133, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("BlockMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.546399832, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.327839881, 0.218561411, 0.655679882))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(0.674293518, -0.25077343, -0.0163497925, 3.09999959e-005, 0.99867487, -0.0514639914, 1.15483971e-013, -0.0514639877, -0.99867487, -1, 3.09589159e-005, -1.59538365e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.673164606, 0.5168944, 1.37037098))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.688463688, 0.764960289, 0.672071636))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.922239304, -0.0157063007, -0.00814819336, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(0.0218429565, -1.32717657, -1.50214005, 1, 0, 0, 0, -0.998670518, 0.0515479743, 0, -0.0515479706, -0.998670518))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.163919926, 0.163919985, 0.163919985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.360623717, 0.546400249, 0.672071636))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-1.08684444, -0.670524716, -0.00813293457, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.688463688, 0.546400249, 0.672071636))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.922865868, -0.669787288, -0.00814056396, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.158159256, -1.64156067, -0.0136642456, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.152425766, -1.86255729, -0.0136566162, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.437119901, 0.546400249, 0.453511685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.616119385, -5.14775944, -0.00816345215, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.437119901, 1.09280038, 0.453511685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.616076469, -3.23572612, -0.00816345215, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.437119901, 3.3876791, 0.453511685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-1.04763794, -4.38280678, -0.00813293457, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.437119901, 1.0927999, 0.453511685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.616199493, -4.32815838, -0.00814819336, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.14601326, -2.19617081, -0.0136642456, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.151603699, -2.30627894, -0.0136566162, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.144908905, -2.42245507, -0.0136566162, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.146910667, -2.08363485, -0.0136642456, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.140681267, -1.97506142, -0.0136642456, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.437119901, 0.200000003, 0.453511685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.506929398, -3.83603525, -0.00816345215, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.546399832, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.437119901, 0.200000003, 0.453511685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.506917953, -4.8194356, -0.00815582275, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.546399832, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.688463688, 1.74848032, 0.672071636))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.928315163, -1.81715894, -0.00814819336, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.155520439, -1.54852414, -0.0136566162, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.14614296, -1.75318325, -0.0136642456, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.535471082, 1.74847984, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.752339363, -1.81852794, -0.289558411, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.35515976, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-1.19827843, -2.63351822, -0.120140076, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.546399832, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.535471082, 1.74847984, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.750272751, 1.82602382, -0.278686523, 3.70000052e-005, -0.0515360087, -0.998671114, 4.30000036e-005, 0.998671114, -0.0515360087, 1, -4.10360335e-005, 3.91668837e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.35515976, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-1.19827175, -2.63358903, 0.0984115601, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.546399832, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.150168419, -1.44049859, -0.0136642456, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(3.05983829, 0.655679941, 0.655679882))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(1.16170859, -0.692814827, -0.010887146, 3.09999959e-005, 0.99867487, -0.0514639914, 1.15483971e-013, -0.0514639877, -0.99867487, -1, 3.09589159e-005, -1.59538365e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.426191092, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.161856651, -2.53356171, -0.0136642456, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(3.49695778, 0.218559951, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-1.68596125, -0.693488121, -0.0137176514, 3.2999993e-005, 0.977953732, 0.208821952, 0, 0.208821952, -0.977953732, -1, 3.22724627e-005, 6.89112312e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.327841341, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(0.736662388, 0.0726900101, -0.0710296631, 2.90000116e-005, 0.89058131, 0.45482415, 0, 0.45482415, -0.89058131, -1, 2.58268665e-005, 1.31899051e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.546399832, 1, 0.546399951))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.426190972, 1.20207977, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(0.0109329224, -0.889550328, -1.21264458, 1, 0, 0, 0, -0.998670518, 0.0515479743, 0, -0.0515479706, -0.998670518))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Cyan","Part",Vector3.new(0.207631081, 0.200000003, 0.218559965))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(0.0109176636, -1.32551646, -1.49111557, 1, 0, 0, 0, -0.998670518, 0.0515479743, 0, -0.0515479706, -0.998670518))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.546399832, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.218559965))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.147537231, -1.32582402, -1.49114323, 1, 0, 0, 0, -0.998670518, 0.0515479743, 0, -0.0515479706, -0.998670518))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.546399832, 0.546399832, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.426190972, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(0.0109176636, -1.32528722, -1.32722473, 1, 0, 0, 0, -0.998670518, 0.0515479743, 0, -0.0515479706, -0.998670518))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.546399832, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.218559965))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(0.169364929, -1.32592452, -1.49102116, 1, 0, 0, 0, -0.998670518, 0.0515479743, 0, -0.0515479706, -0.998670518))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.546399832, 0.546399832, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.644751012, 0.764959991, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.721894264, 0.00661528111, 0.289634705, 3.70000052e-005, -0.0515360087, -0.998671114, 4.30000036e-005, 0.998671114, -0.0515360087, 1, -4.10360335e-005, 3.91668837e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.426190972, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(0.0109176636, -1.32529283, -1.65517044, 1, 0, 0, 0, -0.998670518, 0.0515479743, 0, -0.0515479706, -0.998670518))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.546399832, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.644751012, 0.764959991, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.721923828, 0.00666630268, -0.289558411, 3.70000052e-005, -0.0515360087, -0.998671114, 4.30000036e-005, 0.998671114, -0.0515360087, 1, -4.10360335e-005, 3.91668837e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.546399891))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(3.10355067, 0.21855998, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-1.9132967, -1.13005733, -0.0137252808, 3.09999959e-005, 0.99867487, -0.0514639914, 1.15483971e-013, -0.0514639877, -0.99867487, -1, 3.09589159e-005, -1.59538365e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.972590864, 0.218559951, 0.639287293))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1.89999973e-005, 0.742548943, 0.669791937, 0, 0.669791937, -0.742548943, -1, -1.41084256e-005, -1.27260428e-005),CFrame.new(-0.542619705, 2.7044816, -0.0136413574, -5.0000006e-005, -0.0514970087, -0.998673141, 0, -0.998673141, 0.0514970087, -1, 2.57485067e-006, 4.99336638e-005))

HandleWing=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleWing",Vector3.new(0.400000006, 0.400000036, 0.400000006))
HandleWingweld=weld(m,Character["Torso"],HandleWing,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00980377197, -0.0303750038, 0.719708443, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.30004406, 0.0999250412, 0.89994812, 3.00647334e-005, 1, 4.83130862e-007, -6.15131939e-005, -4.81282768e-007, 1, 1, -3.00644715e-005, 6.15130994e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.300045013, 0.0999641418, 0.900047302, 3.10006981e-005, -1, -6.15159661e-005, -4.81294194e-007, -6.15159806e-005, 1, -1, -3.100096e-005, -4.83128701e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.299965858, 0.0999107361, 0.899978638, 3.00647334e-005, 1, 4.83130862e-007, -6.15131939e-005, -4.81282768e-007, 1, 1, -3.00644715e-005, 6.15130994e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.299968958, 0.0999965668, 0.900039673, 3.10006981e-005, -1, -6.15159661e-005, -4.81294194e-007, -6.15159806e-005, 1, -1, -3.100096e-005, -4.83128701e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.89996171, 0.100031853, 0.900054932, 3.10006981e-005, -1, -6.15159661e-005, -4.81294194e-007, -6.15159806e-005, 1, -1, -3.100096e-005, -4.83128701e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.899968386, 0.0999345779, 0.900001526, 3.00647334e-005, 1, 4.83130862e-007, -6.15131939e-005, -4.81282768e-007, 1, 1, -3.00644715e-005, 6.15130994e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.90003705, 0.0999240875, 0.89994812, 3.00647334e-005, 1, 4.83130862e-007, -6.15131939e-005, -4.81282768e-007, 1, 1, -3.00644715e-005, 6.15130994e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.900043964, 0.0999336243, 0.899978638, 3.10006981e-005, -1, -6.15159661e-005, -4.81294194e-007, -6.15159806e-005, 1, -1, -3.100096e-005, -4.83128701e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.29624176, -0.200763702, -0.299974442, 0.707092822, 0.707120776, 1.71967458e-005, -0.707120836, 0.707093, -3.98719785e-005, -4.03540726e-005, 1.60330092e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-3.29620361, 0.199222565, -0.299955368, 0.707092822, 0.707120776, 1.71967458e-005, -0.707120836, 0.707093, -3.98719785e-005, -4.03540726e-005, 1.60330092e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(3.80000019, 2.4000001, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(2.04773331, -2.38196564, 0.299893379, -0.707119763, 0.707093954, -1.65147794e-005, 0.707093894, 0.707119823, 4.05551255e-005, 4.03542872e-005, 1.6999822e-005, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(1.45599985, 0.835999906, 0.429999948))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.49459839, -1.1664257, -0.299978256, 0.965935767, -0.25878185, 3.45790031e-005, 0.25878188, 0.965935826, -2.56825715e-005, -2.67549985e-005, 3.37561505e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(3.20000005, 1.79999995, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(2.99463654, -1.96639061, 0.299866676, -0.965935647, 0.258782327, -2.66135248e-005, 0.258782327, 0.965935647, 3.48299654e-005, 3.47204077e-005, 2.67563955e-005, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(1.85199988, 0.673999965, 0.429999948))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.54775238, -1.28196716, -0.299962044, 0.707121909, -0.707091928, 3.98714074e-005, 0.707091749, 0.707121849, -1.5834381e-005, -1.69976593e-005, 3.93895789e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-3.06266022, -0.380847931, -0.299927711, 0.965920448, 0.25883919, 2.68623189e-005, -0.25883919, 0.965920389, -3.38981408e-005, -3.47211098e-005, 2.57898828e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.06268311, -0.780864716, -0.299971581, 0.965920448, 0.25883919, 2.68623189e-005, -0.25883919, 0.965920389, -3.38981408e-005, -3.47211098e-005, 2.57898828e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(2.60000014, 1.4000001, 0.600000024))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(3.26268768, -1.38084984, 0.299843788, -0.965919197, -0.25884375, -3.48302128e-005, -0.25884375, 0.965919197, 2.66137904e-005, 2.67544292e-005, 3.47223468e-005, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(1.81599987, 0.921999931, 0.429999948))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.6946106, -0.866420746, -0.299965858, 0.965935767, -0.25878185, 3.45790031e-005, 0.25878188, 0.965935826, -2.56825715e-005, -2.67549985e-005, 3.37561505e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.99621582, -0.200775146, -0.299974442, 0.707092822, 0.707120776, 1.71967458e-005, -0.707120836, 0.707093, -3.98719785e-005, -4.03540726e-005, 1.60330092e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(3.20000005, 1.60000002, 0.600000024))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(3.79626465, -0.900665283, 0.299840927, -0.70706749, -0.707146227, -4.05557985e-005, -0.707146227, 0.70706749, 1.65151196e-005, 1.69971609e-005, 4.03561753e-005, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(1.71599984, 1.26399994, 0.429999948))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.49621582, 0.0992202759, -0.299964905, 0.707092822, 0.707120776, 1.71967458e-005, -0.707120836, 0.707093, -3.98719785e-005, -4.03540726e-005, 1.60330092e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.400000006, 0.399999797, 0.400000036))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.200040817, -8.39233398e-005, 0.599999666, -3.09981733e-005, -3.10031937e-005, 1, 1, -3.00642459e-005, 3.09971656e-005, 3.00635911e-005, 1, 3.1004125e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.447999984, 0.265999973, 0.412))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.699996948, 0.60003376, -0.0999851227, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.399999976, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.600028992, 0.899998426, -0.099943161, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.699981689, 0.599993467, -0.0999393463, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.400000006, 0.399999797, 0.400000036))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.200047493, 0.599997044, 6.86645508e-005, -5.39489811e-005, -4.36452538e-005, 1, -4.53297616e-007, 1, 4.36452283e-005, -1, -4.51240339e-007, -5.39489301e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.447999984, 0.610000014, 0.231999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.83633423, -0.870796204, 0.300080299, -0.70706749, -0.707146227, -4.05557985e-005, -0.707146227, 0.70706749, 1.65151196e-005, 1.69971609e-005, 4.03561753e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.800000012, 0.400000006))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-7.62939453e-006, 0.600003004, 4.29153442e-005, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.49460602, -0.766386032, -0.299931526, 0.965935767, -0.25878185, 3.45790031e-005, 0.25878188, 0.965935826, -2.56825715e-005, -2.67549985e-005, 3.37561505e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.700019836, 2.47955322e-005, -0.100001335, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.399999797, 0.800000012))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.200040817, -8.39233398e-005, 0.599999666, -3.09981733e-005, -3.10031937e-005, 1, 1, -3.00642459e-005, 3.09971656e-005, 3.00635911e-005, 1, 3.1004125e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.427999973, 0.265999973, 0.575999975))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.26269531, -0.480854034, -0.299972534, 0.965920448, 0.25883919, 2.68623189e-005, -0.25883919, 0.965920389, -3.38981408e-005, -3.47211098e-005, 2.57898828e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.399999976, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.599975586, 0.299989462, -0.0999555588, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.84772491, -0.881942749, -0.299947739, 0.707121909, -0.707091928, 3.98714074e-005, 0.707091749, 0.707121849, -1.5834381e-005, -1.69976593e-005, 3.93895789e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.19461823, -1.16641045, -0.299962044, 0.965935767, -0.25878185, 3.45790031e-005, 0.25878188, 0.965935826, -2.56825715e-005, -2.67549985e-005, 3.37561505e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.56270599, -0.780872345, -0.299994469, 0.965920448, 0.25883919, 2.68623189e-005, -0.25883919, 0.965920389, -3.38981408e-005, -3.47211098e-005, 2.57898828e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.399999976, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.600036621, 0.300027609, -0.0999889374, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.836280823, -1.27070999, 0.300045013, -0.70706749, -0.707146227, -4.05557985e-005, -0.707146227, 0.70706749, 1.65151196e-005, 1.69971609e-005, 4.03561753e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(3.80000019, 2.4000001, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(2.03636169, -2.37073898, -0.300144196, 0.707092822, 0.707120776, 1.71967458e-005, -0.707120836, 0.707093, -3.98719785e-005, -4.03540726e-005, 1.60330092e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(1.45599985, 0.835999906, 0.429999948))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.347717285, -1.28197479, -0.30000782, 0.707121909, -0.707091928, 3.98714074e-005, 0.707091749, 0.707121849, -1.5834381e-005, -1.69976593e-005, 3.93895789e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.400000006, 0.399999797, 0.400000036))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.199988365, 0, -0.600013256, -3.09981733e-005, -3.10031937e-005, 1, 1, -3.00642459e-005, 3.09971656e-005, 3.00635911e-005, 1, 3.1004125e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.447999984, 0.265999973, 0.412))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.79621124, -0.200801849, -0.299977303, 0.707092822, 0.707120776, 1.71967458e-005, -0.707120836, 0.707093, -3.98719785e-005, -4.03540726e-005, 1.60330092e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.76270294, -0.780849457, -0.299958229, 0.965920448, 0.25883919, 2.68623189e-005, -0.25883919, 0.965920389, -3.38981408e-005, -3.47211098e-005, 2.57898828e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.399999797, 0.800000012))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.199988365, 0, -0.600013256, -3.09981733e-005, -3.10031937e-005, 1, 1, -3.00642459e-005, 3.09971656e-005, 3.00635911e-005, 1, 3.1004125e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.427999973, 0.265999973, 0.575999975))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.994621277, -1.16645241, -0.2999897, 0.965935767, -0.25878185, 3.45790031e-005, 0.25878188, 0.965935826, -2.56825715e-005, -2.67549985e-005, 3.37561505e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.04772949, -0.981987, -0.29999733, 0.707121909, -0.707091928, 3.98714074e-005, 0.707091749, 0.707121849, -1.5834381e-005, -1.69976593e-005, 3.93895789e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(3.20000005, 1.79999995, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(2.97909546, -1.96242332, -0.300165176, 0.965920448, 0.25883919, 2.68623189e-005, -0.25883919, 0.965920389, -3.38981408e-005, -3.47211098e-005, 2.57898828e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(1.85199988, 0.673999965, 0.429999948))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.400000006, 0.399999797, 0.400000036))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.199979782, -0.600015879, 2.28881836e-005, -5.39489811e-005, -4.36452538e-005, 1, -4.53297616e-007, 1, 4.36452283e-005, -1, -4.51240339e-007, -5.39489301e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.447999984, 0.610000014, 0.231999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.33631897, -1.27073288, 0.300020218, -0.70706749, -0.707146227, -4.05557985e-005, -0.707146227, 0.70706749, 1.65151196e-005, 1.69971609e-005, 4.03561753e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.847732544, -1.28198242, -0.299990654, 0.707121909, -0.707091928, 3.98714074e-005, 0.707091749, 0.707121849, -1.5834381e-005, -1.69976593e-005, 3.93895789e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.399999976, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.600006104, 0.900032759, -0.0999727249, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.47909546, -1.16240501, 0.300043106, -0.965919197, -0.25884375, -3.48302128e-005, -0.25884375, 0.965919197, 2.66137904e-005, 2.67544292e-005, 3.47223468e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.74719238, -0.785173416, 0.300055504, -0.965935647, 0.258782327, -2.66135248e-005, 0.258782327, 0.965935647, 3.48299654e-005, 3.47204077e-005, 2.67563955e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.17910004, -1.16242409, 0.300059319, -0.965919197, -0.25884375, -3.48302128e-005, -0.25884375, 0.965919197, 2.66137904e-005, 2.67544292e-005, 3.47223468e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.48492432, 0.0878067017, 0.300058365, -0.707119763, 0.707093954, -1.65147794e-005, 0.707093894, 0.707119823, 4.05551255e-005, 4.03542872e-005, 1.6999822e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.28490829, -0.212181091, 0.300060272, -0.707119763, 0.707093954, -1.65147794e-005, 0.707093894, 0.707119823, 4.05551255e-005, 4.03542872e-005, 1.6999822e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.03632355, -0.970756531, 0.300042152, -0.70706749, -0.707146227, -4.05557985e-005, -0.707146227, 0.70706749, 1.65151196e-005, 1.69971609e-005, 4.03561753e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.67910004, -0.862400055, 0.300045013, -0.965919197, -0.25884375, -3.48302128e-005, -0.25884375, 0.965919197, 2.66137904e-005, 2.67544292e-005, 3.47223468e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.04720306, -0.785137177, 0.300051689, -0.965935647, 0.258782327, -2.66135248e-005, 0.258782327, 0.965935647, 3.48299654e-005, 3.47204077e-005, 2.67563955e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-3.04725647, -0.385164261, 0.300086021, -0.965935647, 0.258782327, -2.66135248e-005, 0.258782327, 0.965935647, 3.48299654e-005, 3.47204077e-005, 2.67563955e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.78490829, -0.212181091, 0.300048828, -0.707119763, 0.707093954, -1.65147794e-005, 0.707093894, 0.707119823, 4.05551255e-005, 4.03542872e-005, 1.6999822e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.20000005, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.899940491, -0.700034142, 0.300034523, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.54719543, -0.785116196, 0.300052643, -0.965935647, 0.258782327, -2.66135248e-005, 0.258782327, 0.965935647, 3.48299654e-005, 3.47204077e-005, 2.67563955e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-1.53630066, -1.2707634, 0.300060272, -0.70706749, -0.707146227, -4.05557985e-005, -0.707146227, 0.70706749, 1.65151196e-005, 1.69971609e-005, 4.03561753e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.47912598, -0.762430191, 0.300069809, -0.965919197, -0.25884375, -3.48302128e-005, -0.25884375, 0.965919197, 2.66137904e-005, 2.67544292e-005, 3.47223468e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.979110718, -1.16239738, 0.300032616, -0.965919197, -0.25884375, -3.48302128e-005, -0.25884375, 0.965919197, 2.66137904e-005, 2.67544292e-005, 3.47223468e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.24720764, -0.485141754, 0.300046921, -0.965935647, 0.258782327, -2.66135248e-005, 0.258782327, 0.965935647, 3.48299654e-005, 3.47204077e-005, 2.67563955e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.300041199, 3.09944153e-006, 0.300023079, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.399999976, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.60005188, -0.299981356, -0.0999956131, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.20000005, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.900032043, -0.69997263, 0.299980164, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.599990845, -0.300009489, -0.0999727249, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.692848206, 0.400043488, 0.300006866, -0.866006851, -0.500032246, -3.80353231e-005, -0.500032246, 0.866006851, 2.17553606e-005, 2.20605471e-005, 3.78591722e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.299980164, -1.3589859e-005, 0.300039291, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.700012207, -0.599973202, -0.10001564, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.800000012, 0.400000006))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(1.52587891e-005, -0.599998951, -1.04904175e-005, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.692825317, 0.399971008, 0.30005455, -0.866040707, 0.499973506, -2.1754995e-005, 0.499973506, 0.866040707, 3.80348138e-005, 3.78571822e-005, 2.20627644e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.599967957, -0.900018215, -0.099984169, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.60004425, 1.12056732e-005, 0.300005913, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.599990845, -2.78949738e-005, 0.300059319, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.400000006))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.300018311, 7.39097595e-006, 5.7220459e-006, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.699958801, -1.66893005e-005, -0.0999584198, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.699996948, -0.600014687, -0.0999603271, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(2.60000014, 1.4000001, 0.600000024))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(3.24715424, -1.38516998, -0.300175667, 0.965935767, -0.25878185, 3.45790031e-005, 0.25878188, 0.965935826, -2.56825715e-005, -2.67549985e-005, 3.37561505e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(1.81599987, 0.921999931, 0.429999948))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(3.20000005, 1.60000002, 0.600000024))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(3.78491974, -0.912193298, -0.300181389, 0.707121909, -0.707091928, 3.98714074e-005, 0.707091749, 0.707121849, -1.5834381e-005, -1.69976593e-005, 3.93895789e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(1.71599984, 1.26399994, 0.429999948))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.399999976, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(0.600074768, -0.899979115, -0.100029945, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-3.28493118, 0.187797546, 0.300078392, -0.707119763, 0.707093954, -1.65147794e-005, 0.707093894, 0.707119823, 4.05551255e-005, 4.03542872e-005, 1.6999822e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.400000006))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-0.299995422, -9.29832458e-006, 2.19345093e-005, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,HandleWing,Part,CFrame.new(0, 0, 0, -1, -3.10001451e-005, -3.09999632e-005, -3.10008145e-005, 1, 3.09999996e-005, 3.09990755e-005, 3.100096e-005, -1),CFrame.new(-2.98490906, -0.212203979, 0.300058365, -0.707119763, 0.707093954, -1.65147794e-005, 0.707093894, 0.707119823, 4.05551255e-005, 4.03542872e-005, 1.6999822e-005, -1))

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
local efprt=part(3,Parent,0,0.5,BrickColor.new("Really black"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Prt.Position-Mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=Mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Really black"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(15) 
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really black"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

ready = false

function shoot()
        if attack==true and ready==true then
                ready=false
                attack=true
so("http://www.roblox.com/asset/?id=138083993",Barrel,1,1)
for i=0,3,0.3 do
LaserBarrage(Barrel,m)
end
                for i=0,3,0.3 do
                        swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(120), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(140), math.rad(0), math.rad(40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(-.1,.1,.1)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
                end
                for i=0,3,0.3 do
	swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(-.1,.1,.1)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
        for i=0,3,0.3 do
	swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -1) * angles(math.rad(120), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(1,-1,.5)*angles(math.rad(0),math.rad(-20),math.rad(-70)),.3)
end
so("http://www.roblox.com/asset/?id=131072992",Barrel,1,.8)
  for i=0,3,0.3 do
	swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -1) * angles(math.rad(120), math.rad(0), math.rad(20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(1,-1,.5)*angles(math.rad(0),math.rad(-20),math.rad(-70)),.3)
end
    for i=0,3,0.3 do
	swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -1) * angles(math.rad(120), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(1,-1,.5)*angles(math.rad(0),math.rad(-20),math.rad(-70)),.3)
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(-15)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(15)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(15)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1.5)*angles(math.rad(180),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-15)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(15)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(15)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1.5)*angles(math.rad(180),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-15)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(15)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1.5)*angles(math.rad(180),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30*math.cos(sine/15)), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1.5)*angles(math.rad(180),math.rad(0),math.rad(0)),.3)
end
end
end
if ready==true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(-.1,.1,.1)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
        end
end