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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Dark stone grey","Handle",Vector3.new(0.232000008, 0.812000036, 0.34799999))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146102905, -0.318485737, 0.839184284, 1.00000632, -4.93172472e-008, -0.000935511896, -0.000935515272, -6.51810888e-006, -1.00000536, 4.32263612e-008, 0.999999762, -6.51843266e-006))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Dark stone grey","Hitbox",Vector3.new(5.11999989, 1.03200006, 0.800000012))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.26914215, -2.28439808, -0.0138931274, 5.5279628e-008, 0.000357966754, -0.999999583, -0.000903482374, 1.00000536, 0.000357964687, 1.00000632, 0.000903477019, 3.78699411e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.200000003, 0.232000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0174179077, -4.69187212, -0.754995346, -1.0000025, 0.000546428899, -0.00286973943, -0.00286977179, -2.13581079e-005, 0.999995589, 0.000546361669, 1.00000572, 2.29263151e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.579999983, 0.927999973))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00373840332, -2.08894491, 2.90544128, 1.00000536, 0.00170327828, -1.6089453e-007, -0.00170328422, 1.00000441, 1.36183207e-005, 1.84098781e-007, -1.36177896e-005, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.79949474, -0.180219173, -0.227863312, -0.00172967673, 1.00001013, 2.24112646e-005, 6.46309104e-007, 2.24120486e-005, -0.999999523, -1.00001204, -0.00172966474, -6.85080067e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799999, 0.200000003, 0.696000099))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.74123478, -0.409946442, 4.40184164, -0.00107316044, 1.00000525, 1.4551938e-005, 1.0000062, 0.00107315509, 7.93131278e-007, 7.77512412e-007, 1.45525482e-005, -0.999999642))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.579999983, 0.927999914))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000267028809, -0.582561016, -1.50176382, 1.00001347, -3.86033207e-007, -3.92623845e-009, 3.77418473e-007, 1.00001156, 2.45045476e-006, 3.94029254e-009, -2.44983767e-006, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00412750244, 1.45268583, -1.05011797, 1.00001216, 0.00172310648, 2.03311345e-007, 0.00172311824, -1.00001025, 6.49886579e-006, 2.14497248e-007, -6.49923504e-006, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(3.13199997, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.80415058, -0.524322987, -0.00103759766, 9.72363068e-007, 2.15515029e-005, -0.999999285, -0.00172366935, 1.00001025, 2.15501732e-005, 1.00001216, 0.00172365736, 1.0095107e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.231999993, 0.232000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00213241577, 0.754931927, -3.58990145, -1.00000894, 0.00341619202, 7.19290369e-007, -0.00341618108, -1.00000799, -2.25470994e-005, 6.42287603e-007, -2.25490967e-005, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.79969883, -0.180217266, 0.23601532, -0.00172980642, 1.00001013, 2.24137202e-005, 6.46412275e-007, 2.24145024e-005, -0.999999285, -1.00001204, -0.00172979443, -6.85189946e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00409317017, 1.45303392, 2.21011066, -1.00001216, -0.00168438489, -1.55491065e-007, 0.00168439688, -1.00001025, 6.03345643e-006, -1.6564087e-007, 6.03390299e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.928000152, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164337158, 0.00995254517, 0.378734589, 1.00000417, -0.000275396451, 0.000659934303, -0.000271914061, 0.707111299, 0.70709461, -0.000661380531, -0.707101762, 0.707109511))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.463999957, 0.452400029))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0109825134, -0.0555400848, 0.707753658, 1.00001204, 0.00170851196, -1.88033137e-005, -0.0017085236, 1.00001013, 1.71195006e-005, 1.88328195e-005, -1.70869171e-005, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.812000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.96466255, -0.414768219, 0.721370459, -0.00134572294, 0.500003576, 0.866025984, 1.00001371, 0.000263436057, 0.00140178087, 0.000472741085, 0.866039276, -0.499996334))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.60000002384186,"Pastel Blue","Part",Vector3.new(2.31999993, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.2697916, -1.39367867, 0.285621643, 9.60484385e-007, 2.34255967e-005, -0.999999404, -0.00169333746, 1.00001848, 2.34244617e-005, 1.00002027, 0.00169331662, 1.00015268e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999904, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.02214336, -0.756259918, -0.00161361694, 9.72405815e-007, 2.15511936e-005, -0.999999046, -0.00172374037, 1.00001574, 2.15500022e-005, 1.00001884, 0.00172372279, 1.00955594e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.812000036, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164260864, 0.299938202, -0.537542105, 1.00001764, -0.000275420141, 0.000659916259, -0.000271896773, 0.707119524, 0.707094133, -0.000661385478, -0.707109988, 0.707109034))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.579999983, 0.695999742, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.39053106, -0.458235741, -0.011390686, -0.000440491422, 1.00001991, 1.48311792e-005, -5.82179155e-007, -1.48307363e-005, 0.999999404, 1.00002158, 0.000440472504, 5.88722855e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0137062073, 0.00253915787, -1.46745825, -1.00000048, 0.00355784409, 1.83245029e-005, 0.00355784269, 0.999999583, 2.01142084e-005, -1.82529657e-005, 2.0179079e-005, -0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0136070251, 0.113649845, 0.986213684, -1.00001204, -0.00167019933, -1.89533148e-005, 0.0016702119, -1.00001013, -2.11289407e-005, -1.89182501e-005, -2.11601837e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.812000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.96466923, 0.397167206, 0.721361637, -0.0013458092, 0.50001061, 0.86602205, 1.00001383, 0.00026367465, 0.00140174653, 0.000472528627, 0.866035402, -0.500003278))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.200000003, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56735134, -0.408821106, 3.24180651, -0.000670250331, 1.00001955, 1.51960503e-005, 1.00002134, 0.000670230889, 6.58439376e-007, 6.48245248e-007, 1.51957993e-005, -0.999999404))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.60000002384186,"Pastel Blue","Part",Vector3.new(2.31999993, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26982021, -1.39350224, -0.295120239, 1.08945255e-006, 2.34336403e-005, -0.999999404, -0.00210836693, 1.00001788, 2.34318177e-005, 1.00001955, 0.00210834551, 1.13885642e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999904, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.02117348, 1.4526372, 0.0043182373, -8.55062524e-007, -7.5024268e-006, -0.999999642, 0.00172491686, -1.00000417, 7.50057416e-006, -1.00000513, -0.00172491092, 8.67988547e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170059204, -2.2058959, 4.45978069, -1.00001419, -0.00135475828, -4.16571709e-007, -0.00135477353, 1.00001323, 4.34294707e-005, 3.57724417e-007, 4.34299582e-005, -0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.200000003, 0.34800005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00218582153, -0.812090874, 2.42410946, 1.0000062, -0.000122337253, -0.000491121027, -0.000139618875, 0.866030037, -0.499999434, 0.000486493052, 0.500002682, 0.866024911))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135040283, 0.462905884, 3.42825031, -1.00001216, -0.00170107209, -3.2242329e-007, 0.00170108408, -1.00001025, -4.80908056e-007, -3.21594428e-007, -4.80819381e-007, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 1.27600002, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00625753403, -1.16150713, -0.00413131714, 9.68375389e-007, 2.27232595e-005, -0.999999404, -0.00171916001, 1.00001824, 2.27220989e-005, 1.00002003, 0.00171913893, 1.0074408e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.174598694, -2.20604086, 4.45978403, -1.0000217, 3.07324808e-006, 3.6950091e-008, 3.05491267e-006, 1.00001991, 4.44986144e-005, -3.68387809e-008, 4.44985162e-005, -0.999999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.231999993, 0.34800005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-005, -0.171551704, 2.84820986, 1.00001347, 1.32246059e-005, -1.8708166e-005, -1.32331043e-005, 1.00001156, 9.19823833e-007, 1.87084588e-005, -9.18944352e-007, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.812000155, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90776682, -1.85868549, -0.00782012939, 1.8466252e-006, 2.3490722e-005, -0.999999404, -0.00454348512, 1.0000093, 2.34826093e-005, 1.00001109, 0.00454345904, 1.95331836e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.232000038, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.69186592, -0.987005711, -0.00565719604, 1.16656577e-006, 2.24069317e-005, -0.999999642, -0.0023512831, 1.00000334, 2.24043106e-005, 1.00000429, 0.00235127681, 1.21924631e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.463999987, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.008228302, -2.14741659, -0.0642538071, -1.00000715, 0.00357599347, 3.75979994e-007, 0.00357599184, 1.00000525, 2.70939381e-007, -3.75028975e-007, 2.71639692e-007, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000347137451, -1.8586607, -0.167779922, 1.00002146, -7.44219869e-006, -3.64530095e-008, 7.4239797e-006, 1.00001967, 2.38242046e-006, 3.6459241e-008, -2.38146504e-006, 0.999999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0133476257, 0.114125729, -1.46745729, 1.00000048, -0.00355736027, 1.89384191e-005, -0.00355735887, -0.999999583, 2.02438559e-006, 1.8931225e-005, -2.09207792e-006, -0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.74000013, 0.232000083, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.64782763, -2.03162193, -0.00580215454, 1.18259686e-006, 2.35495809e-005, -0.999999404, -0.00240779901, 1.00001693, 2.35471889e-005, 1.00001872, 0.00240777642, 1.23929362e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(2.31999993, 0.232000008, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26977873, -1.68380308, -0.00464248657, 1.04666037e-006, 2.36031628e-005, -0.999999285, -0.00197039847, 1.00000978, 2.36014093e-005, 1.00001168, 0.00197038613, 1.09316613e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.463999987, 0.579999983, 1.15999985))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000141143799, -0.00238656998, -1.38578653, 1.00001347, -2.6228372e-007, -3.18987103e-009, 2.53668986e-007, 1.00001156, 2.2798049e-006, 3.2041374e-009, -2.27918736e-006, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34800005, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.12457228, 0.377754211, -2.04072428, -0.00161815656, 2.28647568e-005, 0.999998331, 1.00000501, -0.000935775577, 0.00161816564, 0.000935807999, 1.00000536, -2.13500443e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.69599998, 0.34800005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00218963623, -1.21802139, 2.42397022, 1.00000656, -0.000122337195, -0.000491121318, -0.000139618875, 0.866030455, -0.499999672, 0.000486493111, 0.500002742, 0.866025031))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.59740001))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.012588501, -0.230174541, 1.22678614, 1.00001204, 0.00170156895, -1.85436711e-005, -0.00170158059, 1.00001013, 1.60903783e-005, 1.85713052e-005, -1.60583568e-005, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000187, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.28582335, -2.20614576, 0.16740036, 1.29392276e-006, 2.35486077e-005, -0.999999285, -0.00276590372, 1.00000787, 2.35452953e-005, 1.00000978, 0.00276589021, 1.3590477e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.579999983, 0.927999735, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.39041233, -1.27023077, -0.011089325, -0.000441556913, 1.00001168, 1.47172686e-005, -5.82458881e-007, -1.47170649e-005, 0.999999285, 1.00001359, 0.0004415476, 5.88964099e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.463999987, 0.200000003, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56732988, 0.403812408, 3.24179888, -0.000671263493, 1.00000596, 1.39352715e-005, 1.00000691, 0.000671258371, 6.59181296e-007, 6.49824415e-007, 1.39354743e-005, -0.999999642))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.27600002, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.180254936, -1.16150093, -0.0041885376, 9.68362087e-007, 2.2722732e-005, -0.999999285, -0.00171916536, 1.00001013, 2.27213986e-005, 1.00001204, 0.00171915337, 1.00742602e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.231999993, 0.916400015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164260864, 0.589895248, 0.094648838, 1.00001764, -0.000275413156, 0.000659923593, -0.000271906902, 0.707119524, 0.707094133, -0.000661385711, -0.707109988, 0.707109034))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00074005127, -0.113721371, 2.02377272, 1.00001466, -2.03231466e-005, 3.07392952e-007, -2.03155214e-005, -1.00001335, -1.85632734e-006, 3.07421914e-007, 1.85568797e-006, -0.999999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.232000008, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000648498535, 0.523108482, 3.42824936, -1.00001204, -0.00170232763, -3.22026239e-007, 0.00170233962, -1.00001013, -4.4727858e-007, -3.21253964e-007, -4.47188995e-007, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00292205811, -2.03163147, 4.63377762, -1.00001311, -0.000978587777, -2.91069369e-007, -0.000978597905, 1.00001121, 4.45006881e-005, 2.4750986e-007, 4.45008554e-005, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.62399995, 0.927999794, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1038084, 0.702246666, -0.00408935547, -0.00171928364, 1.00001013, 1.46179427e-005, -5.92813478e-007, -1.46185203e-005, 0.999999285, 1.00001204, 0.00171927165, 6.17952878e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.180233479, -1.85741377, -0.00400161743, 9.68401537e-007, 2.21498412e-005, -0.999999285, -0.00171989296, 1.00001013, 2.2148517e-005, 1.00001204, 0.00171988097, 1.00649675e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.580000103, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00061416626, 0.113962173, -0.515907764, 1.00000679, 8.48609488e-007, -1.58665658e-009, -8.52916855e-007, 1.00000584, 8.92841399e-007, 1.59491531e-009, -8.9252535e-007, 0.999999642))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000152587891, 0.350605965, -0.979739666, -1.00001347, 3.24973371e-007, -3.23643548e-007, -3.16358637e-007, -1.00001156, -4.67361169e-005, -3.23648152e-007, -4.67360405e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.231999978))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0134773254, -2.03588963, 0.0627288818, 1.0000118, 0.00168008753, -0.000919409504, -0.000919448154, 1.43879734e-005, -0.999998927, -0.00168008532, 1.00001025, 1.59331266e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00144577026, 0.465278625, 2.25577259, 1.00000525, -0.00357661862, 2.83521615e-007, -0.00357662095, -1.00000381, -2.32054535e-005, 3.66508516e-007, 2.32040093e-005, -0.999999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.231999993, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.4577775, -0.755722523, -0.00420379639, 9.68686891e-007, 2.31499107e-005, -0.999999285, -0.00171863148, 1.00001037, 2.31485628e-005, 1.00001228, 0.00171861949, 1.00847365e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.927999914, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.63014698, -0.756272316, -0.00161361694, 9.72395696e-007, 2.15512227e-005, -0.999999285, -0.00172371534, 1.00001013, 2.15498931e-005, 1.00001204, 0.00172370335, 1.00954367e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000984191895, -0.756361485, 0.354147911, 1.00001216, 0.00168376672, -1.40138248e-008, -0.00168377871, 1.00001025, 2.1083024e-005, 4.95281753e-008, -2.10825874e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.463999987, 0.200000003, 0.231999844))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.19616699e-005, -0.350408554, -0.921793938, 1.00001347, 8.28295015e-008, -2.89782998e-009, -9.14442353e-008, 1.00001156, 2.05126844e-006, 2.91285485e-009, -2.05064771e-006, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00622749329, -1.85754061, -0.00392532349, 9.6856877e-007, 2.22277413e-005, -0.999999285, -0.00171961775, 1.00001037, 2.2226408e-005, 1.00001228, 0.00171960576, 1.00679244e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.580000103, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(3.13199997, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.804111, 1.68473339, 0.00412750244, -8.36535833e-007, -6.4935798e-006, -0.999999285, 0.00172392465, -1.00001013, 6.49140156e-006, -1.00001204, -0.00172391266, 8.47700733e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00101089478, -0.756358147, 3.25414419, 1.00001884, 0.00168378535, -1.40127501e-008, -0.00168380293, 1.00001574, 2.10829876e-005, 4.953597e-008, -2.1082411e-005, 0.999999046))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00154876709, -0.345762253, -0.747890472, -1.00000513, 0.00184790534, -9.90573952e-008, -0.00184790278, -1.00000417, -3.50944756e-005, -1.63901603e-007, -3.50941227e-005, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00116729736, 0.582655907, 0.921771049, 1.0000118, -0.0018872465, 3.00768534e-007, -0.00188724138, -1.00000989, -2.33032779e-006, 3.05155339e-007, 2.32914181e-006, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(2.31999993, 0.34799999, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26979065, -1.04566193, -0.00424575806, 9.68193035e-007, 2.35501375e-005, -0.999999285, -0.00171805895, 1.00001037, 2.35487987e-005, 1.00001228, 0.00171804742, 1.00865361e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000187, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.28582954, -2.20552588, -0.181804657, 1.45761271e-006, 2.37911408e-005, -0.999999285, -0.00329261925, 1.00000644, 2.37865734e-005, 1.00000834, 0.00329260482, 1.53593442e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.200000003, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56748581, 0.403205872, 3.24181366, -0.000669696892, 1.00001156, 1.54301233e-005, 1.00001347, 0.000669687288, 6.58446311e-007, 6.48107061e-007, 1.54301015e-005, -0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.232000008, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00191497803, -2.03143692, -2.60386896, 1.00001359, 0.000368760899, 2.53006078e-007, -0.000368769979, 1.00001168, 2.77856907e-006, -2.51969908e-007, -2.77804475e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.231999993, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.79963732, -0.0062046051, -0.227901459, -0.00172873132, 1.00001025, 2.30093628e-005, 6.45988621e-007, 2.30101468e-005, -0.999999285, -1.00001216, -0.00172871957, -6.85771909e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000247955322, -1.85837555, 0.515717983, -1.00001347, 0.00037799112, 1.62256811e-007, 0.000377983262, 1.00001156, 4.46234044e-005, -1.45407441e-007, 4.4623368e-005, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.231999993, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00257110596, -1.6831336, 3.42826033, 1.00001204, 0.00170258048, -1.60158933e-007, -0.00170259248, 1.00001013, 1.46196398e-005, 1.8506725e-007, -1.46188831e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000370025635, -1.8587203, -1.44380522, 1.00001359, -8.11205246e-006, -3.67194701e-008, 8.10361234e-006, 1.00001168, 2.74641434e-006, 3.67127662e-008, -2.74579975e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(2.31999993, 0.231999993, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.27035666, -1.68360662, 0.293216705, -6.99449004e-007, 0.000311892974, 0.999999285, -0.00104407989, 1.00001121, -0.000311888987, -1.00001323, -0.00104407, -3.73821621e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.928000152, 0.464000016, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.16985369, -0.871246338, -0.0051651001, 1.16509625e-006, 2.38373486e-005, -0.999998808, -0.00235050265, 1.00001895, 2.38351458e-005, 1.00002158, 0.00235049031, 1.22111521e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.200000003, 1.04399979))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000732421875, 0.345625401, -1.32782841, 1.00001347, 1.57987233e-006, -3.28700223e-009, -1.58848707e-006, 1.00001156, 1.30031594e-006, 3.30395888e-009, -1.29968794e-006, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000172, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.341750622, -1.85878611, -0.00778961182, 1.84655323e-006, 2.3751556e-005, -0.999999285, -0.00454270514, 1.00000131, 2.3743276e-005, 1.00000322, 0.00454268791, 1.9544193e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.200000003, 1.2759999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -0.466629028, -0.399776936, 1.00001347, -3.22703272e-007, -3.16622373e-009, 3.14088538e-007, 1.00001156, 2.64065238e-006, 3.18028226e-009, -2.6400412e-006, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0040397644, 1.45275879, 0.354114056, -1.00001884, -0.00168373343, -1.7531282e-007, 0.00168375147, -1.00001597, 6.02276077e-006, -1.85434587e-007, 6.02347882e-006, 0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.231999993, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.79963207, -0.00620794296, 0.236164093, -0.00172861468, 1.00001025, 2.30448168e-005, 6.46028013e-007, 2.30456026e-005, -0.999999285, -1.00001216, -0.00172860292, -6.85869907e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.62399995, 1.27599967, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10384512, 2.7322464, -0.00403213501, -0.00171939307, 1.00001013, 1.46226739e-005, -5.92917615e-007, -1.46232505e-005, 0.999999285, 1.00001204, 0.00171938131, 6.18066792e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000701904297, -0.345462322, 1.90779448, 1.00001347, -2.00413051e-005, 3.0602007e-007, -2.00327486e-005, -1.00001156, -2.15015098e-006, 3.06052669e-007, 2.14952706e-006, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.04400015, 0.811999977, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.2278223, -1.50939083, -0.00476455688, 1.06762559e-006, 2.37910026e-005, -0.999999285, -0.00203778502, 1.00000966, 2.37891327e-005, 1.00001156, 0.00203777291, 1.11610427e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.463999987, 0.200000003, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56723642, -0.411323547, 3.2417984, -0.000671109243, 1.0000056, 1.40209831e-005, 1.00000656, 0.000671104353, 6.59014859e-007, 6.49602271e-007, 1.40211887e-005, -0.999999642))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00456619263, 1.45251989, 3.25319099, -1.00000548, -0.00168398093, -1.74997453e-007, 0.0016839871, -1.00000453, 7.01806357e-006, -1.86809473e-007, 7.01812223e-006, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0012512207, 0.756712437, 0.921786785, 1.00001192, -0.00188787864, 2.99965563e-007, -0.00188787398, -1.00001001, -2.71932527e-006, 3.05087923e-007, 2.71814042e-006, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00101852417, -0.756660938, -1.05014706, -1.00001204, -0.00172244979, 6.12758271e-008, -0.00172246178, 1.00001013, 2.15474902e-005, -9.84062183e-008, 2.15469754e-005, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.580000103, 2.204))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00379943848, -2.08976412, 1.34025192, 1.00001204, 0.00171907921, 2.17523793e-005, -0.00171909155, 1.00001013, 1.06986054e-005, -2.17342458e-005, -1.07354717e-005, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.27600014, 1.04400003, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.06781864, -1.39336252, -0.00276947021, 6.42567954e-007, 2.37156328e-005, -0.999999285, -0.000670476642, 1.00001156, 2.37155527e-005, 1.00001347, 0.000670467038, 6.58474448e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.696000159, 0.200000003, 0.232000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457955837, -0.580825329, -0.0055770874, 1.16664842e-006, 2.21116316e-005, -0.999999642, -0.00235209521, 1.00000632, 2.21090704e-005, 1.00000727, 0.0023520845, 1.21865253e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00102996826, -0.756342888, -2.7901454, -1.00001884, -0.00172247365, 6.13245135e-008, -0.001722491, 1.00001574, 2.15474611e-005, -9.84643691e-008, 2.15468062e-005, -0.999999046))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.927999973, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.35656452, -0.0282249451, -2.04077148, -0.00161817856, 2.2865348e-005, 0.999997616, 1.00001848, -0.000935790653, 0.00161816448, 0.000935816381, 1.00001693, -2.13497078e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799999, 0.200000003, 0.696000099))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.7414937, 0.402587891, 4.40184164, -0.00107212085, 1.00001121, 1.57967261e-005, 1.00001311, 0.00107211061, 7.93275149e-007, 7.76334844e-007, 1.57971135e-005, -0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0135307312, 0.00276422501, 0.986213207, 1.00001204, 0.00167110038, -1.825656e-005, -0.00167111226, 1.00001013, -1.0784629e-006, 1.82550084e-005, 1.10962583e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.231999964, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0116043091, -0.169836521, 2.03595734, 1.00001204, 0.00170413801, -1.86736106e-005, -0.00170414965, 1.00001013, 1.63084733e-005, 1.87016558e-005, -1.62761844e-005, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.927999914, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.62992048, 1.45317078, 0.00423812866, -8.35475475e-007, -7.49478841e-006, -0.999999642, 0.00172465458, -1.00001037, 7.49267065e-006, -1.00001204, -0.00172464119, 8.48372508e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0048866272, 1.45256662, -2.78931189, 1.00000513, 0.00172351021, 2.02878823e-007, 0.00172351615, -1.00000417, 7.49809578e-006, 2.15795779e-007, -7.49809897e-006, -0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175273895, -2.2061739, -4.11187935, 1.00001371, 0.00036665576, 8.8621448e-008, -0.000366665074, 1.0000118, 2.83818667e-006, -8.7566761e-008, -2.8376005e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.579999983, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000499725342, -0.350563049, -2.02378225, 1.00001347, -5.64614311e-007, -3.58900643e-009, 5.56057785e-007, 1.00001156, 2.58954788e-006, 3.60246588e-009, -2.58893624e-006, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.463999957, 0.452400029))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0107460022, -0.0555205345, 1.75172997, 1.00001204, 0.00170685095, -1.87402256e-005, -0.00170686259, 1.00001013, 1.71129595e-005, 1.87696915e-005, -1.7080516e-005, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000179290771, -0.11830616, -0.515934467, 1.00000679, 1.18016033e-006, -1.49793378e-009, -1.18446769e-006, 1.00000584, 4.800022e-007, 1.50599488e-009, -4.79683422e-007, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.579999983, 0.695999742, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.39072371, -2.08222008, -0.0108184814, -0.000440219301, 1.00001168, 1.49555108e-005, -5.82121402e-007, -1.49553034e-005, 0.999999285, 1.00001359, 0.000440209988, 5.88711941e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000038, 0.200000003, 3.59599972))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000350952148, -0.34586668, 1.57220888, 1.00001347, -8.66054324e-006, -1.0555099e-009, 8.65192851e-006, 1.00001156, 6.67146651e-007, 1.06459686e-009, -6.66510914e-007, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000980377197, -0.756362438, 2.21014261, 1.00001216, 0.00168377184, -1.39758196e-008, -0.00168378383, 1.00001025, 2.10831458e-005, 4.94904349e-008, -2.10827075e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000228881836, -1.85836792, 2.37173796, -1.00001347, 0.000378501718, 1.62424982e-007, 0.000378494151, 1.00001156, 4.46612976e-005, -1.45538479e-007, 4.46612685e-005, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.62399995, 0.927999794, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1039381, 1.63024521, -0.0039024353, -0.00172031764, 1.00001013, 1.46122475e-005, -5.72987631e-007, -1.46127904e-005, 0.999999285, 1.00001204, 0.00172030565, 5.98132715e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.9000001, 0.232000038, 0.232000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.2558732, -0.755105019, -0.005027771, 1.16550927e-006, 2.32517414e-005, -0.999999046, -0.00235130615, 1.00001335, 2.32494094e-005, 1.00001562, 0.00235129381, 1.22017377e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.812000036, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000499725342, -0.000572681427, -0.399878502, 1.00001347, -3.89991328e-009, -1.60411329e-009, -4.71482053e-009, 1.00001156, 9.86925897e-007, 1.61898139e-009, -9.86294253e-007, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.69599998, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000854492188, -0.060251236, -0.689863205, 1.00000679, 9.31904651e-008, -2.52386245e-009, -9.7497832e-008, 1.00000584, 1.58413877e-006, 2.53151944e-009, -1.58382682e-006, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.34799999, 0.34799996))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000202178955, -0.698717594, -0.863790989, 1.00001359, -9.37085133e-007, -4.30265912e-009, 9.28586815e-007, 1.00001168, 2.73720707e-006, 4.31539515e-009, -2.73659361e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.59740001))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0118713379, 0.117973328, 1.22682953, 1.00001204, 0.00170348049, -1.86220968e-005, -0.00170349213, 1.00001013, 1.60979762e-005, 1.86497764e-005, -1.60657855e-005, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170646667, -2.20620346, -4.11187887, 1.00001299, 0.00135321938, 4.18644504e-007, -0.00135323033, 1.00001109, 2.83407667e-006, -4.147997e-007, -2.83402255e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34800005, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.12456751, -0.434249878, -2.04071569, -0.00161815656, 2.28647568e-005, 0.999998331, 1.00000501, -0.000935775577, 0.00161816564, 0.000935807999, 1.00000536, -2.13500443e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(2.31999993, 0.231999993, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.27036333, -1.68534136, 0.286766052, 4.37200288e-006, -0.00031248352, -0.999999225, -0.00104415184, 1.00001121, -0.000312483375, 1.00001323, 0.00104414311, 4.04568164e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Barrel",Vector3.new(0.695999742, 0.200000003, 0.928000033))
Barrelweld=weld(m,handle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09376717, 3.31707621, -0.00493240356, -0.00171980122, 1.00000441, 1.36221133e-005, -5.93967741e-007, -1.36229164e-005, 0.999999642, 1.00000536, 0.00171979528, 6.1739911e-007))
mesh("CylinderMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))

LASER_WIDTH = 5
LASER_MAGIC_CIRCLE_DISTANCE = 6.25
laser_data = {}

player=game.Players.localPlayer
char=player.Character
active=false

math = {
abs = math.abs,
acos = math.acos,
asin = math.asin,
atan = math.atan,
atan2 = math.atan2,
ceil = math.ceil,
cos = math.cos,
cosh = math.cosh,
deg = math.deg,
exp = math.exp,
floor = math.floor,
fmod = math.fmod,
frexp = math.frexp,
huge = math.huge,
ldexp = math.ldexp,
log = math.log,
log10 = math.log10,
max = math.max,
min = math.min,
modf = math.modf,
phi = 1.618033988749895,
pi = math.pi,
pow = math.pow,
rad = math.rad,
random = math.random,
randomseed = math.randomseed,
sin = math.sin,
sinh = math.sinh,
sqrt = math.sqrt,
tan = math.tan,
tanh = math.tanh,
tau = 2 * math.pi
}
magicCircleData = {}
MAGIC_CIRCLE_DEFAULT_OFFSET = 6.25
function AnimateMagicCircle(data)
    local frame, direction, magic_circle_model, magic_circle_part, magic_circle_light, magic_circle_decal_back, magic_circle_decal_front, duration, 

stay, magic_circle_adornee_func, magic_circle_offset = unpack(data)
    frame = frame + 1
    data[1] = frame
    local transparency = (frame / duration) ^ stay
    local opacity = 1 - transparency
    if frame == duration then
        pcall(game.Destroy, magic_circle_model)
        magicCircleData[data] = nil
    else
        if magic_circle_model.Parent ~= workspace then
            magic_circle_model.Parent=workspace
        end
        local magic_circle_adornee = magic_circle_adornee_func()
        magic_circle_position = magic_circle_adornee.Position + direction * magic_circle_offset
        local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction) * CFrame.Angles(0, 0, math.tau * frame / 

25)
        magic_circle_part.CFrame = magic_circle_cframe
        magic_circle_light.Brightness = opacity
        magic_circle_decal_back.Transparency = transparency
        magic_circle_decal_front.Transparency = transparency
    end
