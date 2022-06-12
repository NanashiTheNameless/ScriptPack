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


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
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
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
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

local Color = BrickColor.new("Really black")
 
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
w1.BrickColor = BrickColor.new("Dark stone grey")
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
w2.BrickColor = BrickColor.new("Dark stone grey")
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Dark stone grey"))
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

HandleA=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","HandleA",Vector3.new(1.6487186, 1.9784621, 1.64871848))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994874, 0, 0, 0, 1),CFrame.new(-0.0212783813, -0.19931078, 1.02361298, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069))
mesh("CylinderMesh",HandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.174999908, 1.04999995, 0.524999976))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0, 1.26446486, 0.783137321, -1, -8.61177796e-012, 1.51011747e-007, 1.50979517e-007, -1.33582034e-012, 1, 8.83393966e-012, 1, -1.33582034e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.0333333202, 0.13333331))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.00329208374, -1.32052565, 0.784784317, 1, 8.61367228e-012, -1.59730007e-011, 1.62856395e-011, 1.33582034e-012, -1, 8.83393966e-012, 1, -1.33582034e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.0333333202, 0.13333331))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0, -1.33371496, 0.811164856, 1, 8.61367228e-012, -1.5944579e-011, 1.62714286e-011, 1.33582034e-012, -1, 8.83393966e-012, 1, -1.33582034e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0499999858, 0.0499999858, 0.166666642))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0, 1.25127745, 0.811161995, -1, -8.61177796e-012, 1.51011747e-007, 1.50979517e-007, -1.33582034e-012, 1, 8.83393966e-012, 1, -1.33582034e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0499999784, 0.0499999858, 0.166666642))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.96608448, 0.0280532837, -1.49057865, 4.62648231e-009, -0.965925753, -0.258818984, -1, -4.2230571e-008, 1.39698415e-007, -1.45832743e-007, 0.258818984, -0.965925753))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.42736959, -1.90734863e-006, -0.270785332, 1.65861607e-007, 0.587785304, 0.809016943, 1, -2.56842885e-008, -1.86375004e-007, -8.87363996e-008, 0.809016943, -0.587785304))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.166666672, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.577048302, -0.0280227661, -1.4557147, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.577048302, 0.0280532837, -1.4557147, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.962899685, 0, -1.49143219, 4.62648231e-009, -0.965925753, -0.258818984, -1, -4.2230571e-008, 1.39698415e-007, -1.45832743e-007, 0.258818984, -0.965925753))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.43294263, -0.028055191, -0.268722534, 1.65861607e-007, 0.587785304, 0.809016943, 1, -2.56842885e-008, -1.86375004e-007, -8.87363996e-008, 0.809016943, -0.587785304))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.166666672, 0.149999991))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.43294263, 0.0280208588, -0.268722534, 1.65861607e-007, 0.587785304, 0.809016943, 1, -2.56842885e-008, -1.86375004e-007, -8.87363996e-008, 0.809016943, -0.587785304))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.166666672, 0.149999991))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.962899685, -0.0280227661, -1.49143219, 4.62648231e-009, -0.965925753, -0.258818984, -1, -4.2230571e-008, 1.39698415e-007, -1.45832743e-007, 0.258818984, -0.965925753))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.577048302, 0, -1.4557147, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.3308568, -0.0280208588, -2.34424305, 3.05438661e-008, -0.99619472, -0.0871556401, -1, -4.35536585e-008, 1.47202044e-007, -1.50404261e-007, 0.0871556401, -0.99619472))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.5))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 4.94615555))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.00164794922, 7.62939453e-006, -5.16695738, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.233333305, 0.0499999933, 1))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.26282072, -1.90734863e-006, 0.412180901, 1.94690912e-007, -1.32871492e-012, 1, 1, 8.62338326e-012, -1.94723142e-007, 8.83393966e-012, 1, -1.33582034e-012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.166666672, 0.333333343))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-7.62939453e-006, -0.08244133, 7.9681406, 1, -1.50987148e-007, -1.51011761e-007, 1.51004627e-007, 0.99999994, 1.19207968e-007, 1.50979517e-007, -1.19210625e-007, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0166666452, 0.133333281, 0.433333308))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.0247306824, -0.0296740532, 2.22566557, 1, -1.50987148e-007, -1.51011761e-007, 1.51004627e-007, 0.99999994, 1.19207968e-007, 1.50979517e-007, -1.19210625e-007, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666478, 0.0499999858, 0.400000006))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.63556767, 0, -1.01302338, -6.30534984e-008, -0.707106829, -0.70710665, -1, -3.0917235e-008, 1.20103138e-007, -1.06752402e-007, 0.70710665, -0.707106829))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.89365387, -0.0280227661, -1.84453678, 4.62648941e-009, -0.965925753, -0.258818984, -1, -4.2230571e-008, 1.39698415e-007, -1.45832772e-007, 0.258818984, -0.965925753))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.0999999866))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.0280208588, -0.067609787, -2.28172255, -1, -8.61177796e-012, 1.51011747e-007, 8.83204621e-012, 1, -5.96059806e-008, -1.50979531e-007, -5.9603309e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666478, 0.0499999858, 0.400000006))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.344002247, 1.90734863e-006, -2.34309292, 3.0543859e-008, -0.99619472, -0.0871556699, -1, -4.35536585e-008, 1.47202044e-007, -1.50404247e-007, 0.0871556699, -0.99619472))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.0499999858, 0.5))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.85855484, -0.0280227661, 0.747494459, -8.70362982e-008, 0.5, -0.866025448, -1, 2.1847077e-008, 1.13156574e-007, 7.54974323e-008, 0.866025329, 0.5))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833333209, 0.0499999858, 0.0999999866))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.00164794922, -1.90734863e-006, -2.33613157, 4.37202203e-008, 1, -5.96059806e-008, 1, -4.37027694e-008, -1.51011719e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.166666672, 0.333333343))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.64256334, -0.0280227661, -1.02001858, -6.30534984e-008, -0.707106829, -0.70710665, -1, -3.0917235e-008, 1.20103138e-007, -1.06752402e-007, 0.70710665, -0.707106829))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.92918491, 0, -0.610360622, -9.31263031e-008, -0.42261833, -0.906307817, -1, -1.84818436e-008, 1.11395778e-007, -6.37986943e-008, 0.906307817, -0.42261833))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.893769741, 0, -1.85133171, 4.62648231e-009, -0.965925753, -0.258818984, -1, -4.2230571e-008, 1.39698415e-007, -1.45832772e-007, 0.258818984, -0.965925753))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.0499999858, 0.116666652))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.90734863e-006, -0.0412211418, 2.25204802, 1, -1.50987148e-007, -1.51011761e-007, 1.51004627e-007, 0.99999994, 1.19207968e-007, 1.50979517e-007, -1.19210625e-007, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666478, 0.0666666552, 0.433333367))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.92918491, 0.0280532837, -0.610360622, -9.31263031e-008, -0.42261833, -0.906307817, -1, -1.84818436e-008, 1.11395778e-007, -6.37986943e-008, 0.906307817, -0.42261833))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.0280609131, -0.343752861, 7.90654612, 1, -1.50987177e-007, -1.48376117e-007, 1.45735555e-007, 0.999390841, -0.0348992646, 1.53523487e-007, 0.0348992646, 0.999390841))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0166666452, 0.0999999568, 0.366666645))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.00332832336, -0.0296730995, 2.22566557, -1, -8.61177796e-012, 1.51011747e-007, -8.85193828e-012, -0.99999994, -1.19207961e-007, 1.50979517e-007, -1.19210625e-007, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0833333209, 0.0499999858, 0.400000006))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-2.05584478, 0, 0.0412130356, -1.07268136e-007, 1.33582034e-012, -1, -1, -8.61438351e-012, 1.07300366e-007, 8.83393966e-012, 1, -1.33582034e-012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.90734863e-006, -0.0824308395, -2.25369406, 1, 1.51004386e-007, -1.51011733e-007, 1.50986963e-007, -1, 5.96059806e-008, -1.50979531e-007, -5.9603309e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.0666666552, 0.433333367))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-2.00435209, 0, 0.380025864, -1.02121355e-007, 0.258818984, -0.965925753, -1, 1.13047181e-008, 1.08789791e-007, 3.9084906e-008, 0.965925753, 0.258818984))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999933, 0.0999999866))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.028055191, -0.067609787, -2.28172255, -1, -8.61177796e-012, 1.51011747e-007, 8.83204621e-012, 1, -5.96059806e-008, -1.50979531e-007, -5.9603309e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666478, 0.0499999858, 0.400000006))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.06898212, -0.0280532837, -1.0689826, -6.30410142e-008, 0.70710665, -0.707106829, 1, -3.09000008e-008, -1.20103124e-007, -1.0676488e-007, -0.707106829, -0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.133333325, 0.166666672, 0.133333325))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-2.05584478, 0.0280532837, 0.0412135124, -1.07268143e-007, 1.19210625e-007, -0.99999994, -1, -8.60727808e-012, 1.07300366e-007, 8.85193828e-012, 0.99999994, 1.19207961e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.26282072, -0.028055191, 0.412180901, 1.94690912e-007, -1.32871492e-012, 1, 1, 8.62338326e-012, -1.94723142e-007, 8.83393966e-012, 1, -1.33582034e-012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833333209, 0.166666672, 0.333333343))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.028055191, -0.0692405701, -2.28172255, 1, 1.51004386e-007, -1.51011733e-007, 1.50986963e-007, -1, 5.96059806e-008, -1.50979531e-007, -5.9603309e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666478, 0.0499999858, 0.400000006))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.00164985657, 0, -1.62058592, 4.37202203e-008, 1, -5.96059806e-008, 1, -4.37027694e-008, -1.51011719e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.166666672, 0.333333343))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.90734863e-006, -0.0824422836, -2.25369406, -1, -8.61177796e-012, 1.51011747e-007, 8.83204621e-012, 1, -5.96059806e-008, -1.50979531e-007, -5.9603309e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.0666666552, 0.433333367))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.00164985657, -0.0280532837, -1.62058592, 4.37202203e-008, 1, -5.96059806e-008, 1, -4.37027694e-008, -1.51011719e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833333209, 0.166666672, 0.333333343))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.0296878815, -0.0296740532, 2.22566557, 1, -1.50987148e-007, -1.51011761e-007, 1.51004627e-007, 0.99999994, 1.19207968e-007, 1.50979517e-007, -1.19210625e-007, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666478, 0.0499999858, 0.400000006))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.336278915, 0.028055191, -2.42486453, 5.68613316e-008, -0.99619472, 0.0871558189, -1, -4.35536691e-008, 1.5482145e-007, -1.50405796e-007, -0.0871558189, -0.99619472))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.399999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-2.00435209, 0.0280532837, 0.380025864, -1.02121355e-007, 0.258818984, -0.965925753, -1, 1.13047181e-008, 1.08789791e-007, 3.9084906e-008, 0.965925753, 0.258818984))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833333209, 0.0499999858, 0.0999999866))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.64256334, 0.0280532837, -1.02001858, -6.30534984e-008, -0.707106829, -0.70710665, -1, -3.0917235e-008, 1.20103138e-007, -1.06752402e-007, 0.70710665, -0.707106829))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.06781673, -1.90734863e-006, -1.06781578, 1.50476268e-007, 0.707106829, 0.70710665, 1, -3.09000008e-008, -1.81920356e-007, -1.06752402e-007, 0.70710665, -0.707106829))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.166666672, 0.166666672, 0.166666672))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.342236519, 1.90734863e-006, -2.34159303, 5.68613316e-008, -0.99619472, 0.0871558189, -1, -4.35536691e-008, 1.5482145e-007, -1.50405796e-007, -0.0871558189, -0.99619472))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.0499999858, 0.5))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.85855484, 0, 0.747494459, -8.70362982e-008, 0.5, -0.866025448, -1, 2.1847077e-008, 1.13156574e-007, 7.54974323e-008, 0.866025329, 0.5))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999933, 0.0999999866))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.3308568, 0.028055191, -2.3442421, 3.05438768e-008, -0.996194661, -0.0871556103, -1, -4.35536585e-008, 1.47202044e-007, -1.50404233e-007, 0.0871556103, -0.996194661))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.5))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.06806135, 0.028055191, -1.80671334, 1.07510097e-007, -0.906307697, 0.422618389, -1, -3.96245774e-008, 1.69484991e-007, -1.36837642e-007, -0.422618389, -0.906307697))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.0999999866))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.06806087, 1.90734863e-006, -1.80671358, 1.0751009e-007, -0.906307757, 0.4226183, -1, -3.96245774e-008, 1.69484991e-007, -1.36837684e-007, -0.4226183, -0.906307757))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116666652, 0.0499999858, 0.116666652))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.00164985657, 0.0280227661, -1.62058592, 4.37202203e-008, 1, -5.96059806e-008, 1, -4.37027694e-008, -1.51011719e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833333209, 0.166666672, 0.333333343))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.893769741, 0.0280532837, -1.85133171, 4.62648941e-009, -0.965925753, -0.258818984, -1, -4.2230571e-008, 1.39698415e-007, -1.45832772e-007, 0.258818984, -0.965925753))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.0999999866))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0, -0.028055191, -2.40537596, 4.37202203e-008, 1, -5.96059806e-008, 1, -4.37027694e-008, -1.51011719e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.166666672, 0.25000003))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.0280609131, 0.179037094, 7.9139514, -1, -8.61177796e-012, 1.51011747e-007, 5.26024646e-009, -0.999390841, 0.0348992646, 1.50887871e-007, 0.0348992646, 0.999390841))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0166666452, 0.0999999568, 0.366666645))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.85855484, 0.0280532837, 0.747494459, -8.70362982e-008, 0.5, -0.866025448, -1, 2.1847077e-008, 1.13156574e-007, 7.54974323e-008, 0.866025329, 0.5))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833333209, 0.0499999858, 0.0999999866))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 4.94615555))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.00164794922, 0.0280609131, -5.16695738, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.199999973, 0.0666666552, 1))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.06781483, 0.0280227661, -1.06781673, -6.30410142e-008, 0.70710665, -0.707106829, 1, -3.09000008e-008, -1.20103124e-007, -1.0676488e-007, -0.707106829, -0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.133333325, 0.166666672, 0.133333325))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-2.00435209, -0.0280227661, 0.380025864, -1.02121355e-007, 0.258818984, -0.965925753, -1, 1.13047181e-008, 1.08789791e-007, 3.9084906e-008, 0.965925753, 0.258818984))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833333209, 0.0499999858, 0.0999999866))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.26282072, 0.0280208588, 0.412180901, 1.94690912e-007, -1.32871492e-012, 1, 1, 8.62338326e-012, -1.94723142e-007, 8.83393966e-012, 1, -1.33582034e-012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833333209, 0.166666672, 0.333333343))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(7.62939453e-006, -0.110453606, 7.9681406, -1, -8.61177796e-012, 1.51011747e-007, -8.85193828e-012, -0.99999994, -1.19207961e-007, 1.50979517e-007, -1.19210625e-007, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0166666452, 0.0999999568, 0.433333308))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.90734863e-006, -0.0412135124, 2.25369406, -1, -8.61177796e-012, 1.51011747e-007, -8.85193828e-012, -0.99999994, -1.19207961e-007, 1.50979517e-007, -1.19210625e-007, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.0666666552, 0.433333367))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.336278439, -0.0280208588, -2.42486453, 5.68613174e-008, -0.996194839, 0.0871557593, -1, -4.35536691e-008, 1.5482145e-007, -1.50405782e-007, -0.0871557593, -0.996194839))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.399999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0, 0.0280208588, -2.40537596, 4.37202203e-008, 1, -5.96059806e-008, 1, -4.37027694e-008, -1.51011719e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0666666552, 0.166666672, 0.25000003))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.0247306824, -0.0296730995, 2.22566557, -1, -8.61177796e-012, 1.51011747e-007, -8.85193828e-012, -0.99999994, -1.19207961e-007, 1.50979517e-007, -1.19210625e-007, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666478, 0.0499999858, 0.400000006))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 4.94615555))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.00164794922, -0.0280151367, -5.16695738, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.199999973, 0.0666666552, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.0280151367, -0.343983173, 7.91313314, 1, 8.61177796e-012, -1.51011747e-007, -5.26024646e-009, 0.999390841, -0.0348992646, 1.50887871e-007, 0.0348992646, 0.999390841))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0166666452, 0.0999999568, 0.366666645))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-2.05584478, -0.0280227661, 0.0412130356, -1.07268136e-007, 1.33582034e-012, -1, -1, -8.61438351e-012, 1.07300366e-007, 8.83393966e-012, 1, -1.33582034e-012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.0280151367, 0.179037094, 7.9139514, -1, -8.61177796e-012, 1.51011747e-007, 5.26024646e-009, -0.999390841, 0.0348992646, 1.50887871e-007, 0.0348992646, 0.999390841))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0166666452, 0.0999999568, 0.366666645))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.06806135, -0.0280208588, -1.80671334, 1.07510097e-007, -0.906307697, 0.422618389, -1, -3.96245774e-008, 1.69484991e-007, -1.36837642e-007, -0.422618389, -0.906307697))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.0999999866))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-1.92918491, -0.0280227661, -0.610360622, -9.31263031e-008, -0.42261833, -0.906307817, -1, -1.84818436e-008, 1.11395778e-007, -6.37986943e-008, 0.906307817, -0.42261833))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0999999866, 0.0499999858, 0.166666672))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 1.64871836, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0.0280208588, -0.0692405701, -2.28172255, 1, 8.74313955e-008, -1.51011761e-007, 8.74139445e-008, -1, 5.96059806e-008, -1.50979531e-007, -5.9603309e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0666666478, 0.0499999858, 0.400000006))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.26445436, 0.0279273987, -0.219360352, 9.17009093e-005, 6.10351563e-005, 1, 1, -9.15518103e-005, -9.16953577e-005, 9.15462151e-005, 1, -6.10947609e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.124999918, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(9.53674316e-007, -0.0280208588, -2.63947296, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.124999918, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.00164890289, 0.028055191, -2.6114459, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.124999918, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.26446486, -0.000116348267, -7.67707825e-005, 9.17474172e-005, 6.10351563e-005, 1, 1, -9.15517885e-005, -9.17418729e-005, 9.15462078e-005, 1, -6.10351563e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.274999917, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(9.53674316e-007, 1.90734863e-006, -2.63947296, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.174999908, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.26444912, -0.0281486511, -0.219365597, 9.17009093e-005, 6.10351563e-005, 1, 1, -9.15518103e-005, -9.16953577e-005, 9.15462151e-005, 1, -6.10947609e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.124999918, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"White","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.2644515, -9.53674316e-005, -0.219363213, 9.17009093e-005, 6.10351563e-005, 1, 1, -9.15518103e-005, -9.16953577e-005, 9.15462151e-005, 1, -6.10947609e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.174999908, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.26446199, -0.028169632, -7.91549683e-005, 9.17474172e-005, 6.10351563e-005, 1, 1, -9.15517885e-005, -9.17418729e-005, 9.15462078e-005, 1, -6.10351563e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.22499992, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0, 1.04353952, 0.00177240372, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.22499992, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(0, -1.04365873, -0.000122070313, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.22499992, 0.174999997, 0.524999976))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.6487186, 0.659487367, 1.64871848))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(1.26446724, 0.0279064178, -7.39097595e-005, 9.17474172e-005, 6.10351563e-005, 1, 1, -9.15517885e-005, -9.17418729e-005, 9.15462078e-005, 1, -6.10351563e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.22499992, 0.174999997, 0.524999976))
HitboxA=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,1,"Black","HitboxA",Vector3.new(0.548718691, 0.200000003, 4.94615555))
HitboxAweld=weld(m,HandleA,HitboxA,CFrame.new(0, 0, 0, -1, 4.31581357e-005, 1.53807946e-007, 1.4864068e-007, -0.000118941069, 0.99999994, 4.31581757e-005, 1, 0.000118941069),CFrame.new(-0.0102620125, -0.0421981812, -5.16695642, 4.37025598e-008, -1, 5.96059806e-008, -1, -4.37200036e-008, 1.51011761e-007, -1.50979531e-007, -5.9603309e-008, -1))

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

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","HandleB",Vector3.new(0.344953746, 1.85412645, 0.344953775))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994874, 0, 0, 0, 1),CFrame.new(0.0160045624, 0.213553905, -0.998093128, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("CylinderMesh",HandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 1, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -2.36137581, 0.170432568, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.512499988, 0.43749997, 0.187499985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 1.81100714, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.00830316544, -2.37172699, -0.103485107, 0, 1, 0, 0, 0, -1, -1, 0, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 1, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(2.20959854, -0.170432568, 0.0103435516, 0, 0, 1, 0, -1, 0, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.187499985, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -8.22558594, 0.0514202118, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, 2.49073601, 0.157274723, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -7.96686935, 0.0841898918, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.187499985, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -0.0514202118, 8.35494423, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.249999985, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -2.36137581, 0.174527168, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.512499988, 0.43749997, 0.187499985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -2.20959854, 0.256663799, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.43749997, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.646788299, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -2.43553925, 0.00204944611, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 1, 0.81249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(2.20959854, -0.174527168, -0.0120773315, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.187499985, 0.550000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.668347895))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00204944611, -0.0914173126, 0.144706249, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.124999993, 0.0624999963, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0914173126, -0.208867073, 0.00830316544, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.112499967, 0.0624999851))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.120735168, 1.20923233, -0.525731087, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0914173126, -0.208867073, 0.014122963, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.112499967, 0.0624999851))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.28511906, -0.120735168, 0.525731087, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.37499997, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.120735168, -1.36101627, -0.525731087, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.668347895))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00204944611, 0.0896949768, 0.139539242, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.124999993, 0.0624999963, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.137985229, 1.20923233, -0.525731087, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0896949768, -0.214044571, 0.00830316544, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.112499967, 0.0624999851))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -1.28339767, -1.13975048, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.0624999963, 0.187499985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0896949768, -0.214044571, 0.014122963, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.112499967, 0.0624999851))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.28511906, 0.137985229, 0.525731087, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.37499997, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.137985229, -1.36101627, -0.525731087, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -1.39033127, -0.49296093, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.187499985, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -1.30409527, 1.13975048, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.0624999963, 0.187499985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, 1.26097298, 1.13975048, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.0624999963, 0.187499985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.137985229, -1.36101627, -0.531545162, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.28511906, -0.137985229, 0.531545162, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.37499997, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.236611366, 0.129356384, -1.28511906, 8.74227766e-008, 1, 0, 1, -8.74227766e-008, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.172481537, -0.0744886398, 1.35411167, 1, -8.74227766e-008, 0, 8.74227766e-008, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0904999524, 0.485999972, 0.404999793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.129356384, -1.31789017, 0.272830009, -1, 8.74227766e-008, 0, 0, 0, -1, -8.74227766e-008, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.129356384, -1.31789017, -0.203848839, 1, -8.74227766e-008, 0, 0, 0, -1, 8.74227766e-008, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-1.28511906, -0.129356384, -0.236611366, 0, 0, -1, -1, 8.74227766e-008, 0, 8.74227766e-008, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-1.28511906, -0.115564346, -0.260121822, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0117478371, -0.137985229, -1.45587635, -8.74227766e-008, -1, 0, -1, 8.74227766e-008, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0874999985, 0.162500009))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.137985229, -0.115241528, 1.37481308, -1, 8.74227766e-008, 0, -8.74227766e-008, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.113124944, 0.607500017, 0.506249726))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.115564346, 1.25235367, 0.291165829, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.172481537, -0.0945391655, 1.35411167, -1, 8.74227766e-008, 0, -8.74227766e-008, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0904999524, 0.485999972, 0.404999793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.129356384, 1.25235367, 0.272830009, 1, -8.74227766e-008, 0, 0, 0, 1, -8.74227766e-008, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.129356384, 1.25235367, -0.203848839, -1, 8.74227766e-008, 0, 0, 0, 1, 8.74227766e-008, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.115564346, -1.31789017, -0.2256217, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.495871037))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.137985229, -1.3282423, 0.817209721, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.249999985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.495871037))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.120735168, 1.24200726, 0.817209721, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.249999985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.517430663))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -1.28339767, -0.848265171, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.187499985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.495871037))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.137985229, 1.24200726, 0.817209721, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.249999985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.517430663))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -1.36963272, 0.848265171, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.31249997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.517430663))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, 1.19715977, 0.848265171, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.31249997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.495871037))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.120735168, -1.3282423, 0.817209721, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.249999985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -7.68573761, 0.28771162, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.0624999963, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -0.234244823, 8.07380676, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.187499985, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -0.28771162, -7.59949827, 0.999999881, 0, 0, 0, -0.99999994, 0, 0, 0, -0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.249999985, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -7.77197647, 0.234244823, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -2.09059143, 0.360152721, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.249999985, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -7.92375565, 0.21182394, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -7.60984039, 0.20319891, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.49999997, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -0.320485592, 7.77197647, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.0624999963, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -0.28771162, 7.92375565, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.124999993, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.9940033, -0.330836773, 0.0103435516, 0, 0, 1, 0, -1, 0, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 1, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, 1.93018341, 0.466011047, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, 1.82152367, 0.369420528, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.646788299, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00204944611, -1.7887516, 0.0983161926, 0, 1, 0, 0, 0, -1, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.9375, 1, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.82152367, -0.240066051, -0.0103435516, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.31249997, 0.43749997, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.9940033, -0.336652279, -0.0103435516, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 1, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, 1.60592842, 0.186600685, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 1.81100714, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.00830316544, -2.37172699, 0.0862426758, 0, 1, 0, 0, 0, -1, -1, 0, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 1, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, -0.329720974, 7.77231407, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.0624999963, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(2.02676964, -0.293530464, -0.0103435516, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.124999993, 0.74999994, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.646788299, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -1.7887516, 0.00204944611, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 1, 0.9375))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, 1.71459007, 0.260756493, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.646788299, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.00204944611, -1.7887516, 0.117282867, 0, -1, 0, 0, 0, -1, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.9375, 1, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.71459007, -0.186600685, -0.0103435516, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.31249997, 0.124999993, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.93018341, -0.28771162, 0.0103435516, 0, 0, 1, 0, -1, 0, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.31249997, 0.74999994, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, 1.71459007, 0.256663799, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, 1.60592842, 0.180776119, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(2.02676964, -0.28771162, 0.0103435516, 0, 0, 1, 0, -1, 0, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.124999993, 0.74999994, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.71459007, -0.180776119, 0.0103435516, 0, 0, 1, 0, -1, 0, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.31249997, 0.124999993, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.124181747, -0.100353718, 1.37481308, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.113124944, 0.607500017, 0.506249726))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -2.02676964, 0.466011047, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.124999993, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.115564346, 1.25235367, 0.272830009, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.124181747, -0.140022755, -1.20060539, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.113124944, 0.354374975, 0.506249726))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.115564346, -1.31789017, -0.203848839, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.124181747, -0.158359051, -1.20060539, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.113124944, 0.354374975, 0.506249726))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-1.28511906, -0.115564346, 0.236611366, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.15868187, -0.129035473, -1.21440411, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0904999524, 0.283499986, 0.404999793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.115564346, -1.31789017, 0.272830009, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -1.51969147, 0.170432568, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.388072997))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -1.28339767, -0.388392925, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.43749997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0117478371, -0.15868187, -1.21440411, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.405000001, 0.0904999897, 0.405000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.28511906, 0.120735168, 0.531545162, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.37499997, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -1.28339767, -0.585016251, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.81249994, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00830316544, 0.127635956, -1.5731554, 0, -1, 0, -1, 0, 0, -0, -0, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -1.51969147, 0.174527168, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.517430663))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -1.28339767, -0.854077816, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.187499985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.28511906, 0.120735168, 0.562595844, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.49999997, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.120735168, -1.36101627, -0.531545162, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.388072997))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -1.28339767, -0.375680447, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.43749997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -1.37998486, 0.256663799, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.124999993, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.474311411, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -8.17039299, 0.00204944611, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 1, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -1.41275597, 0.229718208, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.31249997, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0, 0.625231504, -1.04904175e-005, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(0.974999964, 0.849999964, 0.675000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00598144531, -0.108636856, 0.648684263, -0.342020124, 0.939692616, 0, 0.939692616, 0.342020124, 0, 0, 0, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, 1.15403748, 0.256659985, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.31249997, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00267028809, -0.106860161, 0.648684263, -0.422618151, -0.906307757, 0, -0.906307757, 0.422618151, 0, 0, 0, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00665950775, -0.105759621, 0.648684263, 0.42261824, 0.906307697, 0, 0.906307697, -0.42261824, 0, 0, 0, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0, -1.04572105, -1.04904175e-005, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.56249994, 0.74999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00364732742, -0.107065201, 0.648684263, 0.342020214, -0.939692557, 0, -0.939692557, -0.342020214, 0, 0, 0, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00272464752, -0.103487015, 0.646622419, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.124999993, 0.0624999963, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, -2.02676964, 0.460892677, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.124999993, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.00207138062, 0.549334526, -0.000723838806, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.0624999963, 0.81249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.00207138062, 0.700427771, -0.000723838806, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.0624999963, 0.81249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.119354248, 1.20991611, -0.531184673, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, -8.07449722, 0.104915142, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0, 0.819095135, -1.04904175e-005, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.74999994, 0.81249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -1.28304958, -0.579558372, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.81249994, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.139364243, 1.20991611, -0.531184673, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.130399704, 1.25269699, -0.226321697, 1, -8.74227766e-008, 0, 0, 0, 1, -8.74227766e-008, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-1.28511906, -0.130399704, 0.259450436, 0, 0, -1, -1, 8.74227766e-008, 0, 8.74227766e-008, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.139364243, -0.100700855, 1.37480354, 1, -8.74227766e-008, 0, 8.74227766e-008, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.113124944, 0.607500017, 0.506249726))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.114528656, 1.25269699, -0.226321697, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.28511906, 0.139364243, 0.557480812, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.49999997, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.011068821, -0.122804642, -1.45552635, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0874999985, 0.162500009))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.114528656, -1.31754303, 0.291165829, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.130399704, -1.31754303, -0.226321697, -1, 8.74227766e-008, 0, 0, 0, -1, -8.74227766e-008, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.011068821, -0.122804642, -1.2002573, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.506249964, 0.113124982, 0.506249964))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, -0.202844143, -7.40597677, 0.999999881, 0, 0, 0, -0.99999994, 0, 0, 0, -0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.249999985, 0.68749994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -1.30443859, 1.14520788, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.0624999963, 0.187499985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, -1.28304958, -1.14520788, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.0624999963, 0.187499985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -0.147681713, 8.22558403, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.31249997, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.495871037))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.119354248, -1.32858467, 0.822336197, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.249999985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.28511906, -0.119354248, 0.557480812, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.49999997, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.517430663))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -1.36928463, 0.854077816, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.31249997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.366513371, 0.366513401))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -1.28304958, 0.00272464752, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.687500238, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -1.38032341, 0.260767937, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.124999993, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, -1.41274834, 0.22357893, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.31249997, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.130399704, -1.31754303, 0.291165829, 1, -8.74227766e-008, 0, 0, 0, -1, 8.74227766e-008, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.122804642, -0.114547253, 1.37480354, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.113124944, 0.607500017, 0.506249726))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, -1.39067554, -0.502212524, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.187499985, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.157987595, -0.108965397, -1.21406174, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0904999524, 0.283499986, 0.404999793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.157987595, -0.0938639641, 1.35411167, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0904999524, 0.485999972, 0.404999793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.157987595, -0.0744695663, 1.35411167, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0904999524, 0.485999972, 0.404999793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -7.61087227, 0.215218544, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.49999997, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 4.57678843, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -4.99874783, 0.00272464752, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 1, 0.9375))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.237294197, 0.114528656, -1.28511906, 0, -1, 0, -1, 0, 0, -0, -0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.114528656, 1.25269699, -0.204157829, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.259450436, 0.130399704, -1.28511906, 8.74227766e-008, 1, 0, 1, -8.74227766e-008, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -0.293530464, -7.59949827, -0.999999881, 0, 0, 0, 0.99999994, 0, 0, 0, -0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.249999985, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -7.9234066, 0.217978477, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -0.215218544, -7.40597677, -0.999999881, 0, 0, 0, 0.99999994, 0, 0, 0, -0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.249999985, 0.68749994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -7.77197647, 0.240066051, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -8.22558403, 0.0565404892, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -0.293530464, 7.92375565, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.124999993, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0103435516, -0.240066051, 8.07380676, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.187499985, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -8.07449722, 0.110336781, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, -0.157261372, 8.22558403, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.31249997, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00830316544, -0.144189835, -1.57418728, 0, -1, 0, -1, 0, 0, -0, -0, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -7.96686935, 0.0882806778, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.187499985, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, 1.17542744, -0.455316544, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.187499985, 0.68749994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.139364243, -0.158734798, -1.2002573, 1, -8.74227766e-008, 0, -8.74227766e-008, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.113124944, 0.354374975, 0.506249726))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.495871037))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.139364243, -1.32858467, 0.822336197, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.249999985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.139364243, -0.139313221, -1.2002573, -1, 8.74227766e-008, 0, 8.74227766e-008, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.113124944, 0.354374975, 0.506249726))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -7.68573761, 0.293530464, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.0624999963, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, 1.26166248, 1.14520788, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.0624999963, 0.187499985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.517430663))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, 1.19681168, 0.854077816, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.31249997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, -0.0565404892, 8.35459518, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.249999985, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.103485107, -3.29895449, -0.00830316544, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.249999985, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.646788299, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -7.61087227, 0.00272464752, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 1, 0.9375))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, 1.17542744, 0.299457073, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.187499985, 0.68749994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.173856735, -0.129733562, -1.21406174, 1, -8.74227766e-008, 0, -8.74227766e-008, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0904999524, 0.283499986, 0.404999793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, 1.17542744, 0.304910183, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.187499985, 0.68749994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, 2.49038315, 0.147681713, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.43749997, 0.43749997, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0862426758, -3.29895449, -0.00830316544, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.249999985, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.646788299, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.00272464752, -2.43657112, 0.0758972168, 0, 1, 0, 0, 0, -1, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.81249994, 1, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(2.66286087, 0.147681713, -0.0110378265, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.0624999963, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -2.20959854, 0.260756493, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.43749997, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, 1.82152367, 0.360152721, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.93018341, -0.293530464, -0.0103435516, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.31249997, 0.74999994, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.82152367, -0.234244823, 0.0103435516, 0, 0, 1, 0, -1, 0, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.31249997, 0.43749997, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0103435516, -2.09059143, 0.369420528, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.249999985, 0.31249997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(2.09059143, -0.229718208, -0.0103435516, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.49999997, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, 1.93018341, 0.460892677, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.31249997, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, 1.17542744, -0.449858665, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.187499985, 0.68749994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.173856735, -0.108965397, -1.21406174, -1, 8.74227766e-008, 0, 8.74227766e-008, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0904999524, 0.283499986, 0.404999793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(2.09059143, -0.223897457, 0.0103435516, 0, 0, 1, 0, -1, 0, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.49999997, 0.56249994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.011068821, -0.173856735, -1.21406174, -8.74227766e-008, -1, 0, -1, 8.74227766e-008, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.405000001, 0.0904999897, 0.405000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.495871037))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.119354248, 1.24234486, 0.822336197, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.249999985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.259450436, 0.114528656, -1.28511906, 0, -1, 0, -1, 0, 0, -0, -0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.249999985, 0.0624999963, 0.124999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.011068821, -0.139364243, -1.2002573, -8.74227766e-008, -1, 0, -1, 8.74227766e-008, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.506249964, 0.113124982, 0.506249964))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.0110378265, 1.15403748, 0.260767937, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.68749994, 0.31249997, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-1.04904175e-005, -0.103485107, 0.646622419, 8.74227766e-008, -1, 0, -1, -8.74227766e-008, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.124999993, 0.0624999963, 0.249999985))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.130399704, 1.25269699, 0.291165829, -1, 8.74227766e-008, 0, 0, 0, 1, 8.74227766e-008, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(1.28511906, -0.139364243, 0.562925816, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.49999997, 0.0624999963, 0.0624999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Toothpaste","Part",Vector3.new(0.344953746, 0.344953746, 0.495871037))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.139364243, 1.24234486, 0.822336197, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0624999963, 0.249999985, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.344953746, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(2.66286087, -0.157261372, -0.0110378265, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.56249994, 0.0624999963, 0.43749997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Pastel blue-green","Part",Vector3.new(0.344953746, 0.646788299, 0.344953775))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(0.00204944611, -2.43553925, 0.0965919495, 0, -1, 0, 0, 0, -1, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.81249994, 1, 0.0624999963))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Pastel blue-green","HitboxB",Vector3.new(0.344953746, 4.62678862, 0.674953699))
HitboxBweld=weld(m,HandleB,HitboxB,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, 0),CFrame.new(-0.0110378265, -4.6137476, 0.000301837921, -1, 0, 0, 0, 0, -1, -0, -1, -0))

