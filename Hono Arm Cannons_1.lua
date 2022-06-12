Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
Mouse=Player:GetMouse()
local m1=Instance.new('Model',Character)
m1.Name="GunModel"
local m2=Instance.new('Model',Character)
m2.Name="BladeModel"
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
local Mode = "GunMode"
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
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

local TrailColor = ("Really red")
 
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

HandleA=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1.01999998, 0.210000008, 0.200000003))
HandleAweld=weld(m1,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00601291656, 0.902695894, -0.0106921196, 6.92903996e-006, -0.000916787016, 0.999999404, 0.000216525354, 0.999999523, 0.000916785619, -0.999999702, 0.000216518922, 7.15255737e-006))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.810000002, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200034142, 0.0993332863, -0.510296345, -0.999998927, -0.000709082757, 0.000795230328, -0.000709116226, 0.999999881, -4.12791123e-005, -0.000795172411, -4.18431882e-005, -0.999999404))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000006, 1))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0243177414, -0.909710884, -0.50538063, 0.706621885, -0.707591116, -7.46296791e-007, 0.000227723445, 0.000228591467, -0.999999583, 0.707590938, 0.706622243, 0.00032277382))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.210000008))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000492095947, -1.60544538, -0.404047966, 0.999999642, 0.000637817895, 6.16828402e-006, -0.000637817895, 0.99999994, -1.12666585e-005, -6.21400113e-006, 1.12628795e-005, 0.999999762))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.810000002, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399835587, 0.0993037224, -0.51012373, -0.999999106, -0.000720874115, 0.00079501915, -0.000720907294, 0.999999881, -4.11022738e-005, -0.000795172586, -4.16757975e-005, -0.999999106))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(1, 0.200000003, 1.39999998))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000437736511, -1.02025604, -0.805628538, 0.999999583, -0.000131279055, -1.82135318e-006, -1.76037474e-006, 0.000462549535, -0.999999464, 0.000131278823, 0.99999994, 0.000462549244))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.810000002, 0.200000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299925804, 0.0993540287, -0.410134315, -0.999999344, -0.000737508526, 0.000795000698, -0.000737541181, 0.999999881, -4.08653723e-005, -0.000794904539, -4.14518618e-005, -0.999999225))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.00000024, 0.400000006, 0.200000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000442504883, -0.910725594, -1.605968, 0.999999702, 0.00027906883, 2.27590908e-006, 2.00013483e-006, 0.000456643, -0.999999642, -0.000279070169, 1, 0.000456642243))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.01999998, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.41019392, -0.000547409058, -1.70559025, -2.18768628e-006, -0.000355395663, -0.999999464, -0.999999404, -0.000783216441, 2.51741312e-006, -0.000783217489, 0.999999762, -0.000355393538))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.60000002, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.910942078, -2.30604672, 0.699171066, -2.72884017e-006, -0.000458225637, 0.999999523, -0.000415054383, 0.99999994, 0.000458224356, -0.999999523, -0.000415052753, -2.82689234e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.810000002, 0.200000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300088882, 0.0992658138, -0.610044479, -0.999999166, -0.00074226805, 0.000794910244, -0.000742300821, 0.999999881, -4.07908701e-005, -0.000794904656, -4.13811977e-005, -0.999999225))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000006, 1))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.799346924, -0.910316944, -1.00568414, 0.999999642, 0.000153747736, 1.13118676e-006, 9.54705683e-007, 0.000459202245, -0.999999404, -0.000153748784, 1, 0.00045920207))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.60000002, 0.200000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.910498142, -1.30583644, 0.999139786, -3.20934237e-006, -0.000454228022, 0.999999523, -0.000495601096, 0.99999994, 0.000454226451, -0.999999762, -0.000495599408, -3.52978827e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.399999976, 1))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.806668758, -1.11970043, -0.00100421906, 0.00102211558, -0.999997914, 1.08030763e-005, 6.4668925e-006, -1.07969136e-005, -0.999999583, 0.999997377, 0.00102211558, 6.25147823e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=218516461",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.400000006, 1.4000001))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000503540039, -0.510239124, -1.00575256, 0.999999642, -7.32245971e-005, -9.14712473e-007, -9.99394615e-007, 0.000461434625, -0.999999344, 7.32244225e-005, 1, 0.000461434363))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.210000008))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000339508057, -0.205507278, 0.405237198, 0.999999642, -2.94688507e-005, -3.53896212e-007, 2.9468385e-005, 1.00000012, 1.56559838e-006, 4.28780822e-007, -1.56530632e-006, 0.999999344))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.22000003, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.411117554, -0.100200176, -0.10565567, 0.999999583, -0.000119221688, -1.52071971e-006, -1.55111275e-006, 0.000461844902, -0.999999523, 0.000119221571, 0.99999994, 0.000461844553))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 1))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.909956455, -0.22321701, 1.50557947, 4.16988269e-006, -0.000457662361, 0.999999523, -0.706443846, -0.707768977, -0.000320927968, 0.707768798, -0.706443965, -0.000326169626))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.22000003, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.408623695, -0.100821018, -1.70613909, 0.999999583, -0.000117158575, -1.52027224e-006, -1.64116545e-006, 0.000462548138, -0.999999404, 0.000117158575, 0.99999994, 0.000462547934))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.909699917, -1.09884357, 0.293745279, -1.08326913e-006, -0.0004489985, 0.999999404, 0.999999702, 0.000200630981, 1.27544945e-006, -0.000200631912, 1, 0.000448998238))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.22000003, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410476685, -0.100874901, -1.70551181, 0.999999821, -0.000135789684, -1.92663629e-006, -1.7604907e-006, 0.000462676369, -0.999999464, 0.000135789916, 0.99999994, 0.000462675991))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.60000002, 0.200000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.910520554, -1.3059237, 0.998523712, 3.20733693e-006, 0.000456415466, -0.999999523, -0.000475926179, 0.999999881, 0.000456413894, 0.999999702, 0.000475924375, 3.54042868e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.40000033, 0.400000006, 2))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000133514404, -0.910128593, -0.505455256, 0.999999642, 0.000311950862, 3.32610989e-006, 3.20828326e-006, 0.000455383357, -0.999999523, -0.000311952725, 1, 0.000455382135))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.90948534, -0.588850975, 0.695396423, -3.04509967e-006, 0.000449814048, -0.999999642, -0.999999702, -0.000160418916, 3.02479157e-006, -0.000160417985, 1, 0.000449814426))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.909722328, -1.09856606, 0.295041084, 1.25959377e-006, 0.000451713684, -0.999999404, -0.999999821, -0.000212759187, -1.45689e-006, -0.000212760177, 1, 0.000451713364))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.7987957, -0.9103055, -1.00566292, 0.999999642, 0.000153897563, 1.13121905e-006, 9.5505402e-007, 0.000458822033, -0.999999404, -0.000153898611, 1, 0.000458821829))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 1.22000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.404272079, -0.205385447, 0.100467205, 0.999999762, -3.15317884e-005, -4.43748831e-007, 3.15313227e-005, 1.00000012, 1.30433352e-006, 4.88144906e-007, -1.30410308e-006, 0.999999523))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 1.22000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.404764175, -0.205312014, 0.100367546, 0.999999523, -5.50336554e-005, -5.82949724e-007, 5.50331897e-005, 1.00000012, 1.14786485e-006, 6.66815595e-007, -1.14769523e-006, 0.999999523))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.810000002, 0.200000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299371719, 0.0993876457, -0.410626888, -0.999999106, -0.000744298974, 0.000794879976, -0.000744331744, 0.999999881, -4.07871885e-005, -0.000794845051, -4.13790913e-005, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 1.01999998))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403924942, -1.60569715, 0.000243186951, 0.999999642, 0.000154435926, 1.8465912e-006, -0.00015443645, 1.00000012, -3.93629716e-006, -1.87104388e-006, 3.93616801e-006, 0.999999583))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.210000008))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000514984131, -1.60579109, 0.405591488, 0.999999702, 0.000616875419, 5.9253307e-006, -0.000616875419, 1, -1.15516968e-005, -5.78212894e-006, 1.15482753e-005, 0.999999762))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(1.00000036, 0.400000006, 0.200000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000287055969, -0.909729958, 0.394920945, 0.999999642, 0.000218851783, 2.21816663e-006, 2.14913416e-006, 0.000456655747, -0.999999523, -0.000218853063, 1, 0.000456655165))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.25, 1.10000002))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000006, 1))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0245990753, -0.909721375, -0.505870819, 0.706469238, 0.707743764, -6.31757757e-008, -0.000231502752, 0.000230873076, -0.999999523, -0.707743526, 0.706469417, 0.000326845853))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.599999964, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.910820007, -2.00589633, 0.299592018, 3.17787021e-006, 0.00045605065, -0.999999642, -0.000460765994, 0.999999881, 0.000456048991, 0.999999583, 0.000460764189, 3.41793589e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.810000002, 0.200000003))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299167633, 0.0992984772, -0.610538006, -0.999999225, -0.000732926477, 0.000794942083, -0.000732959365, 0.999999881, -4.09263121e-005, -0.000794934342, -4.15092363e-005, -0.999999166))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.909502506, -0.599749565, 0.694995403, -3.35579898e-007, -0.000451868313, 0.999999404, 0.999999762, 0.000160708791, 4.02537808e-007, -0.000160709431, 1, 0.000451868167))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.909495831, -0.59880352, 0.695057034, 6.4822143e-007, 0.000452179025, -0.999999642, -0.999999762, -0.000158943934, -5.80969754e-007, -0.000158944691, 1, 0.000452178705))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 1.01999998))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.405106544, -1.60561466, 0.000225543976, 0.999999642, 0.000175392313, 2.208757e-006, -0.000175392546, 1.00000012, -4.08470214e-006, -2.16920262e-006, 4.08442611e-006, 0.999999523))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.60000002, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.910933971, -2.30625892, 0.699104309, 2.73067462e-006, 0.000456224807, -0.999999523, -0.000438791845, 0.999999881, 0.000456223526, 0.999999464, 0.000438790128, 2.83203235e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.01999998, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409638405, -0.00014591217, -0.104890108, -2.18768628e-006, -0.000355395663, -0.999999464, -0.999999404, -0.000783216441, 2.51741312e-006, -0.000783217489, 0.999999762, -0.000355393538))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1, 0.800000012))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.90993309, -1.50450993, 0.225377083, -9.54144525e-007, -0.00045981427, 0.999999404, 0.706453145, 0.707759619, 0.000326111593, -0.707759261, 0.706453383, 0.000324085588))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.810000002, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199476242, 0.0993714333, -0.510579109, -0.999999225, -0.000713866786, 0.000795169675, -0.000713899964, 0.999999881, -4.12086556e-005, -0.000795172469, -4.1776555e-005, -0.999999106))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.599999964, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.910819054, -2.00598288, 0.299651146, -2.95224163e-006, -0.00045835285, 0.999999583, -0.000438263029, 0.999999881, 0.000458351482, -0.999999523, -0.000438261253, -3.14484259e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.210000008))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000329971313, -0.205160379, -0.404402494, 0.999999702, -2.71389144e-005, -2.93786798e-007, 2.71383906e-005, 1.00000024, 1.66046027e-006, 3.84163286e-007, -1.6602404e-006, 0.999999523))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.22000003, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.408882141, -0.100205898, -0.104806185, 0.999999583, -0.000119221688, -1.52071971e-006, -1.55111275e-006, 0.000461844902, -0.999999523, 0.000119221571, 0.99999994, 0.000461844553))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.810000002, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399191856, 0.0993947983, -0.510787964, -0.999999225, -0.000704300532, 0.000795231375, -0.000704333768, 0.999999881, -4.135364e-005, -0.000795231957, -4.19139687e-005, -0.999999166))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0.5,"Bright red","Part",Vector3.new(1, 0.400000006, 0.99999994))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000380516052, -1.12010813, -0.805575848, 0.999999642, -3.12970951e-006, 2.43362592e-008, 4.48962965e-008, 0.000460115814, -0.999999344, 3.12930206e-006, 1.00000012, 0.000460115785))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.909489155, -0.589746475, 0.694995165, -4.99348062e-007, -0.00045202655, 0.999999464, 0.999999642, 0.000149068306, 5.19225978e-007, -0.000149069005, 1, 0.000452026463))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.24000001, 1, 1))
BarrelA2=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,2,"Really black","BarrelA2",Vector3.new(0.400000036, 0.400000006, 0.400000036))
BarrelA2weld=weld(m1,HandleA,BarrelA2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299783707, 0.694409728, -0.510775089, -0.999999106, -0.000751217012, 0.000794878521, -0.000751249609, 0.999999881, -4.04268467e-005, -0.000794845342, -4.10242283e-005, -0.999999046))
mesh("CylinderMesh",BarrelA2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.400000006))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299256325, 0.0943014622, -0.510558128, -0.999999106, -0.000765180215, 0.000794726482, -0.000765212579, 0.999999821, -4.02083169e-005, -0.000794711406, -4.08166525e-005, -0.999999166))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.800000012, 0.400000036))
Partweld=weld(m1,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.30008316, 0.0943102837, -0.510088444, -0.999999106, -0.000751217012, 0.000794878521, -0.000751249609, 0.999999881, -4.04268467e-005, -0.000794845342, -4.10242283e-005, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BarrelA1=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,2,"Really black","BarrelA1",Vector3.new(0.400000036, 0.400000006, 0.400000036))
BarrelA1weld=weld(m1,HandleA,BarrelA1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300215721, 0.694310427, -0.510293961, -0.999999106, -0.000751217012, 0.000794878521, -0.000751249609, 0.999999881, -4.04268467e-005, -0.000794845342, -4.10242283e-005, -0.999999046))
mesh("CylinderMesh",BarrelA1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
HitboxA=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,1,"Bright red","HitboxA",Vector3.new(0.400000036, 3.60000014, 2.39999986))
HitboxAweld=weld(m1,HandleA,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.910625935, -2.29495311, 0.000671386719, 1.65541678e-006, -2.44985004e-005, -0.999999523, 0.00162831508, -0.999998689, 2.45010415e-005, -0.999997854, -0.00162837585, -1.85656972e-006))