end
function CreateMagicCircle(target, magic_circle_scale, magic_circle_image, light_color, duration, stay, magic_circle_adornee_func, 

magic_circle_offset)
    local magic_circle_adornee = magic_circle_adornee_func()
    if magic_circle_adornee then
        local origin = magic_circle_adornee.Position
        local direction = (target - origin).unit
        local magic_circle_position = origin + direction * magic_circle_offset
        local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction)
        local magic_circle_model = Instance.new("Model")
        local magic_circle_part = Instance.new("Part", magic_circle_model)
        local magic_circle_mesh = Instance.new("BlockMesh", magic_circle_part)
        local magic_circle_light = Instance.new("PointLight", magic_circle_part)
        local magic_circle_decal_back = Instance.new("Decal", magic_circle_part)
        local magic_circle_decal_front = Instance.new("Decal", magic_circle_part)
        magic_circle_model.Archivable = false
        magic_circle_part.Anchored = true
        magic_circle_part.BottomSurface = "Smooth"
        magic_circle_part.CanCollide = false
        magic_circle_part.CFrame = magic_circle_cframe
        magic_circle_part.FormFactor = "Custom"
        magic_circle_part.Locked = true
        magic_circle_part.Size = Vector3.new(0.2, 0.2, 0.2)
        magic_circle_part.TopSurface = "Smooth"
        magic_circle_part.Transparency = 1
        magic_circle_mesh.Scale = Vector3.new(60, 60, 0) * magic_circle_scale
        magic_circle_light.Color = light_color
        magic_circle_light.Range = 16 * magic_circle_scale
        magic_circle_light.Shadows = true
        magic_circle_decal_back.Face = "Back"
        magic_circle_decal_back.Texture = magic_circle_image
        magic_circle_decal_front.Face = "Front"
        magic_circle_decal_front.Texture = magic_circle_image
        magic_circle_model.Parent = workspace
        local data = {0, direction, magic_circle_model, magic_circle_part, magic_circle_light, magic_circle_decal_back, magic_circle_decal_front, 

duration, stay, magic_circle_adornee_func, magic_circle_offset}
        magicCircleData[data] = true
        return data
    end
