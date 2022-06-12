--[[NIGHTOWLACE_WEAPONRY]]--
Meshes = {
	Blast = '20329976',
	Crown = '1323306',
	Ring = '3270017',
	Claw = '10681506',
	Crystal = '9756362',
	Coil = '9753878',
	Cloud = '1095708',
}
wait(1 / 60)
Effects = { }
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

Handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.943718672, 0.24000001, 0.24000001))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(1.15759659, 0.21985054, -0.0923061371, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.17964828, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.117938995, 0.133724213, -1.90734863e-005, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.786432147, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(2.20200968, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.251316071, -0.801189423, -3.05175781e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983040154, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.786432087, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.291980743, -0.850324631, 0.00116729736, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983040154, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.57286417, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.487232208, -1.15900803, 0.157262802, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983040154, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.1950798, -1.0056572, 9.53674316e-006, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.655360043, 0.327680141, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.25829124, 0.314572841, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(1.47885895, -0.44726181, -0.000131607056, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.707789063, 0.346030116, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.520956039, 0.31918335, -2.0980835e-005, 0.0125475703, 0.96932745, -0.245463982, -0.0071582566, -0.245389909, -0.969400883, -0.999895811, 0.0139206378, 0.00385962543))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.707789063, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.942173, -0.368679047, 0.00130271912, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.655360043, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.23437119, -0.250705719, 0.00128364563, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.983040154, 0.688128114))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.314572871, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.19508743, -0.958465576, 2.47955322e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.314572841, 0.550502419, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.45336914, -0.722579956, 0.000108718872, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.25829136, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(1.47886276, -0.211334229, -0.000116348267, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.655360222, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.550502419, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.47032166, -0.0934371948, 0.00131607056, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.688128114))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.41557765, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.487255096, -0.958465576, -1.14440918e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.220539093, -1.00566101, -5.14984131e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.655360043, 0.327680141, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.943718612, 0.393216044, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.82418442, -0.643928528, 8.39233398e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.07710648, -0.525959015, 4.38690186e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.655360043, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(1.35233688, -1.198349, -0.157400131, -0.0139060337, -0.999811053, -0.013788024, -0.00369899906, 0.0138407024, -0.999900162, 0.999896467, -0.0138535611, -0.00389074697))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.655360222, 0.655360043, 0.327680141))
Barrel=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Barrel",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Barrelweld=weld(m,Handle,Barrel,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.00418663025, -2.85905075, -0.761863708, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("CylinderMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(0.655360043, 0.327680141, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.00417327881, -2.85905075, -0.525951385, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.655360043, 0.327680141, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.393216044))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.495780945, -1.23766327, -7.2479248e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.57286417, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.487255096, -1.1590271, -0.157287598, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983040154, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.393216044))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(1.4703331, -1.23769379, -0.000122070313, -0.0139060337, -0.999811053, -0.013788024, -0.00369899906, 0.0138407024, -0.999900162, 0.999896467, -0.0138535611, -0.00389074697))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.393216044, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(2.85510635, -0.643859863, 0.0784606934, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 1, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.471859306, 0.24000001, 0.393216044))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.46777725, -4.76837158e-005, 1.15613556, 0.010273343, 0.872799635, -0.487976253, 0.999896109, -0.0139007689, -0.00381230353, -0.010110626, -0.487886369, -0.872851729))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983040154, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.393216103, 0.24000001, 0.393216044))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.40609932, -5.91278076e-005, 1.15620422, 0.010273343, 0.872799635, -0.487976253, 0.999896109, -0.0139007689, -0.00381230353, -0.010110626, -0.487886369, -0.872851729))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983040154, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.550502479, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(2.85512924, -0.643848419, -0.000188827515, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 1, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(2.85905838, -0.643875122, -0.00412559509, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.983040273, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.57286417, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.487258911, -1.08039093, -7.62939453e-006, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(1.35233307, -1.19836426, 0.157154083, -0.0139060337, -0.999811053, -0.013788024, -0.00369899906, 0.0138407024, -0.999900162, 0.999896467, -0.0138535611, -0.00389074697))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.655360222, 0.655360043, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.88743722, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.487247467, -1.23763657, -4.00543213e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.393216044, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(2.85514069, -0.643829346, -0.0788497925, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 1, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.15575027, -0.643939972, 3.6239624e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.25829136, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(1.47885895, -0.840480804, -0.000131607056, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.655360222, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.07707214, -0.368663788, 0.00127220154, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.98304075, 0.655360043, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.314572871, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.220531464, -0.95847702, -6.67572021e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.73015034, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.0154037476, -0.25069046, -2.28881836e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983040154, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.41164541, 0.479723573, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(1.55555725, -0.526451111, -0.000112533569, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.25829136, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.66692352, -0.408000946, 0.00127220154, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.688128114))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.707788944, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(2.46191406, -0.840465546, -0.000156402588, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.655360043, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.10100484, 0.393216044, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.91730499, 1.15611649, -3.24249268e-005, 0.0102833146, 0.872815013, -0.487942815, -0.0101801418, -0.487851918, -0.872866988, -0.999895334, 0.0139432941, 0.00386864599))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.393216044, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.68928528, -0.80121994, 0.000106811523, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.655359983, 1, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.554434597, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.58838272, 0.625782013, 0.00119018555, 0.0102833146, 0.872815013, -0.487942815, -0.0101801418, -0.487851918, -0.872866988, -0.999895334, 0.0139432941, 0.00386864599))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 1, 0.688128114))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.393216044, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.80725479, -0.801242828, 0.00133132935, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 1, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.31304169, -0.525974274, 5.34057617e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.655360043, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.25829136, 0.346030116, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.50745392, 0.0874519348, 6.86645508e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.550502479, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(2.54057312, -0.683185577, -0.000183105469, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.655359983, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.41557765, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.487258911, -1.03714371, 0.00392341614, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.5898242))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.471859306, 0.314572841, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.53197861, -0.44733429, 0.001329422, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.377857208, -1.19832993, 0.157217026, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.655360222, 0.655360043, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.80879366, 0.314572841, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.0547180176, -0.522563934, -4.95910645e-005, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.943718612, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.82420349, -0.87985611, 0.00126457214, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.327680141, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.707788944, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(2.46190643, -0.486560822, -0.000171661377, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.983040154, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.377849579, -1.19828796, -0.157365799, 0.0139230313, 0.999810934, 0.0137800314, -0.00364101073, 0.0138319694, -0.99990052, -0.999896467, 0.0138713904, 0.00383288297))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.655360222, 0.655360043, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0.80000001192093,"Toothpaste","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-4.76837158e-005, -1.47026825, -1.15903473, -0.99989593, 0.0139163872, 0.00381751009, 0.0139678689, 0.9998101, 0.0137959812, -0.00362479547, 0.013847867, -0.999900341))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.67028809e-005, -1.3130722, -0.643924713, -0.99989593, 0.0139163872, 0.00381751009, 0.0139678689, 0.9998101, 0.0137959812, -0.00362479547, 0.013847867, -0.999900341))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.314572841, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.00137710571, 0.447235107, 2.80729675, 0.999896348, -0.013869415, -0.0038765301, 0.00368538033, -0.0137820523, 0.999901056, -0.0139214741, -0.999811649, -0.0137295099))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.655360043, 1, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(4.38690186e-005, -0.879909515, 1.47029877, -0.999895751, 0.0139044151, 0.00389651535, -0.00370358699, 0.0138750067, -0.999899685, -0.0139570897, -0.999809861, -0.0138220619))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 0.983040035))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.314572841))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.000135421753, 0.40788269, 2.45338058, 0.999896348, -0.013869415, -0.0038765301, 0.00368538033, -0.0137820523, 0.999901056, -0.0139214741, -0.999811649, -0.0137295099))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.24379392, 0.314572841, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(7.62939453e-006, 0.880512238, -0.543647766, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.802816093))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.86102295e-005, -1.07713699, -0.40802002, -0.99989593, 0.0139163872, 0.00381751009, 0.0139678689, 0.9998101, 0.0137959812, -0.00362479547, 0.013847867, -0.999900341))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.0980835e-005, -1.19504547, -0.525959015, -0.99989593, 0.0139163872, 0.00381751009, 0.0139678689, 0.9998101, 0.0137959812, -0.00362479547, 0.013847867, -0.999900341))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.655360043, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.24379392, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.14440918e-005, -1.14982224, -0.54365921, -0.99989593, 0.0139163872, 0.00381751009, 0.0139678689, 0.9998101, 0.0137959812, -0.00362479547, 0.013847867, -0.999900341))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.933888197, 0.802816093))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.314572841, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(4.19616699e-005, 0.692371368, 0.486637115, 0.99989593, -0.013920377, -0.00379350851, 0.0139712682, 0.999811053, 0.0137240263, 0.00360174873, -0.0137755973, 0.999901474))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 1, 0.983040154))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-6.67572021e-005, 0.250640869, 0.919834137, 0.999896348, -0.013869415, -0.0038765301, 0.00368538033, -0.0137820523, 0.999901056, -0.0139214741, -0.999811649, -0.0137295099))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.983040154, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-5.91278076e-005, -0.919219971, -2.17808533, 0.999896348, -0.0138833923, -0.00381752499, -0.00362545741, 0.0138340937, -0.999900401, 0.0139348274, 0.999810696, 0.0137823271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.655360043, 0.983040035))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.314572841, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.000133514404, -1.00696945, -0.72253418, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 1, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.00121879578, -0.958515167, -2.1781044, 0.999896348, -0.0138833923, -0.00381752499, -0.00362545741, 0.0138340937, -0.999900401, 0.0139348274, 0.999810696, 0.0137823271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.655360043, 0.327680141, 0.983040035))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.707788944, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.000198364258, -2.46192169, -0.250694275, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 1, 0.983040035))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.629145682, 0.314572781))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.00119781494, 0.368656158, -1.03774643, -0.999895871, 0.0139133958, 0.00384351052, 0.00365104433, -0.0138330217, 0.999900341, 0.0139651848, 0.999810338, 0.0137807829))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.688128233, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.000135421753, 0.368572235, 2.37473679, 0.999896348, -0.013869415, -0.0038765301, 0.00368538033, -0.0137820523, 0.999901056, -0.0139214741, -0.999811649, -0.0137295099))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.655360043, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.000173568726, 0.525844574, 2.68932343, 0.999896348, -0.013869415, -0.0038765301, 0.00368538033, -0.0137820523, 0.999901056, -0.0139214741, -0.999811649, -0.0137295099))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.655360043, 0.655359983))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(7.62939453e-006, 0.36870575, -2.17813873, -0.999895871, 0.0139133958, 0.00384351052, 0.00365104433, -0.0138330217, 0.999900341, 0.0139651848, 0.999810338, 0.0137807829))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.655360043, 0.983040035))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-6.10351563e-005, 2.22595215, -0.722476959, -0.99989593, 0.0139163872, 0.00381751009, 0.0139678689, 0.9998101, 0.0137959812, -0.00362479547, 0.013847867, -0.999900341))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(2.85512543, -0.0785236359, -0.407909393, 0.0139440401, 0.999810636, 0.0137790265, 0.999896109, -0.0138921319, -0.00385251641, -0.0036603671, 0.0138313128, -0.99990046))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.85512543, -0.0787811279, 0.879825592, -0.0140230283, -0.999809861, -0.0137579823, 0.999894917, -0.0139708742, -0.00387649541, 0.00368354702, -0.0138108963, 0.99990052))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.393216044, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-6.67572021e-005, -1.35235977, -1.08042145, -0.99989593, 0.0139163872, 0.00381751009, 0.0139678689, 0.9998101, 0.0137959812, -0.00362479547, 0.013847867, -0.999900341))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.655360043, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(2.8551712, -0.0786819458, 0.879615784, 0.0139760384, 0.999809563, 0.0138279889, -0.999895871, 0.0139242765, 0.00382950529, 0.00363623095, -0.0138800656, 0.999899745))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.157236099, -1.47026825, -1.1590538, -0.99989593, 0.0139163872, 0.00381751009, 0.0139678689, 0.9998101, 0.0137959812, -0.00362479547, 0.013847867, -0.999900341))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0.80000001192093,"Toothpaste","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.000127792358, -0.495792389, -1.15896988, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.157438278, -0.49577713, -1.15897369, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.157346725, -1.47029877, -1.15905762, -0.99989593, 0.0139163872, 0.00381751009, 0.0139678689, 0.9998101, 0.0137959812, -0.00362479547, 0.013847867, -0.999900341))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.314572841, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(3.43322754e-005, -0.801887512, 0.447288513, 0.99989593, -0.013920377, -0.00379350851, 0.0139712682, 0.999811053, 0.0137240263, 0.00360174873, -0.0137755973, 0.999901474))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 1, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-2.85508347, -0.0786705017, -0.407806396, -0.0139720403, -0.999809682, -0.0138230566, -0.999895513, 0.0139192371, 0.00390550494, -0.00371235516, 0.0138761802, -0.999899626))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 1.17964828, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-3.81469727e-006, 0.0547294617, 0.447292328, -0.999895275, 0.0139573952, 0.00382549595, -0.0140087251, -0.999810398, -0.013724925, 0.00363320718, -0.0137770791, 0.999901354))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 1, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-1.52587891e-005, -0.525939941, -1.19504547, 0.999896348, -0.0138833923, -0.00381752499, -0.00362545741, 0.0138340937, -0.999900401, 0.0139348274, 0.999810696, 0.0137823271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.655360043, 0.655360043))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-7.62939453e-005, 1.31311417, 0.643829346, -0.999895275, 0.0139573952, 0.00382549595, -0.0140087251, -0.999810398, -0.013724925, 0.00363320718, -0.0137770791, 0.999901354))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.24000001, 0.471859306, 0.314572841))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(7.62939453e-006, 0.801876068, -0.525936127, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.393216044, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(0.000112533569, -0.377819061, -1.0803566, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.655360043, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(-0.157155991, -0.495807648, -1.15901566, 0.999896765, -0.0138633689, -0.00378253055, -0.0139142601, -0.999811292, -0.013764984, -0.00359098846, 0.0138161946, -0.999900877))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.327680141, 0.327680141, 0.327680141))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.24000001, 0.24000001, 0.24000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0139253279, 0.858935118, 0.511900485, 0.00385074317, 0.511900187, -0.859039545, -0.999895632, 0.0139335208, 0.00382081699),CFrame.new(7.2479248e-005, 2.2259407, 0.643985748, 0.99989593, -0.013920377, -0.00379350851, 0.0139712682, 0.999811053, 0.0137240263, 0.00360174873, -0.0137755973, 0.999901474))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.983040154, 0.327680141, 0.327680141))

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
local tefprt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Dark stone grey"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(50) 
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Dark stone grey"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function shoot()
 if ready==true then
                attack=true
                ready = false
LaserBarrage(Barrel,m)
so("http://roblox.com/asset/?id=136523485",Barrel,1,1) 
so("http://roblox.com/asset/?id=136523485",Barrel,1,1) 
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