HandleB=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1.01999998, 0.210000008, 0.200000003))
HandleBweld=weld(m1,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00521659851, 0.902703285, 0.00110328197, -6.91729065e-006, -0.000916737656, -0.999999642, -0.000216509899, 0.999999523, -0.000916736317, 1, 0.000216503424, -7.11577059e-006))
BarrelB2=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,2,"Really black","BarrelB2",Vector3.new(0.400000036, 0.400000006, 0.400000036))
BarrelB2weld=weld(m1,HandleB,BarrelB2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301452637, 0.694670916, 0.499202967, 0.999999046, 0.0010826512, -0.000794843771, -0.00108227541, 0.999999404, 0.000473449356, 0.000795328175, -0.000472588668, 0.999999225))
mesh("CylinderMesh",BarrelB2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.22000003, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.411119461, -0.100201607, -0.105655193, 1.00000012, -0.00011922128, -1.69845316e-006, -1.64339235e-006, 0.000461844931, -0.99999994, 0.000119221921, 0.99999994, 0.000461844698))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.22000003, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.408880234, -0.100208461, -0.104805708, 1.00000012, -0.00011922128, -1.69845316e-006, -1.64339235e-006, 0.000461844931, -0.99999994, 0.000119221921, 0.99999994, 0.000461844698))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.400000006, 1.4000001))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000503540039, -0.510238647, -1.00575376, 1.00000012, -7.32243061e-005, -1.06067819e-006, -1.02689046e-006, 0.000461434742, -0.99999994, 7.32247718e-005, 1, 0.000461434654))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.210000008))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000328063965, -0.205159426, -0.404401898, 1.00000012, -2.71386816e-005, -3.42850399e-007, 2.7138798e-005, 1.00000024, 1.66038149e-006, 3.42805833e-007, -1.66039138e-006, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.810000002, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199474335, 0.0993717909, -0.510580003, -0.999999583, -0.000713867019, 0.000795202388, -0.000713899906, 0.999999881, -4.12087356e-005, -0.00079517276, -4.17764059e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.399999976, 1))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.806668758, -1.11970067, -0.0010061264, 0.0010221157, -0.999997914, 1.08031745e-005, 6.35393553e-006, -1.07969336e-005, -1, 0.999997854, 0.00102211593, 6.34293337e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=218516461",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.599999964, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.910819292, -2.00598335, 0.2996521, -3.00354463e-006, -0.000458352966, 0.99999994, -0.000438262883, 0.999999881, 0.000458351598, -0.99999994, -0.000438261486, -3.20442314e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.810000002, 0.200000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299929619, 0.0993545055, -0.410133362, -0.999999583, -0.000737508642, 0.000795009022, -0.000737541239, 0.999999881, -4.08654814e-005, -0.000794978638, -4.14518072e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.210000008))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000490188599, -1.60544825, -0.40404737, 0.999999881, 0.000637817953, 6.16506532e-006, -0.000637817837, 0.99999994, -1.12668004e-005, -6.17224987e-006, 1.12628632e-005, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.810000002, 0.200000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299369812, 0.0993840694, -0.410629034, -0.999999583, -0.000744299265, 0.000794907508, -0.000744331861, 0.999999881, -4.07872976e-005, -0.000794876833, -4.1378953e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.909701705, -1.09884548, 0.29374373, -1.15321882e-006, -0.000448998646, 0.99999994, 1.00000012, 0.000200631155, 1.2433029e-006, -0.000200631737, 1, 0.000448998384))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 1.22000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.404763222, -0.205310822, 0.100368083, 1, -5.50333643e-005, -6.90408342e-007, 5.50334225e-005, 1.00000012, 1.14775594e-006, 6.90346042e-007, -1.14778663e-006, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.909502804, -0.599750519, 0.694995999, -4.50516836e-007, -0.000451868516, 0.99999994, 1.00000012, 0.000160708907, 5.23136805e-007, -0.000160709082, 1, 0.000451868429))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(1, 0.200000003, 1.39999998))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000434875488, -1.02025652, -0.805627584, 1.00000012, -0.000131278648, -1.848176e-006, -1.78745313e-006, 0.000462549651, -0.99999994, 0.000131279288, 0.99999994, 0.000462549389))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 1.22000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.404273033, -0.205385447, 0.100466967, 1.00000012, -3.15316138e-005, -4.12337613e-007, 3.1531672e-005, 1.00000012, 1.30428373e-006, 4.12296686e-007, -1.30428566e-006, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1, 0.800000012))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.909932375, -1.50451183, 0.22537899, -9.97381449e-007, -0.000459814415, 0.99999994, 0.706453502, 0.707759559, 0.000326142646, -0.707759559, 0.706453383, 0.000324131543))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 1.01999998))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.405105591, -1.60561681, 0.000225901604, 1.00000012, 0.000175392546, 2.13072462e-006, -0.000175392488, 1.00000012, -4.08471533e-006, -2.1314404e-006, 4.08434789e-006, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.810000002, 0.200000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.30009079, 0.0992664099, -0.610045373, -0.999999583, -0.000742268283, 0.00079497043, -0.000742300879, 0.999999881, -4.07910084e-005, -0.000794939871, -4.13811067e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.00000024, 0.400000006, 0.200000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00043964386, -0.910725951, -1.60597086, 1.00000012, 0.000279069063, 2.06355298e-006, 1.93611731e-006, 0.000456642971, -0.99999994, -0.000279069995, 1, 0.000456642418))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000006, 1))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0245990753, -0.909722567, -0.505868912, 0.706469595, 0.707743764, -1.34443781e-007, -0.000231479891, 0.000230873207, -1, -0.707743704, 0.706469476, 0.000326933281))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.810000002, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399188995, 0.0993949175, -0.510789394, -0.999999464, -0.000704300648, 0.00079527928, -0.000704333768, 0.999999881, -4.13537236e-005, -0.000795250002, -4.19138451e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.810000002, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399837494, 0.0993038416, -0.510124326, -0.999999583, -0.000720874465, 0.000795144413, -0.000720907294, 0.999999881, -4.1102383e-005, -0.000795114494, -4.16755938e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.01999998, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409636855, -0.000144004822, -0.104890108, -2.24786072e-006, -0.000355395576, -1, -0.999999762, -0.000783216674, 2.52621203e-006, -0.000783217489, 0.999999762, -0.000355393684))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 1.01999998))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.403925896, -1.60569644, 0.00024330616, 1.00000012, 0.000154436217, 1.84760393e-006, -0.000154436158, 1.00000012, -3.93636947e-006, -1.84821192e-006, 3.93609025e-006, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.60000002, 0.200000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.910499156, -1.30583549, 0.999141693, -3.29535669e-006, -0.000454228197, 0.99999994, -0.00049560098, 0.99999994, 0.000454226538, -1, -0.000495599466, -3.52047232e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.210000008))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000337600708, -0.205507517, 0.405237138, 1.00000012, -2.94685597e-005, -3.74370757e-007, 2.94686179e-005, 1.00000012, 1.56549049e-006, 3.74324372e-007, -1.56549845e-006, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.01999998, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410192251, -0.000547409058, -1.70559192, -2.24786072e-006, -0.000355395576, -1, -0.999999762, -0.000783216674, 2.52621203e-006, -0.000783217489, 0.999999762, -0.000355393684))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.798799515, -0.910306394, -1.00566459, 1.00000012, 0.000153897854, 1.11723057e-006, 1.04661831e-006, 0.000458822207, -0.99999994, -0.00015389832, 1, 0.000458822033))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.40000033, 0.400000006, 2))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000130653381, -0.910126984, -0.505456924, 1.00000012, 0.000311951037, 3.37332835e-006, 3.23127028e-006, 0.000455383473, -0.99999994, -0.00031195255, 1, 0.000455382426))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.60000002, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.910933912, -2.30626202, 0.699104309, 2.71253521e-006, 0.000456224865, -0.99999994, -0.000438791641, 0.999999881, 0.000456223614, 0.99999994, 0.000438790419, 2.91272272e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.909485877, -0.588849068, 0.695395827, -3.07688242e-006, 0.000449814048, -0.99999994, -1.00000012, -0.000160419149, 3.00472266e-006, -0.000160417752, 1, 0.000449814514))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.810000002, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200036049, 0.0993337631, -0.510296583, -0.999999464, -0.000709083106, 0.000795240747, -0.000709116168, 0.999999881, -4.12792506e-005, -0.000795211352, -4.18431446e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.22000003, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.408623695, -0.100821435, -1.70614004, 1.00000012, -0.000117158168, -1.65958318e-006, -1.60539275e-006, 0.000462548312, -0.99999994, 0.000117158925, 0.99999994, 0.00046254808))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(1.00000036, 0.400000006, 0.200000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000291824341, -0.909731448, 0.394920468, 1, 0.000218852016, 2.11296856e-006, 2.01302828e-006, 0.000456655718, -0.99999994, -0.000218852947, 1, 0.000456655252))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.25, 1.10000002))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.909488797, -0.589749336, 0.694995999, -5.45072908e-007, -0.000452026696, 0.99999994, 1.00000012, 0.000149068597, 6.12456006e-007, -0.000149068772, 1, 0.000452026608))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.24000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000006, 1))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0243177414, -0.909711123, -0.505382538, 0.706622243, -0.707591176, -7.77533842e-007, 0.000227804718, 0.000228591642, -1, 0.707591176, 0.706622243, 0.000322720531))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.22000003, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410474777, -0.100875676, -1.70551252, 1.00000012, -0.000135789509, -1.91163963e-006, -1.84881401e-006, 0.000462676428, -0.99999994, 0.000135790266, 0.99999994, 0.000462676137))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.810000002, 0.200000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299166679, 0.0992978811, -0.610537946, -0.999999583, -0.00073292671, 0.000795047556, -0.000732959365, 0.999999881, -4.09264503e-005, -0.000795017288, -4.15091745e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.459999979))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.210000008))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000512123108, -1.60579109, 0.405592978, 0.99999994, 0.000616875477, 5.88053217e-006, -0.000616875361, 1, -1.15517523e-005, -5.8876567e-006, 1.15481243e-005, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.599999964, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.910819769, -2.00589943, 0.299591064, 3.17494141e-006, 0.000456050679, -0.99999994, -0.000460765878, 0.999999881, 0.000456049136, 1.00000012, 0.00046076451, 3.38507402e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.60000002, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.910942733, -2.30604911, 0.699176788, -2.68805752e-006, -0.000458225666, 0.99999994, -0.000415054266, 0.99999994, 0.000458224502, -1, -0.000415052986, -2.87824605e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.909497142, -0.598801613, 0.695056319, 6.35209744e-007, 0.000452179054, -0.99999994, -1.00000012, -0.000158944051, -7.07080744e-007, -0.000158944284, 1, 0.000452178909))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0.5,"Bright red","Part",Vector3.new(1, 0.400000006, 0.99999994))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000376701355, -1.1201086, -0.805576801, 1.00000012, -3.12953489e-006, 1.24504822e-007, 1.25944098e-007, 0.000460115989, -0.99999994, 3.1295931e-006, 1.00000012, 0.000460116018))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 1))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.909956217, -0.223212242, 1.50558186, 4.14528085e-006, -0.000457662478, 0.99999994, -0.706444144, -0.707768917, -0.000320990832, 0.707768917, -0.706443965, -0.00032624678))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.909722984, -1.0985651, 0.295041203, 1.37364941e-006, 0.000451713888, -0.99999994, -1, -0.000212759187, -1.46975617e-006, -0.000212759827, 1, 0.000451713568))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.60000002, 0.200000003))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.910520196, -1.30592656, 0.998521805, 3.21776224e-006, 0.000456415524, -0.99999994, -0.000475926034, 0.999999881, 0.000456413953, 1, 0.000475924608, 3.43498232e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000006, 1))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.799344063, -0.91031605, -1.00568509, 1.00000012, 0.000153748028, 1.11755071e-006, 1.04694891e-006, 0.00045920242, -0.99999994, -0.000153748551, 1, 0.000459202245))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.400000006))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299254417, 0.0943024158, -0.510557652, -0.999999523, -0.000765180506, 0.000794780906, -0.000765212579, 0.999999821, -4.0208397e-005, -0.000794749882, -4.08165506e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.800000012, 0.400000036))
Partweld=weld(m1,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300086021, 0.0943112373, -0.510091066, -0.999999583, -0.000751217362, 0.000794898311, -0.000751249609, 0.999999881, -4.04269231e-005, -0.000794867636, -4.10240827e-005, -0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BarrelB1=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,2,"Really black","BarrelB1",Vector3.new(0.400000036, 0.400000006, 0.400000036))
BarrelB1weld=weld(m1,HandleB,BarrelB1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298545837, 0.694571614, 0.499684155, 0.999999046, 0.0010826512, -0.000794843771, -0.00108227541, 0.999999404, 0.000473449356, 0.000795328175, -0.000472588668, 0.999999225))
mesh("CylinderMesh",BarrelB1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
HitboxB=part(Enum.FormFactor.Custom,m1,Enum.Material.SmoothPlastic,0,1,"Bright red","HitboxB",Vector3.new(0.400000036, 3.60000014, 2.39999986))
HitboxBweld=weld(m1,HandleB,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.8993541, -2.2953887, -0.000197410583, -1.20175173e-006, -0.000457523565, 0.999999702, 0.000205208897, -0.999999881, -0.000457523332, 0.999999404, 0.000205146847, 1.51164659e-006))