end

--GraphicalEffects.fragmentation = {}
function AnimateLaserOfDeath(data)
    local frame, directionOrientation, direction, magic_circle_model, laser_part, laser_mesh, magic_circle_part, magic_circle_light, 

magic_circle_decal_back, magic_circle_decal_front, sound, laser_scale, fragmentation_size, duration, laser_lights, laser_effects, stay, light_effects = 

unpack(data)
    local laser_color = laser_part.Color
    frame = frame + 1
    data[1] = frame
    local transparency = (frame / duration) ^ stay
    local opacity = 1 - transparency
    if frame == 2 then
        sound:Play()
    end
    if frame == duration then
        pcall(game.Destroy, magic_circle_model)
        laser_data[data] = nil
    else
        if magic_circle_model.Parent ~= workspace then
            magic_circle_model.Parent=workspace
        end
        local laser_distance = 0
        local origin = Barrel.CFrame
        if not light_effects then
            direction = (origin * directionOrientation - origin.p).unit
        end
        local magic_circle_position = origin.p + direction * LASER_MAGIC_CIRCLE_DISTANCE
        local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction) * CFrame.Angles(0, 0, math.tau * frame / 

25)
        local loop_scale = (laser_scale - 1) / 10
        for x_offset = -loop_scale, loop_scale, 2 do
            for y_offset = -loop_scale, loop_scale, 2 do
                local origin_position = magic_circle_cframe * Vector3.new(x_offset, y_offset, 0)
                for index = 1, 8 do
                    local part, position
                    for ray_index = 1, 10 do
                        local ray = Ray.new(origin_position + direction * (999 * (ray_index - 1)), direction * 999)
                        part, position = workspace:FindPartOnRay(ray, magic_circle_model)
                        if part then
                            break
                        end
                    end
                    if part then
                        laser_distance = (position - origin_position).magnitude
                        if frame % 8 == 1 and index == 1 then
                            Instance.new("Explosion", workspace).Position = position
                        end
                        if not part:IsA("Terrain") then
                            pcall(part.BreakJoints, part)
                            local is_block = part:IsA("Part") and part.Shape == Enum.PartType.Block
                            local mass = part:GetMass()
                            local size = part.Size
                            if (is_block and ((size.X < fragmentation_size and size.Y < fragmentation_size and size.Z < 

fragmentation_size) or (not part.Anchored and mass < 750))) or (not is_block and mass < 250000) then
                                local part_transparency = math.max(part.Transparency + 0.007 * fragmentation_size, 0.5)
                                if part_transparency >= 0.5 then -- temporarily to minimize debris
                                    pcall(game.Destroy, part)
                                else
                                    local cframe = part.CFrame
                                    part.Anchored = false
                                    part.BrickColor = BrickColor.new("Medium stone grey")
                                    part.CanCollide = true
                                    if part:IsA("FormFactorPart") then
                                        part.FormFactor = "Custom"
                                    end
                                    part.Size = size - Vector3.new(0.135, 0.135, 0.135) * fragmentation_size
                                    part.Transparency = part_transparency
                                    part.CFrame = cframe + direction * 5
                                    part.Velocity = part.Velocity + direction * 40
                                end
                            elseif is_block then
                                local parts = {part}
                                local model = Instance.new("Model", part.Parent)
                                model.Name = "Fragments"
                                if size.X >= fragmentation_size then
                                    size = Vector3.new(0.5, 1, 1) * size
                                    local archivable = part.Archivable
                                    local cframe = part.CFrame
                                    part.FormFactor = "Custom"
                                    part.Size = size
                                    part.Archivable = true
                                    local part_clone = part:Clone()
                                    part.Archivable = archivable
                                    part_clone.Archivable = archivable
                                    part.CFrame = cframe * CFrame.new(-0.5 * size.X, 0, 0)
                                    part_clone.CFrame = cframe * CFrame.new(0.5 * size.X, 0, 0)
                                    part_clone.Parent = model
                                    parts[2] = part_clone
                                end
                                if size.Y >= fragmentation_size then
                                    size = Vector3.new(1, 0.5, 1) * size
                                    for part_index = 1, #parts do
                                        local part = parts[part_index]
                                        local archivable = part.Archivable
                                        local cframe = part.CFrame
                                        part.FormFactor = "Custom"
                                        part.Size = size
                                        part.Archivable = true
                                        local part_clone = part:Clone()
                                        part.Archivable = archivable
                                        part_clone.Archivable = archivable
                                        part.CFrame = cframe * CFrame.new(0, -0.5 * size.Y, 0)
                                        part_clone.CFrame = cframe * CFrame.new(0, 0.5 * size.Y, 0)
                                        part_clone.Parent = model
                                        table.insert(parts, part_clone)
                                    end
                                end
                                if size.Z >= fragmentation_size then
                                    size = Vector3.new(1, 1, 0.5) * size
                                    for part_index = 1, #parts do
                                        local part = parts[part_index]
                                        local archivable = part.Archivable
                                        local cframe = part.CFrame
                                        part.FormFactor = "Custom"
                                        part.Size = size
                                        part.Archivable = true
                                        local part_clone = part:Clone()
                                        part.Archivable = archivable
                                        part_clone.Archivable = archivable
                                        part.CFrame = cframe * CFrame.new(0, 0, -0.5 * size.Z)
                                        part_clone.CFrame = cframe * CFrame.new(0, 0, 0.5 * size.Z)
                                        part_clone.Parent = model
                                        table.insert(parts, part_clone)
                                    end
                                end
                                for _, part in ipairs(parts) do
                                    part:MakeJoints()
                                end
                            else
                                break
                            end
                        end
                    else
                        laser_distance = 9990
                        break
                    end
                end
            end
        end
        local laser_cframe = magic_circle_cframe * CFrame.Angles(-0.5 * math.pi, 0, 0)
        local laser_width = LASER_WIDTH * opacity * laser_scale
        local laser_mesh_offset = Vector3.new(0, 0.5 * laser_distance, 0)    
        laser_part.CFrame = laser_cframe
        if laser_effects then
            local laser_effect_data_1, laser_effect_data_2 = laser_effects[1], laser_effects[2]
            local laser_effect_1, laser_effect_mesh_1 = laser_effect_data_1[1], laser_effect_data_1[2]
            local laser_effect_2, laser_effect_mesh_2 = laser_effect_data_2[1], laser_effect_data_2[2]
            laser_effect_1.CFrame = laser_cframe
            laser_effect_2.CFrame = laser_cframe
            laser_effect_mesh_1.Offset = laser_mesh_offset
            laser_effect_mesh_2.Offset = laser_mesh_offset
            local game_time = time()
            local effect_scale_1 = 0.5 + 0.5 * math.sin(16 * math.pi * game_time)
            local effect_scale_2 = 0.5 + 0.5 * math.cos(16 * math.pi * game_time)
            laser_effect_mesh_1.Scale = 5 * Vector3.new(laser_width * effect_scale_1, laser_distance, laser_width * effect_scale_1)
            laser_effect_mesh_2.Scale = 5 * Vector3.new(laser_width * effect_scale_2, laser_distance, laser_width * effect_scale_2)
            laser_width = laser_width * 0.25
        end
        laser_mesh.Offset = laser_mesh_offset            
        laser_mesh.Scale = 5 * Vector3.new(laser_width, laser_distance, laser_width)
        magic_circle_part.CFrame = magic_circle_cframe
        magic_circle_light.Brightness = opacity
        magic_circle_decal_back.Transparency = transparency
        magic_circle_decal_front.Transparency = transparency
        if light_effects then
            for index, data in ipairs(laser_lights) do
                local laser_spotlight_part, laser_spotlight = data[1], data[2]
                local laser_spotlight_offset = 30 * (index - 1)
                if laser_spotlight_offset <= laser_distance then
                    laser_spotlight_part.CFrame = magic_circle_cframe * CFrame.new(0, 0, -laser_spotlight_offset)
                    laser_spotlight.Brightness = opacity
                    laser_spotlight.Enabled = true
                else
                    laser_spotlight.Enabled = false
                end
            end
        end
    end
