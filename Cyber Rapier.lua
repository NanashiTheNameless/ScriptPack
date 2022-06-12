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
cam=workspace.CurrentCamera
RocketTarget=nil
Targetting=false
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Toothpaste"))
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
                so("http://www.roblox.com/asset/?id=240429615",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://57605688"
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Handle",Vector3.new(0.399999976, 2, 0.399999976))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(-0.069229126, 0.199302673, 1.03997803, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -0.48639679, -1.19646454, 1, 3.07729024e-008, 9.36731155e-008, 3.07729202e-008, -1, -1.78813963e-007, 9.36731155e-008, 1.78813977e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -1.74415779, -0.618591309, 1, -2.43566603e-007, 2.85455911e-007, 2.96202494e-008, -0.707106769, -0.707106888, 3.74075455e-007, 0.707106888, -0.707106769))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.81113434, -0.194953918, 1, 1.44809633e-007, 6.19132976e-008, -9.72831344e-008, 0.258818835, 0.965925813, 1.23851052e-007, -0.965925813, 0.258818835))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.63119125, 0.242576599, 1, 1.52124741e-007, 5.77204666e-008, -1.26049741e-007, 0.499999672, 0.866025507, 1.02883703e-007, -0.866025507, 0.499999672))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -2.29069519, 0.671279907, 1, -3.43969504e-007, 1.87338884e-007, 1.87338884e-007, 0, -1, 3.43969504e-007, 1, 6.44388582e-014))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-7.62939453e-006, -1.42977333, -0.927230835, 1, -1.05021321e-007, 1.70581984e-007, -5.66014879e-009, -0.866025507, -0.5, 2.00239015e-007, 0.5, -0.866025507))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.30199432, -1.90754509, 0.99999994, 3.94748724e-007, -2.68516089e-008, 2.98116561e-007, -0.707106888, 0.707106531, 2.60142457e-007, -0.707106531, -0.707106888))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -0.965831757, -1.12628937, 1, 4.76207296e-009, -2.18450737e-007, -5.19394341e-008, -0.965925872, -0.258819193, -2.1223974e-007, 0.258819193, -0.965925872))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -0.00507736206, -1.14015961, 1, 3.01519911e-008, 1.32689053e-007, -5.2178577e-009, -0.965925813, 0.258818984, 1.35971689e-007, -0.258818984, -0.965925813))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -2.03118134, -0.242576599, 1, -2.09467373e-007, 2.66485671e-007, 1.26049756e-007, -0.499999821, -0.866025627, 3.14646883e-007, 0.866025627, -0.499999821))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 1.39999998, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-7.62939453e-006, -5.69998932, 3.81469727e-006, 1, 1.09453232e-007, -2.56869356e-007, -2.56869441e-007, 8.79168738e-007, -1, -1.09453012e-007, 1, 8.79168795e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 0.349999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.75952148, -1.11914063, 1, 1.64540992e-007, -2.11787807e-007, 2.47157686e-007, -0.258819073, 0.965925753, 1.04119685e-007, -0.965925753, -0.258819073))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 4))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 0, 2.99999237, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.349999994, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.5826416, -1.54350471, 1, 1.77806413e-007, -1.53565637e-007, 2.21894993e-007, -0.500000179, 0.866025209, 7.72019959e-008, -0.866025209, -0.500000179))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(1.52587891e-005, 2.44822693, -1.31168747, 1, 2.61550213e-007, -2.39015037e-007, 3.37768284e-007, -0.500000119, 0.866025329, 1.0700154e-007, -0.866025329, -0.500000119))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -2.21112823, 0.194911957, 1, 4.783438e-008, 8.7897746e-008, 9.72831486e-008, -0.258818924, -0.965925932, -2.345487e-008, 0.965925932, -0.258818924))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -0.394943237, 1.14014435, 1, -4.05876825e-008, -1.31315133e-007, 5.21785637e-009, 0.965925813, -0.258818835, 1.37345566e-007, 0.258818835, 0.965925813))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.89070129, -0.671279907, 1, 1.36658599e-007, 0, 0, -1.49011425e-008, 0.99999994, 1.36658613e-007, -0.99999994, -1.49011239e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 1.60000002, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(1.52587891e-005, 2.20908356, 0.218208313, 1, -1.09453246e-007, 2.56869356e-007, -2.56869441e-007, -8.79168624e-007, 1, -1.09453012e-007, -1, -8.79168681e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -2.15952301, 1.11919212, 1, 3.43509043e-009, -2.54956007e-007, -2.47157658e-007, 0.258819103, -0.965925813, 6.2669443e-008, 0.965925813, 0.258819103))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.34414673, 0.618606567, 0.99999994, 1.08901325e-007, -6.70119604e-008, -2.96202529e-008, 0.70710665, 0.707106769, 1.24389501e-007, -0.707106769, 0.70710665))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 0.0863571167, 1.19646454, 1, -3.55271368e-015, -1.36658599e-007, 0, 0.99999994, 1.49011612e-008, 1.36658613e-007, -1.49011612e-008, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000012, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -1.80197144, 1.90756607, 1, 3.20225979e-007, -1.01374461e-007, -2.98116561e-007, 0.707106888, -0.70710665, -1.54751334e-007, 0.70710665, 0.707106888))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(1.52587891e-005, 2.86138153, -0.600498199, 1, -2.78818135e-007, -3.75251631e-007, 2.90301614e-007, -0.25881952, 0.965925694, -3.66440048e-007, -0.965925694, -0.25881952))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -1.98265839, 1.54346466, 1, 3.69134163e-008, -2.34910303e-007, -2.21894993e-007, 0.500000298, -0.866025329, 8.54872653e-008, 0.866025329, 0.500000298))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 1.39999998, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(1.52587891e-005, -3.70909119, -0.218204498, 1, 1.09453232e-007, -2.56869356e-007, -2.56869441e-007, 8.79168738e-007, -1, -1.09453012e-007, 1, 8.79168795e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 0.565839767, 1.12628937, 1, -1.65695653e-008, -1.38840022e-007, 5.19394234e-008, 0.965925753, 0.258819073, 1.29820663e-007, -0.258819073, 0.965925753))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.80298615, -1.90755653, 0.999998868, 3.94748469e-007, -2.68514384e-008, 2.98116163e-007, -0.70710659, 0.707106054, 2.60142201e-007, -0.707106054, -0.70710659))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.02976799, 0.927230835, 1, 6.26691303e-008, -1.19866456e-007, 5.66015501e-009, 0.866025388, 0.499999881, 1.35141988e-007, -0.499999881, 0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(7.62939453e-006, -2.74824524, 1.31166077, 1, -8.05407083e-008, -4.36521645e-007, -3.37768455e-007, 0.500000238, -0.866025329, 2.88011222e-007, 0.866025329, 0.500000238))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -2.10299683, 1.90753365, 0.99999994, 2.0148434e-007, -2.20116092e-007, -2.98116561e-007, 0.707106888, -0.707106531, 1.31747484e-008, 0.707106531, 0.707106888))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(1.52587891e-005, -3.16137695, 0.600500107, 1, 3.55256162e-007, -2.0535191e-007, -2.90301955e-007, 0.258819669, -0.965925694, -2.90001935e-007, 0.965925694, 0.258819669))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Storm blue","Part",Vector3.new(0.399999976, 0.200000003, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-1.52587891e-005, -0.900001526, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810000002, 0.5, 0.810000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Storm blue","Part",Vector3.new(0.399999976, 1, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -0.300003052, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810000002, 1, 0.810000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Storm blue","Part",Vector3.new(0.399999976, 0.200000003, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-2.28881836e-005, 0.300003052, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810000002, 0.5, 0.810000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(2.28881836e-005, -1.90734863e-005, -1.05000305, 0.707106829, 0.707106769, 0, -0.707106769, 0.707106829, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1.1000061, 0.199996948, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -1.52587891e-005, -1.05000305, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(3.05175781e-005, 1.1000061, 0.199996948, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.200000003, 0.400000006, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-3.05175781e-005, -1.40000153, 0.199996948, -1, 2.41713877e-007, 2.23515428e-008, 2.23515642e-008, 8.94069672e-008, 1, 2.41713877e-007, 1, -8.94069743e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.200000003, 0.400000006, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -1.40000153, 0.199996948, 1, -2.41713877e-007, -2.23515428e-008, 2.23515642e-008, 8.94069672e-008, 1, -2.41713877e-007, -1, 8.94069743e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-1.52587891e-005, 0.819992065, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.399999976, 0.200000003, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-3.05175781e-005, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1.39999998, 0.360000014, 1.39999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.399999976, 0.200000003, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-4.57763672e-005, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1.5, 0.200000003, 1.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -6.10351563e-005, 0.699996948, -5.96046448e-008, 1, 0, -1, -5.96046448e-008, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.5, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-4.57763672e-005, -4.57763672e-005, 0.699996948, -0.707106888, 0.707106769, 0, -0.707106769, -0.707106888, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.400000006, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(3.81469727e-005, -3.81469727e-005, 0.699996948, 0.707106769, 0.707106829, 0, -0.707106829, 0.707106769, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.400000006, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(4.57763672e-005, 0, 0.699996948, 1, 2.98023224e-008, 0, -2.98023224e-008, 1, 0, 0, 0, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.5, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.399999976, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-0.00713348389, -1.40000153, 0.0500030518, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.399999976, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0.00430297852, -1.40000153, 0.0500030518, -1, 1.49011612e-007, 0, 0, 0, 1, 1.49011612e-007, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 1, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-0.00286865234, -1.69999695, 0.0999755859, -1, 1.49011612e-007, 0, 0, 0, 1, 1.49011612e-007, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 1, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(3.05175781e-005, -1.69999695, 0.100013733, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-7.62939453e-006, 0.809997559, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 0.0285053253, 1.08548737, 1, 0, 0, -0, -0.965925932, -0.258819073, 0, 0.258819073, -0.965925932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -0.697784424, 1.0717926, -1, 0, 0, 0, 0.965925932, 0.258819073, 0, 0.258819073, -0.965925932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.399999976, 0.200000003, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-3.05175781e-005, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1.45000005, 0.300000012, 1.45000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.399999976, 0.200000003, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(-4.57763672e-005, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.25999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -0.300003052, 1.1000061, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000006, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -0.300003052, 1.1000061, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 0.0285263062, 1.085495, -1, 0, 0, 0, 0.965925932, -0.258819073, -0, -0.258819073, -0.965925932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000072, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -1.31014442, 0.685913086, -1, 0, 0, 0, 0.707106769, 0.707106829, 0, 0.707106829, -0.707106769))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -0.697757721, 1.07180786, 1, 0, 0, 0, -0.965925932, 0.258819073, -0, -0.258819073, -0.965925932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000012, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, -1.31016541, 0.685886383, 1, 0, 0, 0, -0.707106769, 0.707106829, -0, -0.707106829, -0.707106769))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Cyan","Hitbox",Vector3.new(0.200000003, 0.200000003, 5.32999992))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),CFrame.new(0, 0.0170898438, 3.68499756, 0, 1, 0, -1, 0, 0, 0, 0, 1))

function attackone()
        attack=true
        for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(10),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(50),math.rad(-10),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505639",Hitbox,1,1.1) 
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,0,"Target",600,1,2) end) 
 for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.2)*angles(math.rad(10),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.2)*angles(math.rad(0),math.rad(-90),math.rad(-15))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(10),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*50
        end
attack=false
con:disconnect()
end

function attacktwo()
        attack=true
       for i=0,1.5,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(10),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(-10),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505649",Hitbox,1,1) 
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(10,20),"Normal",RootPart,.2,1) end) 
 for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.2)*angles(math.rad(10),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.2)*angles(math.rad(0),math.rad(-90),math.rad(-15))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-100),math.rad(10),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*90
        end
attack=false
con:disconnect()
end

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        attackone()
                elseif attacktype==2 then
                        attack=true
                        attacktype=1
                        attacktwo()
               --[[ elseif attacktype==3 then
                        attack=true
                        attacktype=1
                        attacktwo()]]--
                end
        end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(-10),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30*math.cos(sine/10)), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(25),math.rad(-10),math.rad(0)),.3)
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