BHandleA=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Handle",Vector3.new(1.00000036, 0.400000006, 2))
handleAweld=weld(m2,Character["Right Arm"],BHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00464439392, 0.890144825, 2.39763689, -4.9116361e-006, -0.000711855828, -0.999999762, -1, 0.00024034064, 4.74054968e-006, 0.000240337235, 0.999999642, -0.00071185705))
mesh("BlockMesh",BHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.25, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.51000005, 1.60000002))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000851154327, -0.243443489, 1.80064034, -2.58627915e-006, 1, -7.99579266e-006, -1, -2.58638693e-006, -1.35781593e-005, -1.35782175e-005, 7.99576082e-006, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.490000039, 1.60000002))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000863552094, -0.255933762, 1.80045962, 6.18230024e-006, -1, 1.03384036e-005, 1, 6.18252443e-006, 2.16971384e-005, -2.16971966e-005, 1.03382654e-005, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.600000024, 0.399999976))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.71661377e-005, -0.799008369, 1.68085098e-005, -4.94010101e-006, 1, -6.99967222e-006, -1.00000012, -4.93977359e-006, 4.67893551e-005, 4.67892969e-005, 6.99990551e-006, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00021314621, -0.599427223, -0.400175571, 1.53349902e-008, 1, -1.08373715e-005, 0.999999642, -5.67024472e-009, 0.000891857664, 0.000891857664, -1.08373733e-005, -0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000226020813, -0.599549294, 0.400123954, 1.07365395e-007, -1, 6.84314591e-006, -1.00000012, -1.06840616e-007, 7.66707235e-005, -7.66706653e-005, -6.84315637e-006, -1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.399999976))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000403881073, -0.69838047, 0.800340712, -2.99596968e-006, 1, -7.89992555e-006, -1, -2.99602061e-006, -6.59289071e-006, -6.59294892e-006, 7.89990372e-006, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00023317337, -0.598741531, -0.4001562, -6.71329872e-008, -1, 7.83627729e-006, -1, 6.72057467e-008, 9.17859143e-006, -9.17853322e-006, -7.83628093e-006, -1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000181674957, -0.59961319, 0.400129855, -2.05418473e-007, 1, -1.10590672e-005, 0.999999642, 2.15461569e-007, 0.000908143935, 0.000908143935, -1.10588726e-005, -0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.600000024, 0.399999976))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.43186951e-005, -0.799318314, 1.93715096e-005, 4.8664283e-006, -1, 1.09996372e-005, 0.999999642, 4.87616353e-006, 0.00088524021, -0.000885240268, 1.0995318e-005, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.399999976))
Partweld=weld(m2,BHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00043296814, -0.699325562, 0.800350547, 2.85850365e-006, -1, 1.07140386e-005, 0.999999642, 2.8678387e-006, 0.00087142986, -0.00087142986, 1.07115484e-005, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))