end
function ShootLaserOfDeath(target, data)
        data = data or {}
        local brickcolor = data.brickcolor or BrickColor.new("Really black")
        local duration = data.duration or 40
        local fragmentation_size = data.fragmentation_size or 3
        local laser_scale = data.laser_scale or 1
        local light_color = data.light_color or Color3.new(1, 0.5, 1)
        local magic_circle_image = data.magic_circle_image or "rbxassetid://122610943"
        local magic_circle_scale = data.magic_circle_scale or 1
        local sound_volume = data.sound_volume or 1 / 3
        local special_effects = data.special_effects
        local stay = data.stay or 4
        local origin = Barrel.CFrame
        local directionOrientation = origin:pointToObjectSpace(target)
        local direction = (target - origin.p).unit
        local magic_circle_position = origin.p + direction * LASER_MAGIC_CIRCLE_DISTANCE
        local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction)
        local magic_circle_model = Instance.new("Model")
        local laser_part = Instance.new("Part", magic_circle_model)
        local laser_mesh = Instance.new("CylinderMesh", laser_part)
        local magic_circle_part = Instance.new("Part", magic_circle_model)
        local magic_circle_mesh = Instance.new("BlockMesh", magic_circle_part)
        local magic_circle_light = Instance.new("PointLight", magic_circle_part)
        local magic_circle_decal_back = Instance.new("Decal", magic_circle_part)
        local magic_circle_decal_front = Instance.new("Decal", magic_circle_part)
        local sound = Instance.new("Sound", magic_circle_part)
        sound.Pitch = 0.9
        sound.SoundId = "rbxassetid://222371404"
        sound.Volume = 1
        magic_circle_model.Archivable = false
        laser_part.Anchored = true
        laser_part.BottomSurface = "Smooth"
        laser_part.BrickColor = brickcolor
        laser_part.CanCollide = false
        laser_part.CFrame = magic_circle_cframe * CFrame.Angles(-0.5 * math.pi, 0, 0)
        laser_part.FormFactor = "Custom"
        laser_part.Locked = true
        laser_part.Size = Vector3.new(0.2, 0.2, 0.2)
        laser_part.TopSurface = "Smooth"
        laser_mesh.Offset = Vector3.new(0, 0, 0)
        laser_mesh.Name = "Mesh"
        laser_mesh.Scale = 5 * laser_scale * Vector3.new(LASER_WIDTH, 0, LASER_WIDTH)
        magic_circle_part.Anchored = true
        magic_circle_part.BottomSurface = "Smooth"
        magic_circle_part.CanCollide = false
        magic_circle_part.CFrame = magic_circle_cframe
        magic_circle_part.FormFactor = "Custom"
        magic_circle_part.Locked = true
        magic_circle_part.Size = Vector3.new(0.2, 0.2, 0.2)
        magic_circle_part.TopSurface = "Smooth"
        magic_circle_part.Transparency = 1
        magic_circle_mesh.Scale = Vector3.new(60, 60, 0) * magic_circle_scale
        magic_circle_light.Color = light_color
        magic_circle_light.Range = 16 * magic_circle_scale
        magic_circle_light.Shadows = true
        magic_circle_decal_back.Face = "Back"
        magic_circle_decal_back.Texture = magic_circle_image
        magic_circle_decal_front.Face = "Front"
        magic_circle_decal_front.Texture = magic_circle_image
        magic_circle_model.Parent = workspace
        local laser_color = brickcolor.Color
        local laser_lights = {}
        local light_effects = laser_color.r + laser_color.g + laser_color.b > 0.25
        if light_effects then
            local laser_spotlight_part_template = Instance.new("Part")
            local laser_spotlight_light_template = Instance.new("SpotLight", laser_spotlight_part_template)
            laser_spotlight_part_template.Anchored = true
            laser_spotlight_part_template.Anchored = true
            laser_spotlight_part_template.BottomSurface = "Smooth"
            laser_spotlight_part_template.CanCollide = false
            laser_spotlight_part_template.FormFactor = "Custom"
            laser_spotlight_part_template.Locked = true
            laser_spotlight_part_template.Size = Vector3.new(0.2, 0.2, 0.2)
            laser_spotlight_part_template.TopSurface = "Smooth"
            laser_spotlight_part_template.Transparency = 1
            laser_spotlight_light_template.Angle = 45
            laser_spotlight_light_template.Color = laser_color
            laser_spotlight_light_template.Enabled = true
            laser_spotlight_light_template.Name = "Light"
            laser_spotlight_light_template.Range = 60
            for index = 1, 40 do
                local laser_spotlight_part = laser_spotlight_part_template:Clone()
                laser_spotlight_part.CFrame = magic_circle_cframe * CFrame.new(0, 0, -30 * (index - 1))
                laser_spotlight_part.Parent = magic_circle_model
                laser_lights[index] = {laser_spotlight_part, laser_spotlight_part.Light}
            end
        end
        local laser_effects
        if special_effects then
            laser_effects = {}
            local laser_effect_1 = laser_part:Clone()
            laser_effect_1.BrickColor = special_effects
            laser_effect_1.Transparency = 0.5
            local laser_effect_2 = laser_effect_1:Clone()
            laser_effects[1], laser_effects[2] = {laser_effect_1, laser_effect_1.Mesh}, {laser_effect_2, laser_effect_2.Mesh}
            laser_effect_1.Parent = magic_circle_model
            laser_effect_2.Parent = magic_circle_model
        end
        laser_data={0, directionOrientation, direction, magic_circle_model, laser_part, laser_mesh, magic_circle_part, 

magic_circle_light, magic_circle_decal_back, magic_circle_decal_front, sound, laser_scale, fragmentation_size, duration, laser_lights, laser_effects, stay, 

light_effects}
    end

