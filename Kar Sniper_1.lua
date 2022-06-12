local p = game.Players.LocalPlayer
Player = game:GetService("Players").LocalPlayer
Cha = Player.Character
mouse = game.Players.LocalPlayer:GetMouse()
name = Player.Name
me = game.Players[name]
laydown = false
shoot = false
camo = false
prop = false

Cha.Head.Transparency = 1

local new = Instance.new("Part", Player.Character)
new.Name = "hed"
new.formFactor = "Symmetric"
new.TopSurface = "Smooth"
new.BottomSurface = "Smooth"
new.Transparency = 0
new.FormFactor = "Custom"
new.Size = Cha.Head.Size
new.CFrame = Player.Character.Head.CFrame
new.BrickColor = Player.Character.Head.BrickColor
newmeshhh = Instance.new("SpecialMesh",new)
newmeshhh.MeshType = "Head"
newmeshhh.Scale = Vector3.new(1.2,1.2,1.2)
weldT = Instance.new("Weld", Player.Character.Torso)
weldT.Part0 = Player.Character.Head
weldT.Part1 = new
weldT.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


function rand(a)return (math.random()-.5)*2*a end
function q(f,arg)return coroutine.resume(coroutine.create(f),unpack(arg or {}))end
function fade(p,s,inc)q(function(part,start,increment)increment = increment or .05 for i=start,1,increment do part.Transparency = part.Transparency+increment wait(1/30)end end,{p,s,inc})end
function appear(p,s,inc)q(function(part,start,increment)increment = increment or .05 for i=start,0,-increment do part.Transparency = part.Transparency-increment wait(1/30)end end,{p,s,inc})end
function Part(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("Part",Parent)p.Name = Name
        p.FormFactor = "Custom"p.Size = Size
        p.Anchored = Anch p.CFrame = CFrame
        p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
        p.TopSurface = 0 p.CanCollide = Can
        p.BottomSurface = 0 p.Material = Mat
        p.Reflectance = Ref or 0;p:BreakJoints()
        p.Locked = true;return p
end
function WedgePart(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("WedgePart",Parent)p.Name = Name
        p.FormFactor = "Custom"p.Size = Size
        p.Anchored = Anch p.CFrame = CFrame
        p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
        p.TopSurface = 0 p.CanCollide = Can
        p.BottomSurface = 0 p.Material = Mat
        p.Reflectance = Ref or 0;p:BreakJoints()
        p.Locked = true;return p
end
function CornerWedgePart(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("CornerWedgePart",Parent)p.Name = Name;p.Size = Size
        p.Anchored = Anch p.CFrame = CFrame
        p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
        p.TopSurface = 0 p.CanCollide = Can
        p.BottomSurface = 0 p.Material = Mat
        p.Reflectance = Ref or 0;p:BreakJoints()
        p.Locked = true;return p
end
function Mesh(Parent,Type,Scale,ID,TID)
        local m = Instance.new("SpecialMesh",Parent)m.MeshType = Type
        m.Scale = Scale or Vector3.new(1,1,1)
        if ID then m.MeshId = ID end if TID then m.TextureId = TID end
        return m
end
function Weld(p1,p2,c0,c1)
        local w = Instance.new("Weld",p1)w.Part0 = p1;w.Part1 = p2
        w.C0,w.C1 = c0 or CFrame.new(),c1 or CFrame.new()
        return w
end
function cslerp(start,destination,increment)
        local function s(a,b,c)return (1-c)*a+(c*b)end
        local c1 = {start.X,start.Y,start.Z,start:toEulerAnglesXYZ()}
        local c2 = {destination.X,destination.Y,destination.Z,destination:toEulerAnglesXYZ()}
        for i,v in pairs(c1)do c1[i] = s(v,c2[i],increment)end
        return CFrame.new(c1[1],c1[2],c1[3])*CFrame.Angles(c1[4],c1[5],c1[6])
end
local char
function rayCast(pos,dir,collidedlist,startpos,endpos,distleft)
        collidedlist = collidedlist
        startpos = startpos or pos
        distleft = distleft or dir.unit * dir.magnitude
        endpos = endpos or pos + distleft
        local ray = Ray.new(pos,distleft)
        local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray,collidedlist)
        if hitz~=nil then
                if hitz.CanCollide==false then
                        table.insert(collidedlist,hitz)
                        local newpos = enz
                        local newdistleft = distleft-(dir.unit*(pos-newpos).magnitude)
                        if newdistleft~=Vector3.new()then
                                return rayCast(newpos-(dir*0.01),dir,collidedlist,startpos,endpos,newdistleft+(dir*0.01))
                        end
                end
        end
        return hitz,enz,ray
end
function findSurface(part,position)
        local obj = part.CFrame:pointToObjectSpace(position)
        local siz = part.Size/2
        for i,v in pairs(Enum.NormalId:GetEnumItems()) do
                local vec = Vector3.FromNormalId(v)
                local wvec = part.CFrame:vectorToWorldSpace(vec)
                local vz = (obj)/(siz*vec)
                if (math.abs(vz.X-1)<0.01 or math.abs(vz.Y-1)<0.01 or math.abs(vz.Z-1)<0.01) then
                        return wvec,vec
                end
        end
end
----------------
Player=game:GetService("Players").LocalPlayer
Character=Player.Character
Cha=Character
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
Attacking=false
asset = "http://www.roblox.com/asset/?id="
meshes = {["blast"] = 20329976,["ring"] = 3270017,["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["cloud"] = 1095708,["diamond"] = 9756362}


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
--RSH.Parent=nil 
--LSH.Parent=nil 
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
w1.BrickColor = Color
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
w1.Anchored = false
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
w2.BrickColor = Color
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
w2.Anchored = false
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
w1.BrickColor = BrickColor.new("Really black")
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
w1.Anchored = false
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
w2.BrickColor = BrickColor.new("Really black")
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
w2.Anchored = false
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
function Smoke(origin,color)
        local p = Part("Effect",workspace,Vector3.new(2,2,2),origin*CFrame.new(rand(5),-1,rand(5)),color or "Black",.1,false,false,"SmoothPlastic")
        local m = Mesh(p,"Sphere",Vector3.new(1.25,1.25,1.25))
        local bp = Instance.new("BodyPosition",p)bp.D = 100 bp.P = 100 bp.position = p.Position+Vector3.new(0,7,0)
        q(function(pa,me)
                fade(pa,.1)
                for i=25,100 do
                        me.Scale = me.Scale+Vector3.new(0.15,0.1,0.15)
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function brickMagic(origin,color,size)
        local p = Part("Effect",workspace,Vector3.new(size,size,size),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                fade(pa,.2)
                for i=20,100 do
                        me.Scale = me.Scale-Vector3.new(0.05,0.05,0.05)
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function spikeMagic(origin,size,color)
        local p = Part("Effect",workspace,Vector3.new(1,1,1),origin*CFrame.new(0,-size,0),color,1,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size/2,size*2,size/2),asset..meshes["spike"])
        q(function(pa,me)
        appear(pa,1)
        for i=1,size,.5 do
                wait(1/30)
                pa.CFrame = pa.CFrame*CFrame.new(0,.5,0)
        end
        wait(math.random(2,3))fade(pa,0)
        Delay(3,function()pa:Destroy()end)
        end,{p,m})
end
function placePart(origin,size,color,material)
        local p = Part("Effect",workspace,Vector3.new(size,size,size),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,true,material)
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                wait(5)
                fade(pa,0)
                Delay(1.25,function()pa:Destroy()end)
        end,{p,m})
end
function placePartRandSize(origin,min,max,color,material)
        local p = Part("Effect",workspace,Vector3.new(math.random(min,max),math.random(min,max),math.random(min,max)),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,true,material)
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                wait(5)
                fade(pa,0)
                Delay(1.25,function()pa:Destroy()end)
        end,{p,m})
end
function crater(origin,dist)
        local b = workspace.Base
        local bc = b and tostring(b.BrickColor) or "Bright green"
        local m = b and b.Material or "Grass"
        for i=0,360,30 do
                local cf = origin*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,dist)*CFrame.Angles(math.rad(i/30),0,rand(5))
                placePartRandSize(cf,5,15,bc,m)
        end
end
function cylinderExplode(origin,color,size,ysize)
        local p = Part("Effect",workspace,Vector3.new(size,ysize or size,size),origin,color,.2,true,false,"SmoothPlastic")
        local m = Instance.new("CylinderMesh",p)
        q(function(pa,me)
                for i=.2,1,.0075 do
                        me.Scale = me.Scale+Vector3.new(.1,0,.1)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function ringExplode(origin,color,size)
        local p = Part("Effect",workspace,Vector3.new(1,1,1),origin,color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size,size,1),asset..meshes["ring"])
        q(function(pa,me)
                for i=.2,1,.0075 do
                        me.Scale = me.Scale+Vector3.new(0.25,0.25,0)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function crownExplode(origin,color,size)
        local p = Part("Effect",workspace,Vector3.new(size,size,size),origin,color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size/2,size/2,size/2),asset..meshes["crown"])
        q(function(pa,me)
                for i=.2,1,.025 do
                        me.Scale = me.Scale+Vector3.new(0.75,0.75,0.75)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function glitter(origin,color)
        local p = Part("Effect",workspace,Vector3.new(0.75,0.75,0.75),origin*CFrame.new(rand(5),rand(5),rand(5))*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,false,"SmoothPlastic")
        local m = Mesh(p,"Brick",Vector3.new(1,1,1))
        q(function(pa,me)
                fade(pa,0)
                for i=0,1,.05 do
                        me.Scale = me.Scale-Vector3.new(0.05,0.05,0.05)
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function sphereExtend(origin,color,size)
        local p = Part("Effect",workspace,Vector3.new(size,size,size),origin,color,0,true,false,"SmoothPlastic")
        local m = Mesh(p,"Sphere")
        q(function(pa,me)
                for i=0,1,0.05 do
                        me.Scale = me.Scale+Vector3.new(0,i*10,0)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function quickSound(id,v)
        local s = Instance.new("Sound",workspace)
        s.SoundId = id
        s.PlayOnRemove = true
        s.Volume = v or 1
        delay(0.025,function()s:remove()end)
end
function checkDmgArea(origin,dmg,d)
        for i,v in pairs(workspace:children())do
                if v~=char and v:FindFirstChild("Torso") then
                        local h;
                        for _,k in pairs(v:children())do if k:IsA("Humanoid") then h = k end end
                        local dist = (origin.p - v:FindFirstChild("Torso").CFrame.p).magnitude
                        if dist < d and h~=nil then
                                h.Health = h.Health - dmg
                        end
                end
        end
end



p1 =  Instance.new("Part", Cha)
p1.BrickColor = BrickColor.new("Really black")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p1.CFrame = CFrame.new(-0.0500000007, 10.3249998, 8.20000172, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p1.Anchored = false
p1.CanCollide = false
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.50000006, 0.75, 0.50000006)
p2 =  Instance.new("Part", Cha)
p2.BrickColor = BrickColor.new("Really black")
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.200000003, 2)
p2.CFrame = CFrame.new(-0.0500000007, 10.3249998, 12.4000015, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -1.50995803e-007, 2.27997332e-014, -1.50995803e-007, -1)
p2.Anchored = false
p2.CanCollide = false
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.99999994, 0.750000238, 1)
p3 =  Instance.new("Part", Cha)
p3.BrickColor = BrickColor.new("Really black")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.200000003, 0.50000006)
p3.CFrame = CFrame.new(-0.0500000007, 10.4749994, 11.8000002, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -1.50995803e-007, 2.27997332e-014, -1.50995803e-007, -1)
p3.Anchored = false
p3.CanCollide = false
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.99999994, 0.750000298, 1)
p4 =  Instance.new("Part", Cha)
p4.BrickColor = BrickColor.new("Really black")
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.200000003, 3.40000033)
p4.CFrame = CFrame.new(-0.0500000007, 10.1999998, 12.0000019, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -1.50995803e-007, 2.27997332e-014, -1.50995803e-007, -1)
p4.Anchored = false
p4.CanCollide = false
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.99999994, 0.500000179, 1)
p5 =  Instance.new("Part", Cha)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.25, 0.200000003, 0.200000003)
p5.CFrame = CFrame.new(-0.0500000007, 10.5249987, 11.9500017, 1, 1.50995803e-007, 0, -1.50995803e-007, 1, -6.60023616e-015, 0, 6.60023616e-015, 1)
p5.Anchored = false
p5.CanCollide = false
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Cylinder
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 0.875, 0.875)
p6 =  Instance.new("Part", Cha)
p6.BrickColor = BrickColor.new("Really black")
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.45000005, 0.200000003, 0.200000003)
p6.CFrame = CFrame.new(-0.0500000231, 10.2249994, 7.57500076, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p6.Anchored = false
p6.CanCollide = false
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Cylinder
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 0.5, 0.5)
p7 =  Instance.new("Part", Cha)
p7.BrickColor = BrickColor.new("Pastel brown")
p7.Transparency = 1
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.5, 0.5, 1)
p7.CFrame = CFrame.new(-0.0500000007, 9.75, 12.8249979, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p7.Anchored = false
p7.CanCollide = false
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
p8 =  Instance.new("Part", Cha)
p8.BrickColor = BrickColor.new("Really black")
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 0.25000003, 3.5)
p8.CFrame = CFrame.new(-0.0500000007, 10.0749998, 12.0500021, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -1.50995803e-007, 2.27997332e-014, -1.50995803e-007, -1)
p8.Anchored = false
p8.CanCollide = false
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.99999994, 1, 1)
p9 =  Instance.new("Part", Cha)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.200000003, 0.200000003, 0.300000131)
p9.CFrame = CFrame.new(-0.0500000007, 10.0999994, 14.7750015, -4.37113883e-008, 0, -1, -1.50995803e-007, 1, 6.60023616e-015, 1, 1.50995803e-007, -4.37113883e-008)
p9.Anchored = false
p9.CanCollide = false
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Cylinder
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.5, 0.99999994, 1)
p10 =  Instance.new("Part", Cha)
p10.BrickColor = BrickColor.new("Really black")
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000003, 0.5, 0.800000012)
p10.CFrame = CFrame.new(-0.0500000007, 9.82392216, 12.5223665, -1, -1.50995803e-007, 0, -1.49526329e-007, 0.990268111, -0.139172941, 2.10145306e-008, -0.139172941, -0.990268111)
p10.Anchored = false
p10.CanCollide = false
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.99999994, 1, 1)
p11 =  Instance.new("Part", Cha)
p11.BrickColor = BrickColor.new("Really black")
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000003, 0.200000003, 0.300000012)
p11.CFrame = CFrame.new(-0.0500000007, 9.6954546, 13.0453367, -1, -1.50995803e-007, 0, -1.49526329e-007, 0.990268111, -0.139172941, 2.10145306e-008, -0.139172941, -0.990268111)
p11.Anchored = false
p11.CanCollide = false
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.99999994, 0.500000119, 1)
p12 =  Instance.new("Part", Cha)
p12.BrickColor = BrickColor.new("Really black")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000003, 0.450000048, 0.200000003)
p12.CFrame = CFrame.new(-0.0500000007, 9.8826685, 13.1200056, -1, -1.50995803e-007, 0, -1.49526329e-007, 0.990268111, -0.139172941, 2.10145306e-008, -0.139172941, -0.990268111)
p12.Anchored = false
p12.CanCollide = false
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.99999994, 1, 0.50000006)
p13 =  Instance.new("Part", Cha)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p13.CFrame = CFrame.new(-0.0500000007, 9.86914063, 12.0564413, -4.37113883e-008, 0, 1, -0.139172822, 0.990268111, -6.08343731e-009, -0.990268111, -0.139172822, -4.32859935e-008)
p13.Anchored = false
p13.CanCollide = false
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=3270017"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.5, 0.5, 0.349999994)
p14 =  Instance.new("Part", Cha)
p14.BrickColor = BrickColor.new("Really black")
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.600000024, 0.200000003, 0.249999896)
p14.CFrame = CFrame.new(-0.0500000007, 10.0249996, 14.1000032, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p14.Anchored = false
p14.CanCollide = false
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p14)
b14.MeshType = Enum.MeshType.Cylinder
b14.Name = "Mesh"
b14.Scale = Vector3.new(1, 0.750000179, 1)
p15 =  Instance.new("Part", Cha)
p15.BrickColor = BrickColor.new("Really black")
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 0.200000003, 0.44999975)
p15.CFrame = CFrame.new(-0.0500000007, 10.0250006, 14.5500021, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -1.50995803e-007, 2.27997332e-014, -1.50995803e-007, -1)
p15.Anchored = false
p15.CanCollide = false
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p15)
b15.MeshType = Enum.MeshType.Brick
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.99999994, 0.750000179, 1)
p16 =  Instance.new("Part", Cha)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1.20000005, 0.200000003, 0.200000003)
p16.CFrame = CFrame.new(-0.0500000007, 10.7749996, 10.8750019, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p16.Anchored = false
p16.CanCollide = false
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p16)
b16.MeshType = Enum.MeshType.Cylinder
b16.Name = "Mesh"
p17 =  Instance.new("Part", Cha)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.200000003, 0.75, 0.200000003)
p17.CFrame = CFrame.new(-0.0500000007, 9.72500038, 14.7750015, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -1.50995803e-007, 2.27997332e-014, -1.50995803e-007, -1)
p17.Anchored = false
p17.CanCollide = false
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p17)
b17.MeshType = Enum.MeshType.Brick
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.99999994, 1, 0.500000715)
p18 =  Instance.new("Part", Cha)
p18.BrickColor = BrickColor.new("Really black")
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.200000003, 0.200000003, 0.650000095)
p18.CFrame = CFrame.new(-0.0500000007, 10.5499992, 11.5250006, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -1.50995803e-007, 2.27997332e-014, -1.50995803e-007, -1)
p18.Anchored = false
p18.CanCollide = false
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Brick
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.99999994, 0.500000358, 1)
p19 =  Instance.new("Part", Cha)
p19.BrickColor = BrickColor.new("Really black")
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p19.CFrame = CFrame.new(-0.0500000007, 10.6750002, 11.3250027, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p19.Anchored = false
p19.CanCollide = false
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p19)
b19.MeshId = "http://www.roblox.com/asset/?id=3270017"
b19.TextureId = ""
b19.MeshType = Enum.MeshType.FileMesh
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.25, 0.25, 0.349999994)
p20 =  Instance.new("Part", Cha)
p20.BrickColor = BrickColor.new("Really black")
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p20.CFrame = CFrame.new(-0.0500000007, 10.874999, 10.8750019, -1.07284414e-007, 1, -5.21080397e-015, 1, 1.07284414e-007, 3.17865059e-008, 3.17865059e-008, -1.80060697e-015, -1)
p20.Anchored = false
p20.CanCollide = false
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("SpecialMesh", p20)
b20.MeshType = Enum.MeshType.Cylinder
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.500000358, 1, 1)
p21 =  Instance.new("Part", Cha)
p21.BrickColor = BrickColor.new("Really black")
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.300000072, 0.200000003, 0.200000003)
p21.CFrame = CFrame.new(-0.0500000007, 10.7749996, 10.8750019, -1, -1.50995803e-007, -3.17865059e-008, -1.50995803e-007, 1, -6.60023616e-015, 3.17865059e-008, -1.80060697e-015, -1)
p21.Anchored = false
p21.CanCollide = false
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p21)
b21.MeshType = Enum.MeshType.Cylinder
b21.Name = "Mesh"
p22 =  Instance.new("Part", Cha)
p22.BrickColor = BrickColor.new("Really black")
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.5, 0.200000003, 0.5)
p22.CFrame = CFrame.new(-0.0500000007, 10.7749996, 11.3499994, -1, 8.74227766e-008, 0, 0, 0, -1, -8.74227766e-008, -1, 0)
p22.Anchored = false
p22.CanCollide = false
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p22)
b22.MeshId = "http://www.roblox.com/asset/?id=1033714"
b22.TextureId = ""
b22.MeshType = Enum.MeshType.FileMesh
b22.Name = "Mesh"
b22.VertexColor = Vector3.new(3.00000003e+015, 2.99999995e+031, 3.00000003e+015)
b22.Scale = Vector3.new(0.100000001, 1, 0.100000001)
p23 =  Instance.new("Part", Cha)
p23.BrickColor = BrickColor.new("Really black")
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.5, 0.5, 0.5)
p23.CFrame = CFrame.new(-0.0499995016, 10.7749996, 10.0999994, 1, 0, 0, 0, 0, -1, 0, 1, 0)
p23.Anchored = false
p23.CanCollide = false
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("SpecialMesh", p23)
b23.MeshId = "http://www.roblox.com/asset/?id=1033714"
b23.TextureId = ""
b23.MeshType = Enum.MeshType.FileMesh
b23.Name = "Mesh"
b23.VertexColor = Vector3.new(3.00000003e+015, 2.99999995e+031, 3.00000003e+015)
b23.Scale = Vector3.new(0.200000003, 1, 0.200000003)
p24 =  Instance.new("Part", Cha)
p24.BrickColor = BrickColor.new("Really black")
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.200000003, 0.224999994, 0.224999994)
p24.CFrame = CFrame.new(-0.0500000007, 10.7749996, 10.2750015, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p24.Anchored = false
p24.CanCollide = false
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b24 = Instance.new("SpecialMesh", p24)
b24.MeshType = Enum.MeshType.Cylinder
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.500000119, 1, 1)
p25 =  Instance.new("Part", Cha)
p25.BrickColor = BrickColor.new("Really black")
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p25.CFrame = CFrame.new(-0.0500000007, 10.5249996, 10.3000031, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p25.Anchored = false
p25.CanCollide = false
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("SpecialMesh", p25)
b25.MeshId = "http://www.roblox.com/asset/?id=3270017"
b25.TextureId = ""
b25.MeshType = Enum.MeshType.FileMesh
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.25, 0.5, 0.349999994)
p26 =  Instance.new("Part", Cha)
p26.BrickColor = BrickColor.new("Really black")
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.200000003, 1.20000005, 0.5)
p26.CFrame = CFrame.new(-0.0500000007, 9.51616573, 10.9198675, -1, -1.50995803e-007, 0, -1.40000864e-007, 0.927183807, 0.374606699, -5.65640406e-008, 0.374606699, -0.927183807)
p26.Anchored = false
p26.CanCollide = false
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("SpecialMesh", p26)
b26.MeshType = Enum.MeshType.Brick
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.99999994, 1, 1)
p27 =  Instance.new("Part", Cha)
p27.BrickColor = BrickColor.new("Really black")
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.200000003, 1, 0.200000003)
p27.CFrame = CFrame.new(-0.275000006, 9.72679424, 9.47500324, -0.866025388, 0.50000006, 0, 0.50000006, 0.866025388, -1.50995803e-007, -7.54979084e-008, -1.30766196e-007, -1)
p27.Anchored = false
p27.CanCollide = false
p27.BottomSurface = Enum.SurfaceType.Smooth
p27.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("SpecialMesh", p27)
b27.MeshType = Enum.MeshType.Brick
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.5, 1, 0.750000119)
p28 =  Instance.new("Part", Cha)
p28.BrickColor = BrickColor.new("Really black")
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.200000003, 0.200000003, 0.550000012)
p28.CFrame = CFrame.new(-0.0500000007, 9.92500019, 9.52500153, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -1.50995803e-007, 2.27997332e-014, -1.50995803e-007, -1)
p28.Anchored = false
p28.CanCollide = false
p28.BottomSurface = Enum.SurfaceType.Smooth
p28.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("SpecialMesh", p28)
b28.MeshType = Enum.MeshType.Brick
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.99999994, 0.750000417, 1)
p29 =  Instance.new("Part", Cha)
p29.BrickColor = BrickColor.new("Really black")
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.200000003, 0.50000006, 1.25)
p29.CFrame = CFrame.new(-0.0500000007, 10.1999998, 9.72500229, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -1.50995803e-007, 2.27997332e-014, -1.50995803e-007, -1)
p29.Anchored = false
p29.CanCollide = false
p29.BottomSurface = Enum.SurfaceType.Smooth
p29.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("SpecialMesh", p29)
b29.MeshType = Enum.MeshType.Brick
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.99999994, 1, 1)
p30 =  Instance.new("Part", Cha)
p30.BrickColor = BrickColor.new("Really black")
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.200000003, 0.450000018, 0.200000003)
p30.CFrame = CFrame.new(-0.562499523, 9.22882938, 9.47500324, -0.866025388, 0.50000006, 0, 0.50000006, 0.866025388, -1.50995803e-007, -7.54979084e-008, -1.30766196e-007, -1)
p30.Anchored = false
p30.CanCollide = false
p30.BottomSurface = Enum.SurfaceType.Smooth
p30.TopSurface = Enum.SurfaceType.Smooth
b30 = Instance.new("SpecialMesh", p30)
b30.MeshType = Enum.MeshType.Brick
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.625, 1, 0.875)
p31 =  Instance.new("Part", Cha)
p31.BrickColor = BrickColor.new("Really black")
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.200000003, 0.899999976, 0.5)
p31.CFrame = CFrame.new(-0.0500000007, 9.20888424, 12.4573278, -1, -1.50995803e-007, 0, -1.49526329e-007, 0.990268111, -0.139172941, 2.10145306e-008, -0.139172941, -0.990268111)
p31.Anchored = false
p31.CanCollide = false
p31.BottomSurface = Enum.SurfaceType.Smooth
p31.TopSurface = Enum.SurfaceType.Smooth
b31 = Instance.new("SpecialMesh", p31)
b31.MeshType = Enum.MeshType.Brick
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.99999994, 1, 1)
p32 =  Instance.new("Part", Cha)
p32.BrickColor = BrickColor.new("Really black")
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.425000012, 0.200000003, 0.275000006)
p32.CFrame = CFrame.new(-0.637500525, 9.00382996, 9.47500324, -1, -5.96046448e-008, -7.54979013e-008, -5.96046448e-008, 1, -1.30766196e-007, 7.54979084e-008, -1.30766196e-007, -1)
p32.Anchored = false
p32.CanCollide = false
p32.BottomSurface = Enum.SurfaceType.Smooth
p32.TopSurface = Enum.SurfaceType.Smooth
b32 = Instance.new("SpecialMesh", p32)
b32.MeshType = Enum.MeshType.Brick
b32.Name = "Mesh"
b32.Scale = Vector3.new(1, 0.500000119, 1)
p33 =  Instance.new("Part", Cha)
p33.BrickColor = BrickColor.new("Black")
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.899999976, 0.200000003, 0.200000003)
p33.CFrame = CFrame.new(-0.0500000007, 10.2249985, 7.10000086, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p33.Anchored = false
p33.CanCollide = false
p33.BottomSurface = Enum.SurfaceType.Smooth
p33.TopSurface = Enum.SurfaceType.Smooth
b33 = Instance.new("SpecialMesh", p33)
b33.MeshType = Enum.MeshType.Cylinder
b33.Name = "Mesh"
b33.Scale = Vector3.new(1, 0.875, 0.875)
p34 =  Instance.new("Part", Cha)
p34.BrickColor = BrickColor.new("Really black")
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.200000003, 1, 0.200000003)
p34.CFrame = CFrame.new(0.174999997, 9.72679424, 9.47500324, -0.866025388, -0.50000006, 0, -0.50000006, 0.866025388, -1.50995803e-007, 7.54979084e-008, -1.30766196e-007, -1)
p34.Anchored = false
p34.CanCollide = false
p34.BottomSurface = Enum.SurfaceType.Smooth
p34.TopSurface = Enum.SurfaceType.Smooth
b34 = Instance.new("SpecialMesh", p34)
b34.MeshType = Enum.MeshType.Brick
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.5, 1, 0.750000119)
p35 =  Instance.new("Part", Cha)
p35.BrickColor = BrickColor.new("Really black")
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.200000003, 0.450000018, 0.200000003)
p35.CFrame = CFrame.new(0.462500006, 9.22882938, 9.47500324, -0.866025388, -0.50000006, 0, -0.50000006, 0.866025388, -1.50995803e-007, 7.54979084e-008, -1.30766196e-007, -1)
p35.Anchored = false
p35.CanCollide = false
p35.BottomSurface = Enum.SurfaceType.Smooth
p35.TopSurface = Enum.SurfaceType.Smooth
b35 = Instance.new("SpecialMesh", p35)
b35.MeshType = Enum.MeshType.Brick
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.625, 1, 0.875)
p36 =  Instance.new("Part", Cha)
p36.BrickColor = BrickColor.new("Really black")
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.299999982, 0.200000003, 0.700000048)
p36.CFrame = CFrame.new(-0.0500000007, 8.7949791, 12.5659933, -1, -1.50995803e-007, 0, -1.49526329e-007, 0.990268111, -0.139172941, 2.10145306e-008, -0.139172941, -0.990268111)
p36.Anchored = false
p36.CanCollide = false
p36.BottomSurface = Enum.SurfaceType.Smooth
p36.TopSurface = Enum.SurfaceType.Smooth
b36 = Instance.new("SpecialMesh", p36)
b36.MeshType = Enum.MeshType.Brick
b36.Name = "Mesh"
b36.Scale = Vector3.new(1, 0.749999881, 1)
p37 =  Instance.new("Part", Cha)
p37.BrickColor = BrickColor.new("Really black")
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.425000012, 0.200000003, 0.275000006)
p37.CFrame = CFrame.new(0.562499523, 9.00382996, 9.47500324, -1, -5.96046448e-008, -7.54979013e-008, -5.96046448e-008, 1, -1.30766196e-007, 7.54979084e-008, -1.30766196e-007, -1)
p37.Anchored = false
p37.CanCollide = false
p37.BottomSurface = Enum.SurfaceType.Smooth
p37.TopSurface = Enum.SurfaceType.Smooth
b37 = Instance.new("SpecialMesh", p37)
b37.MeshType = Enum.MeshType.Brick
b37.Name = "Mesh"
b37.Scale = Vector3.new(1, 0.500000119, 1)
p38 =  Instance.new("Part", Cha)
p38.BrickColor = BrickColor.new("Really black")
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(1.35000002, 0.200000003, 0.200000003)
p38.CFrame = CFrame.new(-0.0500000231, 10.0749989, 7.85000134, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p38.Anchored = false
p38.CanCollide = false
p38.BottomSurface = Enum.SurfaceType.Smooth
p38.TopSurface = Enum.SurfaceType.Smooth
b38 = Instance.new("SpecialMesh", p38)
b38.MeshType = Enum.MeshType.Cylinder
b38.Name = "Mesh"
b38.Scale = Vector3.new(1, 0.5, 0.5)
p39 =  Instance.new("Part", Cha)
p39.BrickColor = BrickColor.new("Really black")
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.75, 0.200000003, 0.200000003)
p39.CFrame = CFrame.new(-0.0500000007, 10.0749989, 8.75000191, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p39.Anchored = false
p39.CanCollide = false
p39.BottomSurface = Enum.SurfaceType.Smooth
p39.TopSurface = Enum.SurfaceType.Smooth
b39 = Instance.new("SpecialMesh", p39)
b39.MeshType = Enum.MeshType.Cylinder
b39.Name = "Mesh"
b39.Scale = Vector3.new(1, 0.75, 0.75)
p40 =  Instance.new("Part", Cha)
p40.BrickColor = BrickColor.new("Really black")
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p40.CFrame = CFrame.new(-0.0500000007, 10.0749989, 8.5500021, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p40.Anchored = false
p40.CanCollide = false
p40.BottomSurface = Enum.SurfaceType.Smooth
p40.TopSurface = Enum.SurfaceType.Smooth
b40 = Instance.new("SpecialMesh", p40)
b40.MeshType = Enum.MeshType.Cylinder
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.5, 0.875, 0.875)
p41 =  Instance.new("Part", Cha)
p41.BrickColor = BrickColor.new("Really black")
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.899999976, 0.200000003, 0.200000003)
p41.CFrame = CFrame.new(-0.0500000007, 10.2249994, 8.70000172, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p41.Anchored = false
p41.CanCollide = false
p41.BottomSurface = Enum.SurfaceType.Smooth
p41.TopSurface = Enum.SurfaceType.Smooth
b41 = Instance.new("SpecialMesh", p41)
b41.MeshType = Enum.MeshType.Cylinder
b41.Name = "Mesh"
b41.Scale = Vector3.new(1, 0.875, 0.875)
p42 = Instance.new("Part", Cha)
p42.BrickColor = BrickColor.new("Really black")
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p42.CFrame = CFrame.new(-0.0500000007, 10.2249994, 8.5500021, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p42.Anchored = false
p42.CanCollide = false
p42.BottomSurface = Enum.SurfaceType.Smooth
p42.TopSurface = Enum.SurfaceType.Smooth
b42 = Instance.new("SpecialMesh", p42)
b42.MeshType = Enum.MeshType.Cylinder
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.500000119, 1, 1)
p43 = Instance.new("Part", Cha)
p43.BrickColor = BrickColor.new("Really black")
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p43.CFrame = CFrame.new(-0.0500000007, 10.2249994, 8.22500134, -4.37113883e-008, 0, 1, -1.50995803e-007, 1, -6.60023616e-015, -1, -1.50995803e-007, -4.37113883e-008)
p43.Anchored = false
p43.CanCollide = false
p43.BottomSurface = Enum.SurfaceType.Smooth
p43.TopSurface = Enum.SurfaceType.Smooth
b43 = Instance.new("SpecialMesh", p43)
b43.MeshType = Enum.MeshType.Cylinder
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.749999881, 0.75, 0.75)
w1 = Instance.new("Weld", p7)
w1.Name = "BTWeld"
w1.Part0 = p7
w1.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p1
w1.C1 = CFrame.new(-4.62499619, -0.574999809, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w2 = Instance.new("Weld", p7)
w2.Name = "BTWeld"
w2.Part0 = p7
w2.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p2
w2.C1 = CFrame.new(8.56816769e-008, -0.574999809, -0.424996376, 1, -1.50995803e-007, -2.27997332e-014, 1.50995803e-007, 1, 1.50995803e-007, -0, -1.50995803e-007, 1)
w3 = Instance.new("Weld", p7)
w3.Name = "BTWeld"
w3.Part0 = p7
w3.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p3
w3.C1 = CFrame.new(1.11758709e-007, -0.724999428, -1.02499771, 1, -1.50995803e-007, -2.27997332e-014, 1.50995803e-007, 1, 1.50995803e-007, -0, -1.50995803e-007, 1)
w4 = Instance.new("Weld", p7)
w4.Name = "BTWeld"
w4.Part0 = p7
w4.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p4
w4.C1 = CFrame.new(6.70552254e-008, -0.449999809, -0.824995995, 1, -1.50995803e-007, -2.27997332e-014, 1.50995803e-007, 1, 1.50995803e-007, -0, -1.50995803e-007, 1)
w5 = Instance.new("Weld", p7)
w5.Name = "BTWeld"
w5.Part0 = p7
w5.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p5
w5.C1 = CFrame.new(1.1920929e-007, -0.774998665, 0.874996185, -1, -1.50995803e-007, 0, -1.50995803e-007, 1, -6.60023616e-015, 0, -6.60023616e-015, -1)
w6 = Instance.new("Weld", p7)
w6.Name = "BTWeld"
w6.Part0 = p7
w6.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p6
w6.C1 = CFrame.new(-5.24999762, -0.475000381, -2.04890966e-007, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w7 = Instance.new("Weld", p7)
w7.Name = "BTWeld"
w7.Part0 = p7
w7.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(4.84287739e-008, -0.324999809, -0.774995804, 1, -1.50995803e-007, -2.27997332e-014, 1.50995803e-007, 1, 1.50995803e-007, -0, -1.50995803e-007, 1)
w8 = Instance.new("Weld", p7)
w8.Name = "BTWeld"
w8.Part0 = p7
w8.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(-1.95000362, -0.349999428, 8.56816769e-008, 4.37113883e-008, -1.50995803e-007, -1, 0, 1, -1.50995803e-007, 1, 6.60023616e-015, 4.37113883e-008)
w9 = Instance.new("Weld", p7)
w9.Name = "BTWeld"
w9.Part0 = p7
w9.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(1.49011612e-008, -0.115321159, -0.289399147, 1, -1.49526329e-007, -2.10145306e-008, 1.50995803e-007, 0.990268111, 0.139172941, -0, -0.139172941, 0.990268111)
w10 = Instance.new("Weld", p7)
w10.Name = "BTWeld"
w10.Part0 = p7
w10.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(-1.49011612e-008, 0.0846796036, 0.21060276, 1, -1.49526329e-007, -2.10145306e-008, 1.50995803e-007, 0.990268111, 0.139172941, -0, -0.139172941, 0.990268111)
w11 = Instance.new("Weld", p7)
w11.Name = "BTWeld"
w11.Part0 = p7
w11.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(1.49011612e-008, -0.0903201103, 0.310600281, 1, -1.49526329e-007, -2.10145306e-008, 1.50995803e-007, 0.990268111, 0.139172941, -0, -0.139172941, 0.990268111)
w12 = Instance.new("Weld", p7)
w12.Name = "BTWeld"
w12.Part0 = p7
w12.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(-0.744495392, -0.224943161, -3.35276127e-008, 4.37113883e-008, -0.139172822, 0.990268111, 0, 0.990268111, 0.139172822, -1, -6.08343731e-009, 4.32859935e-008)
w13 = Instance.new("Weld", p7)
w13.Name = "BTWeld"
w13.Part0 = p7
w13.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p14
w13.C1 = CFrame.new(1.27500534, -0.274999619, 5.58793545e-008, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w14 = Instance.new("Weld", p7)
w14.Name = "BTWeld"
w14.Part0 = p7
w14.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(4.09781933e-008, -0.275000572, 1.7250042, 1, -1.50995803e-007, -2.27997332e-014, 1.50995803e-007, 1, 1.50995803e-007, -0, -1.50995803e-007, 1)
w15 = Instance.new("Weld", p7)
w15.Name = "BTWeld"
w15.Part0 = p7
w15.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p16
w15.C1 = CFrame.new(-1.94999599, -1.02499962, -8.19563866e-008, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w16 = Instance.new("Weld", p7)
w16.Name = "BTWeld"
w16.Part0 = p7
w16.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16.Part1 = p17
w16.C1 = CFrame.new(-3.7252903e-009, 0.0249996185, 1.95000362, 1, -1.50995803e-007, -2.27997332e-014, 1.50995803e-007, 1, 1.50995803e-007, -0, -1.50995803e-007, 1)
w17 = Instance.new("Weld", p7)
w17.Name = "BTWeld"
w17.Part0 = p7
w17.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17.Part1 = p18
w17.C1 = CFrame.new(1.2293458e-007, -0.799999237, -1.29999733, 1, -1.50995803e-007, -2.27997332e-014, 1.50995803e-007, 1, 1.50995803e-007, -0, -1.50995803e-007, 1)
w18 = Instance.new("Weld", p7)
w18.Name = "BTWeld"
w18.Part0 = p7
w18.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18.Part1 = p19
w18.C1 = CFrame.new(0, -0.925000191, -1.49999523, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p7)
w19.Name = "BTWeld"
w19.Part0 = p7
w19.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19.Part1 = p20
w19.C1 = CFrame.new(-1.12499905, -1.1920929e-007, -1.94999599, 1.07284414e-007, 1, -3.17865059e-008, -1, 1.07284414e-007, 1.80060697e-015, 5.21080397e-015, 3.17865059e-008, 1)
w20 = Instance.new("Weld", p7)
w20.Name = "BTWeld"
w20.Part0 = p7
w20.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20.Part1 = p21
w20.C1 = CFrame.new(2.16066837e-007, -1.02499962, -1.94999599, 1, -1.50995803e-007, -3.17865059e-008, 1.50995803e-007, 1, 1.80060697e-015, 3.17865059e-008, -6.60023616e-015, 1)
w21 = Instance.new("Weld", p7)
w21.Name = "BTWeld"
w21.Part0 = p7
w21.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21.Part1 = p22
w21.C1 = CFrame.new(-1.3038516e-007, -1.47499847, 1.02499962, 1, 0, 8.74227766e-008, -8.74227766e-008, 0, 1, 0, -1, 0)
w22 = Instance.new("Weld", p7)
w22.Name = "BTWeld"
w22.Part0 = p7
w22.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22.Part1 = p23
w22.C1 = CFrame.new(-4.991889e-007, 2.72499847, 1.02499962, -1, 0, 0, 0, 0, -1, 0, -1, 0)
w23 = Instance.new("Weld", p7)
w23.Name = "BTWeld"
w23.Part0 = p7
w23.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23.Part1 = p24
w23.C1 = CFrame.new(-2.54999638, -1.02499962, -1.08033419e-007, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w24 = Instance.new("Weld", p7)
w24.Name = "BTWeld"
w24.Part0 = p7
w24.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24.Part1 = p25
w24.C1 = CFrame.new(0, -0.774999619, -2.52499485, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p7)
w25.Name = "BTWeld"
w25.Part0 = p7
w25.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25.Part1 = p26
w25.C1 = CFrame.new(-1.37835741e-007, 0.930481911, -1.67881012, 1, -1.40000864e-007, 5.65640406e-008, 1.50995803e-007, 0.927183807, -0.374606699, 0, 0.374606699, 0.927183807)
w26 = Instance.new("Weld", p7)
w26.Name = "BTWeld"
w26.Part0 = p7
w26.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26.Part1 = p27
w26.C1 = CFrame.new(-0.183252811, 0.132596016, -3.34999466, 0.866025388, 0.50000006, 7.54979084e-008, -0.50000006, 0.866025388, 1.30766196e-007, -0, -1.50995803e-007, 1)
w27 = Instance.new("Weld", p7)
w27.Name = "BTWeld"
w27.Part0 = p7
w27.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27.Part1 = p28
w27.C1 = CFrame.new(2.60770321e-008, -0.175000191, -3.29999638, 1, -1.50995803e-007, -2.27997332e-014, 1.50995803e-007, 1, 1.50995803e-007, -0, -1.50995803e-007, 1)
w28 = Instance.new("Weld", p7)
w28.Name = "BTWeld"
w28.Part0 = p7
w28.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28.Part1 = p29
w28.C1 = CFrame.new(6.70552254e-008, -0.449999809, -3.09999561, 1, -1.50995803e-007, -2.27997332e-014, 1.50995803e-007, 1, 1.50995803e-007, -0, -1.50995803e-007, 1)
w29 = Instance.new("Weld", p7)
w29.Name = "BTWeld"
w29.Part0 = p7
w29.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29.Part1 = p30
w29.C1 = CFrame.new(-0.183252335, 0.707596779, -3.34999561, 0.866025388, 0.50000006, 7.54979084e-008, -0.50000006, 0.866025388, 1.30766196e-007, -0, -1.50995803e-007, 1)
w30 = Instance.new("Weld", p7)
w30.Name = "BTWeld"
w30.Part0 = p7
w30.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30.Part1 = p31
w30.C1 = CFrame.new(-7.07805157e-008, 0.484679699, -0.439400673, 1, -1.49526329e-007, -2.10145306e-008, 1.50995803e-007, 0.990268111, 0.139172941, -0, -0.139172941, 0.990268111)
w31 = Instance.new("Weld", p7)
w31.Name = "BTWeld"
w31.Part0 = p7
w31.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w31.Part1 = p32
w31.C1 = CFrame.new(-0.587500334, 0.74616909, -3.34999466, 1, -5.96046448e-008, -7.54979084e-008, 5.96046448e-008, 1, 1.30766196e-007, 7.54979013e-008, -1.30766196e-007, 1)
w32 = Instance.new("Weld", p7)
w32.Name = "BTWeld"
w32.Part0 = p7
w32.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32.Part1 = p33
w32.C1 = CFrame.new(-5.72499752, -0.474999428, -2.4959445e-007, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w33 = Instance.new("Weld", p7)
w33.Name = "BTWeld"
w33.Part0 = p7
w33.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w33.Part1 = p34
w33.C1 = CFrame.new(0.183252811, 0.132595062, -3.34999466, 0.866025388, -0.50000006, -7.54979084e-008, 0.50000006, 0.866025388, 1.30766196e-007, -0, -1.50995803e-007, 1)
w34 = Instance.new("Weld", p7)
w34.Name = "BTWeld"
w34.Part0 = p7
w34.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w34.Part1 = p35
w34.C1 = CFrame.new(0.183252335, 0.707595825, -3.34999561, 0.866025388, -0.50000006, -7.54979084e-008, 0.50000006, 0.866025388, 1.30766196e-007, -0, -1.50995803e-007, 1)
w35 = Instance.new("Weld", p7)
w35.Name = "BTWeld"
w35.Part0 = p7
w35.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35.Part1 = p36
w35.C1 = CFrame.new(-1.37835741e-007, 0.90967989, -0.389397621, 1, -1.49526329e-007, -2.10145306e-008, 1.50995803e-007, 0.990268111, 0.139172941, -0, -0.139172941, 0.990268111)
w36 = Instance.new("Weld", p7)
w36.Name = "BTWeld"
w36.Part0 = p7
w36.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w36.Part1 = p37
w36.C1 = CFrame.new(0.612499714, 0.74616909, -3.34999466, 1, -5.96046448e-008, -7.54979084e-008, 5.96046448e-008, 1, 1.30766196e-007, 7.54979013e-008, -1.30766196e-007, 1)
w37 = Instance.new("Weld", p7)
w37.Name = "BTWeld"
w37.Part0 = p7
w37.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w37.Part1 = p38
w37.C1 = CFrame.new(-4.97499704, -0.324999809, -1.93715096e-007, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w38 = Instance.new("Weld", p7)
w38.Name = "BTWeld"
w38.Part0 = p7
w38.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w38.Part1 = p39
w38.C1 = CFrame.new(-4.07499599, -0.324999809, -1.75088644e-007, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w39 = Instance.new("Weld", p7)
w39.Name = "BTWeld"
w39.Part0 = p7
w39.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w39.Part1 = p40
w39.C1 = CFrame.new(-4.2749958, -0.324999809, -1.86264515e-007, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w40 = Instance.new("Weld", p7)
w40.Name = "BTWeld"
w40.Part0 = p7
w40.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w40.Part1 = p41
w40.C1 = CFrame.new(-4.12499619, -0.475000381, -1.78813934e-007, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w41 = Instance.new("Weld", p7)
w41.Name = "BTWeld"
w41.Part0 = p7
w41.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w41.Part1 = p42
w41.C1 = CFrame.new(-4.2749958, -0.475000381, -1.86264515e-007, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)
w42 = Instance.new("Weld", p7)
w42.Name = "BTWeld"
w42.Part0 = p7
w42.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w42.Part1 = p43
w42.C1 = CFrame.new(-4.59999657, -0.475000381, -1.97440386e-007, 4.37113883e-008, -1.50995803e-007, 1, 0, 1, 1.50995803e-007, -1, -6.60023616e-015, 4.37113883e-008)


rlwww = Instance.new("Weld", Cha)
rlwww.Part0 = Cha["Right Arm"]
rlwww.C0 = CFrame.new(0,-.5,0)*CFrame.fromEulerAnglesXYZ(-1.55,2.7,0)
rlwww.Part1 = p7

mouse.KeyDown:connect(function(key)
key:lower()
if key == "z" and laydown == false and prop == false then
laydown = true
prop = true
Cha.Humanoid.WalkSpeed = 10
end
end)

mouse.KeyDown:connect(function(key)
key:lower()
if key == "x" and laydown == true and prop == true then
laydown = false
prop = false
Cha.Humanoid.WalkSpeed = 16
end
end)

s = Instance.new("Sound")
s.SoundId = "http://www.roblox.com/asset?id=151112832"
s.Parent = Cha
s.Volume = 5

s2 = Instance.new("Sound")
s2.SoundId = "http://www.roblox.com/asset?id=200289883"
s2.Parent = Cha
s2.Volume = 5


mouse.Button1Down:connect(function()
if (not vDebounce) and shoot == false then
shoot = true


Bullet1=Instance.new('Part',Workspace)
Bullet1.BrickColor=BrickColor.new("Medium stone grey")
Bullet1.CanCollide = True
Bullet1.TopSurface = "Smooth"
Bullet1.BottomSurface = "Smooth"
Bullet1.Transparency = 0.2
Bullet1.Size = Vector3.new(.2,.2,3)
Bullet1.CFrame = p33.CFrame *CFrame.new(0, -2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
game.Debris:AddItem(Bullet1, 10)
Bullet1Mesh = Instance.new("SpecialMesh",Bullet1)
Bullet1Mesh.MeshType = "Sphere"
Bullet1Mesh.Scale = Vector3.new(.5,1,.5)

Bullet1shoot = Instance.new('BodyVelocity',Bullet1) 
Bullet1shoot.maxForce = Vector3.new(math.huge, math.huge, math.huge)
Bullet1shoot.velocity = Cha.Head.CFrame.lookVector*1000

Bullet1:BreakJoints()



Bullet1.Touched:connect(function(hit)
Damagefunc(hit,1,80,math.random(1,3),"Normal",RootPart,.2,1)
end)

s:Play()

Blast=Instance.new('Part',Workspace)
Blast.BrickColor=BrickColor.new("Medium stone grey")
Blast.CanCollide = True
Blast.TopSurface = "Smooth"
Blast.BottomSurface = "Smooth"
Blast.Transparency = 0
Blast.Anchored = false
Blast.Size = Vector3.new(3,3,3)
Blast.CFrame = p33.CFrame *CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(math.random(), math.random(), math.random())
game.Debris:AddItem(Blast, 4)
BlastMesh = Instance.new("SpecialMesh",Blast)
BlastMesh.MeshType = "Brick"
BlastMesh.Scale = Vector3.new(.1,.1,.1)

Ammo=Instance.new('Part',Workspace)
Ammo.BrickColor=BrickColor.new("Medium stone grey")
Ammo.CanCollide = true
Ammo.TopSurface = "Smooth"
Ammo.BottomSurface = "Smooth"
Ammo.Transparency = 0.3
Ammo.Size = Vector3.new(.2,.2,.2)
Ammo.CFrame = p21.CFrame *CFrame.new(0, -1, 0)
game.Debris:AddItem(Ammo, 10)
AmmoMesh = Instance.new("SpecialMesh",Ammo)
AmmoMesh.MeshType = "Sphere"
AmmoMesh.Scale = Vector3.new(.1,.4,.1)

for i = 1,10 do
BlastMesh.Scale = BlastMesh.Scale + Vector3.new(.1,.1,.1)
Blast.Transparency = Blast.Transparency + 0.1
swait(0.1)
end

s2:Play()


wait(1)
shoot = false
end
end)

colours = {"Tr. Red","Black","Tr. Blue","Black","Phosph. White","Royal purple"}
mouse.KeyDown:connect(function(k)
	if k == " " then
		if hitfloor==nil then
			Cha.Torso.Velocity = Vector3.new(0,100,0)
			ringExplode(Torso.CFrame*CFrame.Angles(math.pi/2,0,0),colours[4],5)
		end
	end
end)

mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" and camo == false and prop == true then
camo = true

Camoflauge=Instance.new('Part',Cha)
Camoflauge.BrickColor=game.Workspace.Base.BrickColor
Camoflauge.CanCollide = true
Camoflauge.TopSurface = "Smooth"
Camoflauge.BottomSurface = "Smooth"
Camoflauge.Material = "Grass"
Camoflauge.Transparency = 0
Camoflauge.Size = Vector3.new(1,1,1)
CamoflaugeMesh = Instance.new("SpecialMesh",Camoflauge)
CamoflaugeMesh.MeshType = "Brick"
CamoflaugeMesh.Scale = Vector3.new(4,13,6)
CaWeld = Instance.new("Weld",Cha)
CaWeld.Part0 = Cha.Torso
CaWeld.Part1 = Camoflauge
CaWeld.C1 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(.35, 0, 0)

end
end)

mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" and camo == false and prop == false then
camo = true


ac = math.random(1,6)

if ac == 1 then
Camoflauge=Instance.new('Part',Cha)
Camoflauge.BrickColor=game.Workspace.Base.BrickColor
Camoflauge.CanCollide = true
Camoflauge.TopSurface = "Smooth"
Camoflauge.BottomSurface = "Smooth"
Camoflauge.Material = "Grass"
Camoflauge.Transparency = 0
Camoflauge.Size = Vector3.new(1,1,1)
CamoflaugeMesh = Instance.new("SpecialMesh",Camoflauge)
CamoflaugeMesh.MeshType = "Brick"
CamoflaugeMesh.Scale = Vector3.new(8,8,10)
CaWeld = Instance.new("Weld",Cha)
CaWeld.Part0 = Cha.Torso
CaWeld.Part1 = Camoflauge
CaWeld.C1 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end


if ac == 2 then
Camoflauge=Instance.new('Part',Cha)
Camoflauge.BrickColor=game.Workspace.Base.BrickColor
Camoflauge.CanCollide = true
Camoflauge.TopSurface = "Smooth"
Camoflauge.BottomSurface = "Smooth"
Camoflauge.Transparency = 0
Camoflauge.Size = Vector3.new(1,1,1)
CamoflaugeMesh = Instance.new("SpecialMesh",Camoflauge)
CamoflaugeMesh.MeshType = "FileMesh"
CamoflaugeMesh.MeshId = "http://www.roblox.com/asset/?id=19106014"
CamoflaugeMesh.TextureId = "http://www.roblox.com/asset/?id=142039906"
CamoflaugeMesh.Scale = Vector3.new(10,10,10)
CaWeld = Instance.new("Weld",Cha)
CaWeld.Part0 = Cha.Torso
CaWeld.Part1 = Camoflauge
CaWeld.C1 = CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end

if ac == 3 then
Camoflauge=Instance.new('Part',Cha)
Camoflauge.BrickColor=game.Workspace.Base.BrickColor
Camoflauge.CanCollide = true
Camoflauge.TopSurface = "Smooth"
Camoflauge.BottomSurface = "Smooth"
Camoflauge.Transparency = 0
Camoflauge.Size = Vector3.new(1,1,1)
CamoflaugeMesh = Instance.new("SpecialMesh",Camoflauge)
CamoflaugeMesh.MeshType = "FileMesh"
CamoflaugeMesh.MeshId = "http://www.roblox.com/asset/?id=92598630"
CamoflaugeMesh.TextureId = "http://www.roblox.com/asset/?id=92599263"
CamoflaugeMesh.Scale = Vector3.new(10,10,10)
CaWeld = Instance.new("Weld",Cha)
CaWeld.Part0 = Cha.Torso
CaWeld.Part1 = Camoflauge
CaWeld.C1 = CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end

if ac == 4 then
Camoflauge=Instance.new('Part',Cha)
Camoflauge.BrickColor=game.Workspace.Base.BrickColor
Camoflauge.CanCollide = true
Camoflauge.TopSurface = "Smooth"
Camoflauge.BottomSurface = "Smooth"
Camoflauge.Transparency = 0
Camoflauge.Size = Vector3.new(1,1,1)
CamoflaugeMesh = Instance.new("SpecialMesh",Camoflauge)
CamoflaugeMesh.MeshType = "FileMesh"
CamoflaugeMesh.MeshId = "http://www.roblox.com/asset/?id=10470609"
CamoflaugeMesh.TextureId = "http://www.roblox.com/asset/?id=29796694"
CamoflaugeMesh.Scale = Vector3.new(10,10,10)
CaWeld = Instance.new("Weld",Cha)
CaWeld.Part0 = Cha.Torso
CaWeld.Part1 = Camoflauge
CaWeld.C1 = CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end

if ac == 5 then
Camoflauge=Instance.new('Part',Cha)
Camoflauge.BrickColor=game.Workspace.Base.BrickColor
Camoflauge.CanCollide = true
Camoflauge.TopSurface = "Smooth"
Camoflauge.BottomSurface = "Smooth"
Camoflauge.Transparency = 0
Camoflauge.Size = Vector3.new(1,1,1)
CamoflaugeMesh = Instance.new("SpecialMesh",Camoflauge)
CamoflaugeMesh.MeshType = "FileMesh"
CamoflaugeMesh.MeshId = "http://www.roblox.com/asset?id=220616206"
CamoflaugeMesh.TextureId = "http://www.roblox.com/asset?id=220616251"
CamoflaugeMesh.Scale = Vector3.new(5,5,5)
CaWeld = Instance.new("Weld",Cha)
CaWeld.Part0 = Cha.Torso
CaWeld.Part1 = Camoflauge
CaWeld.C1 = CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end


if ac == 6 then


Camoflauge = Instance.new("Model")
p1 = Instance.new("Part", Camoflauge)
p1.BrickColor = BrickColor.new("White")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.399999708, 6.30000019, 1.4000001)
p1.CFrame = CFrame.new(-21.8000011, 1.85000002, -9.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Anchored = false
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
p2 = Instance.new("Part", Camoflauge)
p2.BrickColor = BrickColor.new("Institutional white")
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(5.79999971, 0.399999946, 1.4000001)
p2.CFrame = CFrame.new(-24.5, 5.0999999, -9.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.Anchored = false
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
p3 = Instance.new("Part", Camoflauge)
p3.BrickColor = BrickColor.new("Brown")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(5.5999999, 0.299999952, 5.5999999)
p3.CFrame = CFrame.new(-24.5, 5.04999971, -9.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.Anchored = false
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
p4 = Instance.new("Part", Camoflauge)
p4.BrickColor = BrickColor.new("Brown")
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1.20000005, 1.30000007, 0.299999714)
p4.CFrame = CFrame.new(-26.7000027, 2.54999995, -12.1499996, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p4.Anchored = false
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
p5 = Instance.new("Part", Camoflauge)
p5.BrickColor = BrickColor.new("Brown")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1.20000005, 1.30000007, 0.299999714)
p5.CFrame = CFrame.new(-22.3000011, 2.54999995, -12.1499996, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p5.Anchored = false
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
p6 = Instance.new("Part", Camoflauge)
p6.BrickColor = BrickColor.new("White")
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.399999708, 6.30000019, 1.4000001)
p6.CFrame = CFrame.new(-27.2000027, 1.85000002, -9.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p6.Anchored = false
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
p7 = Instance.new("Part", Camoflauge)
p7.BrickColor = BrickColor.new("Medium stone grey")
p7.Transparency = 1
p7.Name = "Handle"
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(5, 5, 5)
p7.CFrame = CFrame.new(-24.5, 2.5, -9.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.Anchored = false
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
p8 = Instance.new("Part", Camoflauge)
p8.BrickColor = BrickColor.new("Brown")
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(5.5999999, 1.79999995, 0.299999714)
p8.CFrame = CFrame.new(-24.5, 4.0999999, -12.1499996, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.Anchored = false
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
p9 = Instance.new("Part", Camoflauge)
p9.BrickColor = BrickColor.new("Brown")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.299999714, 6.30000019, 5)
p9.CFrame = CFrame.new(-21.8500004, 1.85000002, -9.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.Anchored = false
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
p10 = Instance.new("Part", Camoflauge)
p10.BrickColor = BrickColor.new("Brown")
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(5.5999999, 3.20000005, 0.299999714)
p10.CFrame = CFrame.new(-24.5, 0.300000072, -12.1499996, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p10.Anchored = false
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
p11 = Instance.new("Part", Camoflauge)
p11.BrickColor = BrickColor.new("Brown")
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(5.5999999, 6.30000019, 0.299999714)
p11.CFrame = CFrame.new(-24.5, 1.85000002, -6.8499999, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p11.Anchored = false
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
p12 = Instance.new("Part", Camoflauge)
p12.BrickColor = BrickColor.new("Brown")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.299999714, 6.30000019, 5)
p12.CFrame = CFrame.new(-27.1500015, 1.85000002, -9.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p12.Anchored = false
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
w1 = Instance.new("Weld", p7)
w1.Name = "BTWeld"
w1.Part0 = p7
w1.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p1
w1.C1 = CFrame.new(-2.69999886, 0.649999976, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p7)
w2.Name = "BTWeld"
w2.Part0 = p7
w2.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p2
w2.C1 = CFrame.new(0, -2.5999999, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p7)
w3.Name = "BTWeld"
w3.Part0 = p7
w3.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p3
w3.C1 = CFrame.new(0, -2.54999971, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p7)
w4.Name = "BTWeld"
w4.Part0 = p7
w4.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p4
w4.C1 = CFrame.new(2.20000267, -0.0499999523, 2.64999962, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p7)
w5.Name = "BTWeld"
w5.Part0 = p7
w5.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p5
w5.C1 = CFrame.new(-2.19999886, -0.0499999523, 2.64999962, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p7)
w6.Name = "BTWeld"
w6.Part0 = p7
w6.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p6
w6.C1 = CFrame.new(2.70000267, 0.649999976, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "BTWeld"
w7.Part0 = p7
w7.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(0, -1.5999999, 2.64999962, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p7)
w8.Name = "BTWeld"
w8.Part0 = p7
w8.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(-2.64999962, 0.649999976, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p7)
w9.Name = "BTWeld"
w9.Part0 = p7
w9.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(0, 2.19999981, 2.64999962, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p7)
w10.Name = "BTWeld"
w10.Part0 = p7
w10.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(0, 0.649999976, -2.6500001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p7)
w11.Name = "BTWeld"
w11.Part0 = p7
w11.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(2.65000153, 0.649999976, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

rlwwww = Instance.new("Weld", Cha)
rlwwww.Part0 = Cha.Torso
rlwwww.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
rlwwww.Part1 = p7

Camoflauge.Parent = Cha
Camoflauge:MakeJoints()

for i, v in pairs(Camoflauge:GetChildren()) do
if v:IsA('Part') then
v.CanCollide = False
end
end


end



end
end)

mouse.KeyDown:connect(function(key)
key:lower()
if key == "q" and camo == true then
camo = false

Camoflauge:Destroy()

end
end)


mouse.KeyDown:connect(function(key)
key:lower()
if key == "c" then

for i,v in pairs(game.Players:getPlayers()) do
if v.Name~=Cha.Name then
for j,k in pairs(v.Character:GetChildren()) do
if k:IsA("BasePart") and k.Transparency <= 1 then
D = Instance.new("FloorWire",Cha.Torso)
D.From = Cha.Torso
D.To = k
D.Parent = Workspace.Camera
D.Transparency = 0.4
end
end
end
end

end
end)


mouse.KeyDown:connect(function(key)
key:lower()
if key:byte() == 48 and laydown == false then
Humanoid.WalkSpeed=50
end
end)
mouse.KeyUp:connect(function(key)
key:lower()
if key:byte() == 48 and laydown == false then
Humanoid.WalkSpeed=16
end
end)

mouse.KeyDown:connect(function(key)
key:lower()
if key:byte() == 48 and laydown == true then
Humanoid.WalkSpeed=20
end
end)
mouse.KeyUp:connect(function(key)
key:lower()
if key:byte() == 48 and laydown == true then
Humanoid.WalkSpeed=10
end
end)


local sine = 0
local change = 1
local val = 0


coroutine.resume(coroutine.create(function()
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
if RootPart.Velocity.y > 1 and hitfloor==nil and laydown == false then 
Anim="Jump"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(20),math.rad(-10),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(20),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil and laydown == false then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-50),math.rad(-100),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-50),math.rad(100),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil and laydown == false then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(-20),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(-30)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil and laydown == false then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(-10),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(10),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil and laydown == false then
Anim="Run"
if attack==false then
change=5
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(-70),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(70),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
end
end
end
end))

coroutine.resume(coroutine.create(function()
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
if RootPart.Velocity.y > 1 and hitfloor==nil and laydown == true then 
Anim="Jump"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2.5)*angles(math.rad(70),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-70),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(-30)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil and laydown == true then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2.5)*angles(math.rad(70),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-70),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(-30)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil and laydown == true then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2.5)*angles(math.rad(70),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-70),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(-30)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil and laydown == true then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2.5)*angles(math.rad(70),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-70),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(-30)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil and laydown == true then
Anim="Run"
if attack==false then
change=5
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2.5)*angles(math.rad(70),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-70),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(-30)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,0)*euler(math.rad(160),math.rad(0),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
end
end
end
end
end))