BHandleB=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Handle",Vector3.new(1.00000036, 0.400000006, 2))
handleBweld=weld(m2,Character["Left Arm"],BHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00463676453, -0.909854889, 2.39806938, -4.9116361e-006, -0.000711855828, -0.999999762, -1, 0.00024034064, 4.74054968e-006, 0.000240337235, 0.999999642, -0.00071185705))
mesh("BlockMesh",BHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.25, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.51000005, 1.60000002))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000851407647, -0.243443489, 1.80064046, -2.58627915e-006, 1, -7.99579266e-006, -1, -2.58638693e-006, -1.35781593e-005, -1.35782175e-005, 7.99576082e-006, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.490000039, 1.60000002))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00086325407, -0.255933762, 1.80045962, 6.18230024e-006, -1, 1.03384036e-005, 1, 6.18252443e-006, 2.16971384e-005, -2.16971966e-005, 1.03382654e-005, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.600000024, 0.399999976))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.74045563e-005, -0.799009323, 1.68085098e-005, -4.94010101e-006, 1, -6.99967222e-006, -1.00000012, -4.93977359e-006, 4.67893551e-005, 4.67892969e-005, 6.99990551e-006, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000212922692, -0.59942627, -0.400175571, 1.53349902e-008, 1, -1.08373715e-005, 0.999999642, -5.67024472e-009, 0.000891857664, 0.000891857664, -1.08373733e-005, -0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000226154923, -0.59954834, 0.400123894, 1.07365395e-007, -1, 6.84314591e-006, -1.00000012, -1.06840616e-007, 7.66707235e-005, -7.66706653e-005, -6.84315637e-006, -1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.399999976))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000403672457, -0.69838047, 0.800340652, -2.99596968e-006, 1, -7.89992555e-006, -1, -2.99602061e-006, -6.59289071e-006, -6.59294892e-006, 7.89990372e-006, 1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000233188272, -0.598742485, -0.40015614, -6.71329872e-008, -1, 7.83627729e-006, -1, 6.72057467e-008, 9.17859143e-006, -9.17853322e-006, -7.83628093e-006, -1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000182256103, -0.599612236, 0.400129795, -2.05418473e-007, 1, -1.10590672e-005, 0.999999642, 2.15461569e-007, 0.000908143935, 0.000908143935, -1.10588726e-005, -0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.600000024, 0.399999976))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.47508287e-005, -0.799318314, 1.93715096e-005, 4.8664283e-006, -1, 1.09996372e-005, 0.999999642, 4.87616353e-006, 0.00088524021, -0.000885240268, 1.0995318e-005, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))
Part=part(Enum.FormFactor.Custom,m2,Enum.Material.SmoothPlastic,0,1,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.399999976))
Partweld=weld(m2,BHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000433221459, -0.699325562, 0.800350487, 2.85850365e-006, -1, 1.07140386e-005, 0.999999642, 2.8678387e-006, 0.00087142986, -0.00087142986, 1.07115484e-005, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.239999995, 1, 1))

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
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
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
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
local efprt=part(3,Parent,"SmoothPlastic",0,0.5,BrickColor.new("Really red"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
spread=vt((math.random(-1,0)+math.random())*2,(math.random(-1,0)+math.random())*2,(math.random(-1,0)+math.random())*2)*(Prt.Position-Mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=Mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Really red"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(15) 
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really red"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function Shoot1()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(10)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -.5) * angles(math.rad(90), math.rad(20), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(-10), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-10)),.3)
end
so("http://www.roblox.com/asset/?id=169445602",BarrelA1,1,.9)
so("http://www.roblox.com/asset/?id=169445602",BarrelA2,1,.9)
for i = 0,1,0.1 do
swait()
LaserBarrage(BarrelA1,m)
LaserBarrage(BarrelA2,m)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-5)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(5)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -.5) * angles(math.rad(120), math.rad(20), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(-10), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(-10)),.3)
end
attack = false
end