function laser(target)
ShootLaserOfDeath(target, {brickcolor = BrickColor.new("New Yeller"), duration = 20, fragmentation_size = 10, 

laser_scale = 3, light_color = Color3.new(1, 0.5, 0), magic_circle_image = "rbxassetid://1", magic_circle_scale = 1.5, sound_volume = 1, 

special_effects = BrickColor.new("Deep orange"), stay = 2})
end

function LaserAtMouse()
    laser(mouse.Hit.p)
end

mouse.Button1Down:connect(function()
        pcall(function()
                shoot()
        end)
end)

ready=false

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
elseif k=='q' and attack==false then
		Melee()
        end
end)

function Melee()
        attack = true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,50,100,math.random(10,15),"Normal",RootPart,.2,1) end) 
 for i=0,3,0.3 do
                        swait()
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(5),math.rad(25),math.rad(-20)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(160),math.rad(0),math.rad(0)),.3)

                end
 so("http://www.roblox.com/asset/?id=200632136",Hitbox,1,0.8) 
                for i=0,3,0.3 do
                        swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-150),math.rad(0),math.rad(0)),.3)
                end
                attack=false
con1:disconnect()
        end

function shoot()
        if attack==true and ready==true then
                ready=false
                attack=true
                LaserAtMouse()
                for i=0,3,0.3 do
                        swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(180),math.rad(0),math.rad(40)),.3)
Torso.Velocity=Head.CFrame.lookVector*-100
                end
                attack=false
        end
end

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
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(120),math.rad(0),math.rad(40)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(120),math.rad(0),math.rad(40)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(120),math.rad(0),math.rad(40)),.3)
if attack==false then
end
end
end
if ready==true then
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(160),math.rad(0),math.rad(40)),.3)
        end
        pcall(function()
                AnimateLaserOfDeath(laser_data)
        end)
end