function attackone()
	attack=true
	con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,50,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
	end
	so("http://www.roblox.com/asset/?id=233856140",HitboxA,1,1) 
	so("http://www.roblox.com/asset/?id=234365549",HitboxA,1,1) 
	for i=0,1,0.1 do
		swait()
		local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxA.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(10),math.rad(-80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(-30),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
	end
	attack=false
	con1:disconnect()
end

function attacktwo()
	attack=true
	con1=HitboxB.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
	end
	so("http://www.roblox.com/asset/?id=233856146",HitboxB,1,1) 
	so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
	for i=0,1,0.1 do
		swait()
			local blcf = HitboxB.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxB.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(-10),math.rad(80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(-30),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
	end
	attack=false
	con1:disconnect()
end

function spin()
attack=true
con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
for i=0,1,1 do
so("http://roblox.com/asset/?id=231917987",Torso,1,1)
swait()
for i=0,1,0.1 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxA.Position-scfr.p).magnitude > .1  then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-1,-1)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-1,-1)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5)*euler(0,-1.5,6*i),.3)
end
end
con1:disconnect()
con2:disconnect()
attack=false
end

function kick()
attack=true
con1=LeftLeg.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
Humanoid.WalkSpeed = 0
for i=0,1,0.2 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-90),math.rad(-90),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=200632211",LeftLeg,1,1) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(100),math.rad(-90),math.rad(0)),.3)
end
attack=false
Humanoid.WalkSpeed = 16
con1:disconnect()
end

function DualStab()
attack=true
con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
	so("http://www.roblox.com/asset/?id=233856146",HitboxA,1,1) 
	so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(130),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-130),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-1,-1)*angles(math.rad(-120),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-1,-1)*angles(math.rad(-120),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*50
end
con1:disconnect()
con2:disconnect()
attack=false
end

function DualSlash()
attack=true
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(50),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(-50),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
so("http://www.roblox.com/asset/?id=233856146",HitboxA,1,1) 
so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(20),math.rad(60)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-20),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-1,-1)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-1,-1)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
end
con1:disconnect()
con2:disconnect()
attack=false
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
		end
	end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			spin()
		end
		elseif k=='e' then
		if attack==false then
			kick()
		end
		elseif k=='r' then
		if attack==false then
			DualStab()
		end
		elseif k=='f' then
		if attack==false then
			DualSlash()
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
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(20),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(20),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-50),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-50),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(20),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-10)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
end
end
end
end