function Shoot2()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(-10)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(10), math.rad(20)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.6, -.5) * angles(math.rad(90), math.rad(-20), math.rad(10)),.3)
--RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -.5) * angles(math.rad(90), math.rad(20), math.rad(0)),.3)
--LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(-10), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
end
so("http://www.roblox.com/asset/?id=169445602",BarrelB1,1,.9)
so("http://www.roblox.com/asset/?id=169445602",BarrelB2,1,.9)
for i = 0,1,0.1 do
swait()
LaserBarrage(BarrelB1,m)
LaserBarrage(BarrelB2,m)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(-10)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(10), math.rad(20)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.6, -.5) * angles(math.rad(120), math.rad(-20), math.rad(10)),.3)
--RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -.5) * angles(math.rad(90), math.rad(20), math.rad(0)),.3)
--LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(-10), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
end
attack = false
end

function PlaySound(id, pitch, parent, volume)
if volume == nil then volume=tonumber(1) end
        local epicsound = Instance.new("Sound")
        epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = volume
     epicsound.Pitch = pitch
  epicsound.Looped = false
  epicsound.Parent = parent
         wait()
         epicsound:Play()
end

Slashes = {200633108, 200633148, 200633196,200633281}

Slash = function(part)
local slashes = math.random(1, #Slashes)
PlaySound(Slashes[slashes], 1, part)
end

function attackone()
attack = true
local con=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(150), math.rad(10), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(-20), math.rad(10)),.3)
--RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -.5) * angles(math.rad(90), math.rad(20), math.rad(0)),.3)
--LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(-10), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0)),.3)
end
Slash(HitboxA)
for i = 0,1,0.1 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(-30)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(-20), math.rad(10)),.3)
--RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -.5) * angles(math.rad(90), math.rad(20), math.rad(0)),.3)
--LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(-10), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(0)),.3)
end
scfr = nil
attack = false
con:disconnect()
end

