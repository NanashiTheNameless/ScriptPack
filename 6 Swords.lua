--[[Modified by Citrus for Majora]]--

-- New Q move (When charge reaches 100)
-- New idle stance, swords don't float so stiffly

--[[Config]]

trails = false --Added an option to turn the trail effects on/off since they may lag.

--//////////

local hitsounds = {"199149137","199149186","199149221","199149235","199149269","199149297"}

--//////////

--[[THEKORBLOXCORE_WEAPONRY]]--
Player = game.Players.LocalPlayer
Cha = Player.Character
---------------------------------------Taunts n Stuff
local Taunts = {"Oh really?" , "I pity you" , "Sigh.." , "Prepare to be Reaped" , "I am only one Reaper", "This is a Fantasy" , "Lovely, My Swords Appear!" , "You should be able to kill me"}
local Attacks = {"Insolence!" , "Weak!" , "Take this!" , "Fool!" , "Come, Open your Heart" , ">Game Quote Here<" , "Fallen Angel!" , "Descend, Heartless Angel" }
local Summon = {"Submit!!" , "Summon!" , "Come Guardian!!" , ">Summon Quote Here<"}
---------------------------------------Chat Gui n stuff
function Chat(Object,Text,Color)
local Color = BrickColor.new(Color)
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Frame = Instance.new("Frame")
Frame.Parent = G
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 2
Game:GetService("Debris"):AddItem(G,3)
end
Chat(Cha.Head,Taunts[math.random(1,#Taunts)],"Really black")
----------------
function rand(a)return (math.random()-.5)*2*a end
function q(f,arg)return coroutine.resume(coroutine.create(f),unpack(arg or {}))end
function fade(p,s,inc)q(function(part,start,increment)increment = increment or .05 for i=start,1,increment do part.Transparency = part.Transparency+increment wait(1/30)end end,{p,s,inc})end
function appear(p,s,inc)q(function(part,start,increment)increment = increment or .05 for i=start,0,-increment do part.Transparency = part.Transparency-increment wait(1/30)end end,{p,s,inc})end
function Part2(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("Part",Parent)
        p.Name = Name
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
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
cam=game.Workspace.CurrentCamera
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
sounds = {["explode"] = 130792180;}
torsomesh = "rbxasset://fonts/torso.mesh"
colours = {"Tr. Red","Black","Tr. Blue","Black","Phosph. White","Royal purple"}
local ASpeed = 10
Humanoid.MaxHealth = 500
wait()
Humanoid.Health=500

mouse=Player:GetMouse()
--save shoulders 
--RSH, LSH=nil, nil 
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
--wLSH.Parent=nil 
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
				so("http://www.roblox.com/asset/?id="..hitsounds[math.random(1,#hitsounds)],game.Players.LocalPlayer.Character.Torso,1,1)
                h.Health=h.Health-Damage
                --showDamage(hit.Parent,Damage,.5,BrickColor.new("Navy blue"))
				ShowDamage2((hit.Parent:FindFirstChild("Head").CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage2((hit.Parent:FindFirstChild("Head").CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
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
				local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
				local rndm=math.random(1,#hitsounds)
				local r=rndm
				so("http://www.roblox.com/asset/?id="..hitsounds[r],Part,1,1)
                swait(5)
				so("http://www.roblox.com/asset/?id="..hitsounds[r],Part,1,1)
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


function ShowDamage2(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part2("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

Damagefunc2=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
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
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
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
                ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
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
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
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
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end

part2 = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end


local fengui=Instance.new("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
local fenframe=Instance.new("Frame") 
fenframe.Parent=fengui
fenframe.BackgroundColor3=Color3.new(255,255,255) 
fenframe.BackgroundTransparency=1 
fenframe.BorderColor3=Color3.new(17,17,17) 
fenframe.Size=UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position=UDim2.new(0.4,0,0.1,0)
local fenbarmana1=Instance.new("TextLabel") 
fenbarmana1.Parent=fenframe 
fenbarmana1.Text=" " 
fenbarmana1.BackgroundTransparency=0 
fenbarmana1.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana1.SizeConstraint="RelativeXY" 
fenbarmana1.TextXAlignment="Center" 
fenbarmana1.TextYAlignment="Center" 
fenbarmana1.Position=UDim2.new(0,0,0,0)
fenbarmana1.Size=UDim2.new(4,0,0.2,0)
local fenbarmana2=Instance.new("TextLabel") 
fenbarmana2.Parent=fenframe 
fenbarmana2.Text=" " 
fenbarmana2.BackgroundTransparency=0 
fenbarmana2.BackgroundColor3=Color3.new(100,100,100)
fenbarmana2.SizeConstraint="RelativeXY" 
fenbarmana2.TextXAlignment="Center" 
fenbarmana2.TextYAlignment="Center" 
fenbarmana2.Position=UDim2.new(0,0,0,0)
fenbarmana2.Size=UDim2.new(4*mana/100,0,0.2,0)
local fenbarmana3=it("TextLabel") 
fenbarmana3.Parent=fenframe 
fenbarmana3.Text=" " 
fenbarmana3.BackgroundTransparency=0 
fenbarmana3.BackgroundColor3=Color3.new(Col1,Col2,Col3)
fenbarmana3.SizeConstraint="RelativeXY" 
fenbarmana3.TextXAlignment="Center" 
fenbarmana3.TextYAlignment="Center" 
fenbarmana3.Position=UDim2.new(0,0,0,0)
fenbarmana3.Size=UDim2.new(0,0,0.2,0)
local fenbarmana4=Instance.new("TextLabel") 
fenbarmana4.Parent=fenframe 
fenbarmana4.Text="Loading interface"
fenbarmana4.BackgroundTransparency=1 
fenbarmana4.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana4.SizeConstraint="RelativeXY" 
fenbarmana4.TextXAlignment="Center" 
fenbarmana4.TextYAlignment="Center" 
fenbarmana4.Position=UDim2.new(0,0,-0.3,0)
fenbarmana4.Size=UDim2.new(4,0,0.2,0)
fenbarmana4.FontSize="Size9"
fenbarmana4.TextStrokeTransparency=0
fenbarmana4.TextColor=BrickColor.new("White")

HandleA=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.228433609, 1.0002656, -0.0575428009, -4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleA,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxA",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxAweld=weld(m,HandleA,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxA,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))



HandleB=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.228439331, 0.93026638, 0.0124473572, -4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768501, -0.0389175415, 0.099748373, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleB,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440120697, 0.0439853668, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389146805, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399448872, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102003098, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538825989, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -2.00271606e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80105019, -0.0301570892, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80101013, -0.0339565277, 0.910427809, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999081135, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxB",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxBweld=weld(m,HandleB,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550560951, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxB,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

HandleC=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleCweld=weld(m,Character.Head,HandleC,CFrame.new(-5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1, 0, 4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleC,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleC,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleC,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleC,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleC,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxC=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxC",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxCweld=weld(m,HandleC,HitboxC,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxC,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

HandleD=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleDweld=weld(m,Character.Head,HandleD,CFrame.new(5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1, 0, 4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleD,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleD,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleD,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleD,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleD,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxD=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxD",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxDweld=weld(m,HandleD,HitboxD,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxD,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

HandleE=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleEweld=weld(m,Character.Head,HandleE,CFrame.new(-5, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1, 0, 4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleE,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleE,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleE,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleE,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleE,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxE=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxE",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxEweld=weld(m,HandleE,HitboxE,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxE,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

HandleF=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleFweld=weld(m,Character.Head,HandleF,CFrame.new(5, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1, 0, 4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleF,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleF,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleF,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleF,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleF,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxF=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxF",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxFweld=weld(m,HandleF,HitboxF,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxF,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

 local MetalAOEStorm = function()
			so("http://roblox.com/asset/?id=183763506",Cha.Torso,4,0.5)
			so("http://roblox.com/asset/?id=338601253",Cha.Torso,4,0.5)
			so("http://roblox.com/asset/?id=199145761", Cha.Torso, 1, math.random(75, 125) / 100)
			

			
                local Wave = Instance.new("Part", game.Workspace)
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    --print(hit.Name)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        if hit.Parent.Name ~= Cha.Name then
                           --print("Damaged " .. hit.Parent.Name)
							con69=Wave.Touched:connect(function(hit) Damagefunc(hit,25,45,math.random(2,6),"Normal",RootPart,.2,1) end) 
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                delay(0, function()


                        for i = 1, 68, 1 do
                            Wave.Size = Vector3.new(1 + i*2, 1 + i*0.5, 1 + i*2)
                            Wave.CFrame = Cha.Torso.CFrame
                            local t = i / 68
                            Wave.Transparency = t
                            wait()
                        end

                    Wave:Destroy()
					con69:disconnect()
                end)
                delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = Cha.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end

function attackone()
        attack=true
        con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(40),math.rad(50),math.rad(10)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(40),math.rad(-50),math.rad(10)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(-5,3,0)*angles(math.rad(40),math.rad(50),math.rad(10)),.3)
HandleEweld.C0=clerp(HandleBweld.C0,cf(5,3,0)*angles(math.rad(40),math.rad(-50),math.rad(10)),.3)

        end
        so("http://www.roblox.com/asset/?id=233856140",HitboxA,1,1) 
        so("http://www.roblox.com/asset/?id=234365549",HitboxA,1,1) 
        for i=0,1,0.1 do
                swait()
                local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if trails == true then
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
        con1=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(40),math.rad(50),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(40),math.rad(-50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(-5,3,0)*angles(math.rad(40),math.rad(50),math.rad(10)),.3)
HandleEweld.C0=clerp(HandleBweld.C0,cf(5,3,0)*angles(math.rad(40),math.rad(-50),math.rad(10)),.3)
        end
        so("http://www.roblox.com/asset/?id=233856146",HitboxB,1,1) 
        so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
        for i=0,1,0.1 do
                swait()
                        local blcf = HitboxB.CFrame*CFrame.new(0,.5,0)
if trails == true then
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

function attackthree()
        attack=true
        con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con3=HitboxC.Touched:connect(function(hit) Damagefunc(hit,10,150,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con4=HitboxD.Touched:connect(function(hit) Damagefunc(hit,10,150,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(40),math.rad(50),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(40),math.rad(-50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(-5,5,0)*angles(math.rad(40),math.rad(50),math.rad(10)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(5,5,0)*angles(math.rad(40),math.rad(-50),math.rad(10)),.3)
        end
        so("http://www.roblox.com/asset/?id=233856146",HitboxB,1,1) 
        so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
        for i=0,1,0.1 do
                swait()
                        local blcf = HitboxB.CFrame*CFrame.new(0,.5,0)
if trails == true then
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
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(-10),math.rad(80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(10)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(10)),.3)
        end
        attack=false
        con1:disconnect()
        con2:disconnect()
        con3:disconnect()
        con4:disconnect()
end

function DemonSwords()
        attack=true
        con1=HitboxC.Touched:connect(function(hit) Damagefunc(hit,100,999999,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con2=HitboxD.Touched:connect(function(hit) Damagefunc(hit,100,999999,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con3=HitboxE.Touched:connect(function(hit) Damagefunc(hit,100,999999,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con4=HitboxF.Touched:connect(function(hit) Damagefunc(hit,100,999999,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(40),math.rad(50),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(40),math.rad(-50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(-5,3,0)*angles(math.rad(-40),math.rad(50),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(5,3,0)*angles(math.rad(-40),math.rad(-50),math.rad(0)),.3)
        end
        so("http://www.roblox.com/asset/?id=233856146",HitboxB,1,1) 
        so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
        for i=0,1,0.1 do
                swait()
                        local blcf = HitboxC.CFrame*CFrame.new(0,.5,0)
if trails == true then
	if scfr and (HitboxC.Position-scfr.p).magnitude > .1 then
	local h = 5
	local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	scfr = blcf
	elseif not scfr then
	scfr = blcf
	end
	local blcf2 = HitboxD.CFrame*CFrame.new(0,.5,0)
	if scfr2 and (HitboxD.Position-scfr2.p).magnitude > .1 then
	local h = 5
	local a,b = Triangle((scfr2*CFrame.new(0,h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p,(blcf2*CFrame.new(0,h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	local a,b = Triangle((blcf2*CFrame.new(0,h/2,0)).p,(blcf2*CFrame.new(0,-h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	scfr2 = blcf2
	elseif not scfr2 then
	scfr2 = blcf2
	end
end
HandleDweld.C0=clerp(HandleDweld.C0,cf(0,0,-4)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(0,0,-4)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(0,3,-4)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(0,3,-4)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
ringExplode(HandleD.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
ringExplode(HandleC.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
ringExplode(HandleF.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
ringExplode(HandleE.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
        end
        attack=false
        con1:disconnect()
        con2:disconnect()
        con3:disconnect()
        con4:disconnect()
end

function summonMura()
        Attacking = true
        Humanoid.WalkSpeed = 0
        local cf = Torso.CFrame
        local model = Instance.new("Model",Character)
        for i=1,6 do
                local angle = math.pi*2/6*i
                local p = Part2("",model,Vector3.new(10,1,10),cf*CFrame.new(0,-3,0)*CFrame.Angles(0,angle,0),colours[6],0,true,false,"SmoothPlastic")
        end
        local circle = Part2("",model,Vector3.new(14.5,.5,14.5),cf*CFrame.new(0,-3,0),colours[2],0,true,false,"SmoothPlastic")
        Instance.new("CylinderMesh",circle)
        for i=1,40 do
                wait(1/30)
                local speed = i/40
                local r = math.random(1,2)
                if i%2==0 then sphereExtend(cf*CFrame.new(rand(5),-2,rand(5)),r==1 and colours[6] or colours[2],5)end
        end
        local t = Part2("",model,Vector3.new(10,10,5),cf*CFrame.new(0,10,0),colours[6],1,true,false,"SmoothPlastic")
        local a1 = Part2("",model,Vector3.new(5,10,5),cf*CFrame.new(-7.5,10,0),colours[6],1,true,false,"SmoothPlastic")
        local a2 = Part2("",model,Vector3.new(5,10,5),cf*CFrame.new(7.5,10,0),colours[6],1,true,false,"SmoothPlastic")
        local h = Part2("",model,Vector3.new(5,5,5),cf*CFrame.new(0,17.5,0),colours[6],1,true,false,"SmoothPlastic")
        local ot,oa1,oa2,oh = t.CFrame,a1.CFrame,a2.CFrame,h.CFrame
        appear(a1,1,.025)appear(a2,1,.025)appear(t,1,.025)appear(h,1,.025)
        for i=1,40 do
                wait(1/30)
                local speed = i/40
                local r = math.random(1,2)
                if i%2==0 then sphereExtend(cf*CFrame.new(rand(5),-2,rand(5)),r==1 and colours[6] or colours[2],5);spikeMagic(cf*CFrame.new(rand(5),-2,rand(5)),math.random(2,5),r==1 and colours[6] or colours[2])end
                a1.CFrame = cslerp(a1.CFrame,oa1*CFrame.new(0,5,-2.5)*CFrame.Angles(math.pi/1.5,0,0),speed)
                a2.CFrame = cslerp(a2.CFrame,oa2*CFrame.new(0,5,-2.5)*CFrame.Angles(math.pi/1.5,0,0),speed)
                h.CFrame = cslerp(h.CFrame,oh*CFrame.Angles(math.pi/6,0,0),speed)
        end
        fade(a1,0,.075)fade(a2,0,.075)fade(t,0,.075)fade(h,0,.075)
        ringExplode(t.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
        crater(cf*CFrame.new(0,-3,0),20)
        cylinderExplode(cf,colours[6],10,1000)
        checkDmgArea(cf,50,20)
        wait(2)
        for i=1,10 do
                wait(1/30)
                local speed = i/10
        end
        model:Destroy()
        Humanoid.WalkSpeed = 16
        Attacking = false
end

function MetalStorm()
	mana=mana-100
attack=true
Humanoid.JumpPower=0
coroutine.resume(coroutine.create(function()
      
            MetalAOEStorm()
end))

con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con3=HitboxC.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con4=HitboxD.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
for i=0,3,1 do
so("http://roblox.com/asset/?id=231917987",Torso,1,1)
swait()
for i=0,54,1.5 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if trails == true then
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
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-0.01*i,-1*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-0.01*i,-1*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleBweld.C0,cf(1.5*i,0,-2*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleBweld.C0,cf(1*i,0,2*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleBweld.C0,cf(0.6*i,0,0.4*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleBweld.C0,cf(0.3*i,0,-0.4*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1)*euler(0,0,12*i),.3)
end
end
con1:disconnect()
con2:disconnect()
con3:disconnect()
con4:disconnect()
attack=false
Humanoid.JumpPower=50
end

function Smoke(origin,color)
        local p = Part2("Effect",workspace,Vector3.new(2,2,2),origin*CFrame.new(rand(5),-1,rand(5)),color or "Black",.1,false,false,"SmoothPlastic")
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
        local p = Part2("Effect",workspace,Vector3.new(size,size,size),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,.2,true,false,"SmoothPlastic")
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
        local p = Part2("Effect",workspace,Vector3.new(1,1,1),origin*CFrame.new(0,-size,0),color,1,true,false,"SmoothPlastic")
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
        local p = Part2("Effect",workspace,Vector3.new(size,size,size),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,true,material)
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                wait(5)
                fade(pa,0)
                Delay(1.25,function()pa:Destroy()end)
        end,{p,m})
end
function placePartRandSize(origin,min,max,color,material)
        local p = Part2("Effect",workspace,Vector3.new(math.random(min,max),math.random(min,max),math.random(min,max)),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,true,material)
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
        local p = Part2("Effect",workspace,Vector3.new(size,ysize or size,size),origin,color,.2,true,false,"SmoothPlastic")
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
        local p = Part2("Effect",workspace,Vector3.new(1,1,1),origin,color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size,size,1),asset..meshes["ring"])
        q(function(pa,me)
                for i=.2,1,.05 do
                        me.Scale = me.Scale+Vector3.new(0.25,0.25,0)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function crownExplode(origin,color,size)
        local p = Part2("Effect",workspace,Vector3.new(size,size,size),origin,color,.2,true,false,"SmoothPlastic")
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
        local p = Part2("Effect",workspace,Vector3.new(0.75,0.75,0.75),origin*CFrame.new(rand(5),rand(5),rand(5))*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,false,"SmoothPlastic")
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
        local p = Part2("Effect",workspace,Vector3.new(size,size,size),origin,color,0,true,false,"SmoothPlastic")
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
function findClosestPlayer(origin,d)
        local bdist,plr = d,nil
        for i,v in pairs(workspace:children())do
                if v~=char and v:FindFirstChild("Torso") then
                        local h;
                        for _,k in pairs(v:children())do if k:IsA("Humanoid") then h = k end end
                        local dist = (origin.p - v:FindFirstChild("Torso").CFrame.p).magnitude
                        if dist < bdist and h~=nil and h.Health~=0 then
                                bdist,plr = dist,v
                        end
                end
        end
        return bdist,plr
end
function Attack1(victim)
        Attacking = true
        local victim = game.Players:GetPlayers()[math.random(1,#game.Players:children())]:FindFirstChild("Torso")
        local h;
        for _,k in pairs(victim:children())do if k:IsA("Humanoid") then h = k end end
        if h==nil then return end
        local bg = Instance.new("BodyGyro",torso)
        bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
        bg.P = 1000000
        local bp = Instance.new("BodyPosition")
        bp.maxForce = Vector3.new(1/0,1/0,1/0)*math.huge
        local bp2 = bp:Clone()
        local cf1,cf2 = CFrame.new(torso.CFrame.x,torso.CFrame.y,torso.CFrame.z),CFrame.new(t.CFrame.x,torso.CFrame.y,t.CFrame.z)
        bg.cframe = CFrame.new(cf1.p,cf2.p)
        bp2.Parent = t
        bp2.position = cf2.p
        bp.Parent = torso
        bp.position = cf1.p
        local spiral = math.random(-360,360)
        for i=1,20 do
                wait(1/30)
                bp2.position = bp2.position+Vector3.new(0,2,0)
                bp.position = bp.position+Vector3.new(0,2,0)
                cylinderExplode(torso.CFrame*CFrame.new(0,-3,0),colours[2],1,0)
                cylinderExplode(t.CFrame*CFrame.new(0,-3,0),colours[2],1,0)
        end
        bp.position = (t.CFrame*CFrame.Angles(0,math.rad(spiral),0)*CFrame.new(0,0,50)).p
        for i=1,5 do
                wait(1/30)
                local speed = i/5
                rs.C0 = cslerp(rs.C0,c0rs*CFrame.Angles(math.pi/4,0,math.pi/12),speed)
                ls.C0 = cslerp(ls.C0,c0ls*CFrame.Angles(math.pi/4,0,-math.pi/12),speed)        
        end
        for i=10,1,-1 do
                for _,v in pairs(t.Parent:children())do if v:IsA("Part") then v.CanCollide = false elseif v:IsA("Hat") then v.Handle.CanCollide = false end end
                local dmg = h.Health/i
                bp.position = (t.CFrame*CFrame.Angles(0,math.rad(spiral),0)*CFrame.new(0,0,(i%2==0 and 50)or -50)).p
                bg.cframe = CFrame.new(torso.CFrame.p,t.CFrame.p)
                wait(.1)
                Smoke(t.CFrame,"Black")
                local a = math.rad(math.random(-360,360))
                ringExplode(t.CFrame*CFrame.Angles(a,a,a),i%2==0 and colours[2]or colours[1],20)
                h.Health = h.Health - dmg
                if i%2==0 then
                        spiral = math.random(-360,360)
                end
                wait(.3)
        end
        bg:Destroy()
        bp:Destroy()
        bp2:Destroy()
        Attacking = false
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
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-30),math.rad(-90),math.rad(0)),.3)
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


function throw()
		attack=true
		con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
		for i=0,1,0.05 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-170),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
		end
		so("http://roblox.com/asset/?id=231917871",HitboxA,1,0.8)
					hitconasdf = HitboxA.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			--so('http://roblox.com/asset/?id=220025675',HitboxA,1,3)
			hitconasdf:disconnect()
		end
		end)
		for i=0,0.5,2 do
		so("http://roblox.com/asset/?id=231917987",HitboxA,1,1)
		swait()
		for i=0,1,0.025 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(30)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0-50*i,0)*angles(math.rad(-45-1800*i),math.rad(0),math.rad(0)),.3)
		end
		end
		for i=0,0.5,2 do
		so("http://roblox.com/asset/?id=231917987",HitboxA,1,1)
		swait()
		for i=0,1,0.025 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(30)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-50+50*i,0)*angles(math.rad(-45-1800*i),math.rad(0),math.rad(0)),.3)
		end
		end
		for i=0,1,0.1 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-170),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
		end
		attack=false
	con1:disconnect()
	hitconasdf:disconnect()
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
function JumpSpin()
attack = true
for i = 1, 55 do
            RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 10, 0)
            ringExplode(Torso.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
end
wait(1.6)
spin()
attack = false
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
colours = {"Tr. Red","Black","Tr. Blue","Black","Phosph. White","Royal purple"}
mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=='q' and mana >= 100 then
                if attack==false then
                        MetalStorm()
                end
				elseif k=="t" then
				if attack==false then
						throw()
				end
                elseif k=='e' then
                if attack==false then
                        kick()
                end
                elseif k=='p' then
                if attack==false then
                DemonSwords()
                end
                elseif k=='h' then
                if Attacking==false then
                summonMura()
                end
                elseif k=='r' then
                if attack==false then
                        DualStab()
                end
                elseif k:byte() == 50 then
                for i = 1, 5 do
                    RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -5)
                    ringExplode(Torso.CFrame*CFrame.Angles(0,0,0),colours[6],5)
                    wait()
                end
                elseif k:byte() == 49 then
                if attack == false then
                       JumpSpin()
                end
                elseif k=='f' then
                if attack==false then
                        DualSlash()
        end
        end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key:byte() == 48 then
Humanoid.WalkSpeed=70
end
end)
mouse.KeyUp:connect(function(key)
key:lower()
if key:byte() == 48 then
Humanoid.WalkSpeed=16
end
end)
wait(2)
Chat(Cha.Head,Taunts[math.random(1,#Taunts)],"Really black")

local sine = 0
local change = 1
local val = 0

local mananum=0
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
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(20),math.rad(-10),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(20),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,4,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,4,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-50),math.rad(-100),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-50),math.rad(100),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(20),math.rad(-50),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(20),math.rad(50),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,4,0)*angles(math.rad(20),math.rad(-50),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,4,0)*angles(math.rad(20),math.rad(50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,4,0)*angles(math.rad(20),math.rad(-50),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,4,0)*angles(math.rad(20),math.rad(50),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.20+0.1*math.cos(sine/25),0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.55+0.1*math.cos(sine/25),0)*euler(math.rad(10),math.rad(-0.5),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.55+0.1*math.cos(sine/25),0)*euler(math.rad(10),math.rad(20),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-60),math.rad(-10-4*math.cos(sine/25))),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(-600),math.rad(-10-4*math.cos(sine/25))),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,-0.55+0.1*math.cos(sine/-25))*angles(math.rad(math.sin(sine/20)),math.rad(-20+2*math.cos(sine/50)),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,-0.55+0.1*math.cos(sine/-25))*angles(math.rad(-math.sin(sine/20)),math.rad(10+2*math.cos(sine/-50)),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,4,0.55+0.1*math.cos(sine/-25))*angles(math.rad(-math.sin(sine/20)),math.rad(50),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,4,0.55+0.1*math.cos(sine/-25))*angles(math.rad(math.sin(sine/20)),math.rad(-50),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(-10),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(10),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(math.sin(100*sine/-50)),math.rad(-50),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(math.sin(100*sine/50)),math.rad(50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,4,0)*angles(math.rad(math.sin(sine/-20)),math.rad(math.sin(100*sine/50)),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,4,0)*angles(math.rad(math.sin(sine/-20)),math.rad(math.sin(100*sine/-50)),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
change=5
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(-100),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(100),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(-50),math.rad(-50),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(-50),math.rad(50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,3,0)*angles(math.rad(-50),math.rad(-50),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,3,0)*angles(math.rad(-50),math.rad(50),math.rad(0)),.3)
end
end
end
fenbarmana2:TweenSize(UDim2.new(4*mana/100,0,0.2,0),nil,1,0.4,true)
fenbarmana4.Text="[Ultimate]                    <{[  "..mana.."  ]}>                    [Ultimate]"
if mana>=100 then
mana=100
else
if mananum<=8 then
mananum=mananum+1
else
mananum=0
mana=math.ceil(mana+0.5)
end
end
end