function attacktwo()
attack = true
local con=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(20), math.rad(10), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-90)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(0)),.3)
end
Slash(HitboxB)
for i = 0,1,0.1 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(20), math.rad(10), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-80)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0)),.3)
end
scfr = nil
attack = false
con:disconnect()
end

function attackthree()
attack = true
local con=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(30), math.rad(-10), math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0)),.3)
end
Slash(HitboxA)
for i = 0,1,0.1 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(80)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(30), math.rad(-10), math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(0)),.3)
end
scfr = nil
attack = false
con:disconnect()
end

function attackfour()
attack = true
local con=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(20), math.rad(20), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(-10), math.rad(0)),.3)
--RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(150), math.rad(10), math.rad(0)),.3)
--LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(-20), math.rad(10)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0)),.3)
end
Slash(HitboxB)
for i = 0,1,0.1 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(20), math.rad(20), math.rad(-10)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(30)),.3)
--RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(20), math.rad(20), math.rad(-30)),.3)
--LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(10)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(0)),.3)
end
scfr = nil
attack = false
con:disconnect()
end

function AerialSpin()
attack = true
Humanoid.Jump = true
local con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
local con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(190), math.rad(0), math.rad(-10)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(190), math.rad(0), math.rad(10)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
so("http://www.roblox.com/asset/?id=199145327",HitboxA,1,1)
so("http://www.roblox.com/asset/?id=199145327",HitboxA,1,1)
for i=0,0.6,.5 do
swait()
--Slash(HitboxA)
--Slash(HitboxB)
for i=0,1,0.1 do
swait()
local blcf1 = HitboxB.CFrame*CFrame.new(0,.5,0)
if scfr1 and (HitboxB.Position-scfr1.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr1*CFrame.new(0,h/2,0)).p,(scfr1*CFrame.new(0,-h/2,0)).p,(blcf1*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf1*CFrame.new(0,h/2,0)).p,(blcf1*CFrame.new(0,-h/2,0)).p,(scfr1*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr1 = blcf1
elseif not scfr then
scfr1 = blcf1
end
local blcf2 = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr2 and (HitboxA.Position-scfr2.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr2*CFrame.new(0,h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p,(blcf2*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf2*CFrame.new(0,h/2,0)).p,(blcf2*CFrame.new(0,-h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr2 = blcf2
elseif not scfr then
scfr2 = blcf2
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(6*i,0,0),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(15),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(190), math.rad(0), math.rad(-10)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(190), math.rad(0), math.rad(10)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
con1:disconnect()
con2:disconnect()
scfr1 = nil
scfr2 = nil
attack = false
end

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
pmsh = Instance.new('SpecialMesh')
pmsh.MeshType = 'FileMesh'
pmsh.Scale = Vector3.new(2,2,2)
pmsh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
S=Instance.new("Part")
S.Material = "SmoothPlastic"
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(2,2,2)
S.BrickColor=color
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0
S.Anchored=true
S.CanCollide=false
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Parent=workspace
pmsh.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
        local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",Vector3.new(0.5,0.5,0.5))
        prt.Anchored=true
        prt.CFrame=cframe
        prt.Touched:connect(function(hit) end)
        local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(0,0,0),Vector3.new(x1,y1,z1))
        coroutine.resume(coroutine.create(function(Part,Mesh) 
                for i=0,1,0.03 do
                        wait()
                        Part.CFrame=Part.CFrame
                        Part.Transparency=i
                        Mesh.Scale=Mesh.Scale+Vector3.new(x3,y3,z3)
                end
                Part.Parent=nil
        end),prt,msh)
end

function MagniDamage(Part,dmg,knock,Type,base)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=dmg and c.Name~=Character.Name then 
hum:TakeDamage(dmg)
end
end
end
end
end

function DashShot()
attack = true
for i = 0,1,0.1 do 
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, 0) * angles(math.rad(100), math.rad(10), math.rad(90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(100), math.rad(-10), math.rad(-90)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = RootPart.CFrame.lookVector*50
so("http://roblox.com/asset/?id=200632370",Torso,1,1) 
so("http://roblox.com/asset/?id=203691699",Torso,1,1) 
for i = 0,1,0.1 do 
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, 0) * angles(math.rad(100), math.rad(10), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(100), math.rad(-10), math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(-20)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
local prt = Instance.new("Part",workspace)
prt.Position = BarrelA1.Position
prt.Anchored = true
prt.Size = Vector3.new(5,5,5)
prt.CanCollide = false
prt.Transparency = 1
MagniDamage(prt,20,"Knockdown",prt)
so("http://roblox.com/asset/?id=203691837",BarrelA1,1,1)
so("http://roblox.com/asset/?id=203691653",BarrelA2,1,1)
for i = 0,1,2 do
MMMAGIC(BarrelA1,1,1,1,0,-1,0,BrickColor.new("Bright red")) 
MMMAGIC(BarrelA2,1,1,1,0,-1,0,BrickColor.new("Bright red"))
MagicRing(BrickColor.new("Really red"),BarrelA1.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,.5,.5,.5)
MagicRing(BrickColor.new("Really red"),BarrelA2.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,.5,.5,.5)
end
vel.Parent = nil
local prt2 = Instance.new("Part",workspace)
prt2.Position = BarrelB1.Position
prt2.Anchored = true
prt2.Size = Vector3.new(5,5,5)
prt2.CanCollide = false
prt2.Transparency = 1
MagniDamage(prt2,20,"Knockdown",prt2)
so("http://roblox.com/asset/?id=203691837",BarrelB1,1,1)
so("http://roblox.com/asset/?id=203691653",BarrelB2,1,1)
for i = 0,1,2 do
MMMAGIC(BarrelB1,1,1,1,0,-1,0,BrickColor.new("Bright red")) 
MMMAGIC(BarrelB2,1,1,1,0,-1,0,BrickColor.new("Bright red"))
MagicRing(BrickColor.new("Really red"),BarrelB1.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,.5,.5,.5)
MagicRing(BrickColor.new("Really red"),BarrelB2.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,.5,.5,.5)
end
for i = 0,1,0.1 do 
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, 0) * angles(math.rad(130), math.rad(10), math.rad(20)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(130), math.rad(-10), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(-20)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
attack = false
prt:remove()
prt2.Parent = nil
end

attacktype1 = 1

Mouse.Button1Down:connect(function()
        if Mode == "GunMode" then
        if attack==false then
                if attacktype1==1 then
                        attack=true
                        attacktype1=2
                        Shoot1()
                elseif attacktype1==2 then
                        attack=true
                        attacktype1=1
                        Shoot2()
                end
        end
    end
if Mode == "BladeMode" then
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
                        attacktype=4
                        attackthree()
                elseif attacktype==4 then
                        attack=true
                        attacktype=1
                        attackfour()
                end
        end
    end
end)

function Disappear()
for _,i in pairs(m2:children()) do
if i.className=="Part" then
Part.Transparency = .5
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
swait()
Part.Transparency=i
end
Part.Transparency=1
end),i)
end
end
end


function Reappear()
for _,i in pairs(m2:children()) do
if i.className=="Part" then
Part.Transparency = 1
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
swait()
Part.Transparency=i
end
Part.Transparency=0.5
end),i)
end
end
end

Mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=='f' then
                if Mode == "GunMode" then
                        Mode = "BladeMode"
                       Reappear()
                        so("http://www.roblox.com/asset/?id=200633077",HitboxA,1,1)
                        so("http://www.roblox.com/asset/?id=200633077",HitboxB,1,1)
                elseif Mode == "BladeMode" then
                        Mode = "GunMode"
                        Disappear()
                        so("http://www.roblox.com/asset/?id=200633029",HitboxA,1,1)
                        so("http://www.roblox.com/asset/?id=200633029",HitboxB,1,1)
end
end
if k=='q' then
if attack == false and Mode == "BladeMode" then
AerialSpin()
end

        end
if k=='q' then
if attack == false and Mode == "GunMode" then
DashShot()
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
if attack==false and Mode == "GunMode" then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(40)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-40)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-30)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
if attack==false and Mode == "BladeMode" then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(40)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-40)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(-30)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and Mode == "GunMode" then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(50)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
if attack==false and Mode == "BladeMode" then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(50)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and Mode == "GunMode" then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(-10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(10)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -.5) * angles(math.rad(100), math.rad(10), math.rad(-20)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.6, -.5) * angles(math.rad(100), math.rad(-10), math.rad(20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
if attack==false and Mode == "BladeMode" then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(-10)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false and Mode == "GunMode" then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(-50), math.rad(10), math.rad(20)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(-50), math.rad(-10), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(-10)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,3,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
if attack==false and Mode == "BladeMode" then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(45)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.3)
handleAweld.C0=clerp(handleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleBweld.C0=clerp(handleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxAweld.C0=clerp(HitboxAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HitboxBweld.C0=clerp(HitboxBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
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
