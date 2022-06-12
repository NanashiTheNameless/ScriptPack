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

Handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.200000003, 1.84623039, 0.263747245))
handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994874, 0, 0, 0, 1),CFrame.new(-0.255767822, 0.0498504639, -0.905487061, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.879157126, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.367215037, 1.5109787, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0505065918, 0.142456055, 5.64129639, 0.956874907, 0.283777207, -0.0621400438, 0.257930368, -0.928340197, -0.26769039, -0.133651271, 0.240118355, -0.961500168))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.411469162, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.554697335, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.720428467, -3.96948242, 3.20599365, 0.965824842, 0.259196192, -0.000137999858, 0.183398217, -0.68300885, 0.707011878, 0.183160231, -0.682874858, -0.70720309))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.554697335, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-1.29898071, 0.586090088, 4.2387085, 0.965865254, 0.224384263, 0.129446149, 0.25025031, -0.937328815, -0.242469177, 0.066927202, 0.266586423, -0.961485565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 0.554697514))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.221878871, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.2980957, 4.18348694, 0.919326782, -0.96591115, -0.224323243, -0.129209131, 0.0667070523, 0.266586244, -0.961500883, 0.250131905, -0.937343478, -0.242534682))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 0.554697514))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.221878871, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.721740723, 3.20664978, -3.58026123, -0.965899229, -0.258919299, -6.70003355e-005, 0.18307139, -0.682766557, -0.707330644, 0.18309544, -0.683222234, 0.706884205))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.367215037, 0.604391217, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.0513000488, 5.64120483, 1.20103455, -0.956908643, -0.28362146, 0.0623310953, -0.133825615, 0.240217403, -0.961451113, 0.257714629, -0.92836225, -0.267821878))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.411469162, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.554697335, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.732208252, -3.94528198, 3.26742554, 0.965877354, 0.259000301, 0.000342000654, -0.182900518, 0.683016956, -0.707133055, -0.183380961, 0.682941198, 0.707081854))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.367215037, 0.604391217, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.628601074, 5.57974243, 1.22305298, -0.970438302, -0.23308827, -0.0626080707, 0.00404943526, -0.275096238, 0.961409211, -0.241316006, 0.932734549, 0.267907768))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.411469162, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.221878871, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.732055664, 3.26812744, -3.556427, -0.96587497, -0.259009212, -0.000323000539, -0.183340952, 0.682818592, 0.7072106, -0.182953179, 0.683136165, -0.707004309))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.221878871, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-1.29122925, 4.14746094, 0.93687439, -0.965848088, -0.224310249, -0.129702136, -0.0671471953, -0.266788334, 0.961414218, -0.250257552, 0.937289059, 0.242615208))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 0.554697514))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.367215037, 1.5109787, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.628692627, 0.163955688, 5.57995605, 0.970437467, 0.233078331, 0.0626560897, -0.241320685, 0.932803631, 0.267663211, 0.00394065492, -0.274870574, 0.96147418))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.411469162, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.554697335, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.29156494, 0.603393555, 4.20291138, 0.965865433, 0.224185288, 0.129789144, -0.250148833, 0.937358439, 0.242459133, -0.0673030764, -0.266649485, 0.961441636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 0.554697514))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.367215037, 0.604391217, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.0520935059, 5.61376953, 1.18670654, -0.956943154, 0.28348428, -0.0624250695, -0.133975714, -0.240561411, 0.961344242, 0.257508397, 0.928314984, 0.268183559))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.411469162, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.367215037, 1.5109787, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0497436523, 0.126312256, 5.61431885, 0.956991673, -0.283411175, 0.062011037, 0.257601261, 0.928420603, 0.267728239, -0.133449256, -0.240239561, 0.961497903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.411469162, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.554697335, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.718078613, -3.95381165, 3.17893982, 0.965964437, -0.258675337, 0.000261000532, 0.18312189, 0.683115065, -0.706981003, 0.182699949, 0.682966292, 0.707233965))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.554697335, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-1.29431152, 0.570480347, 4.21160889, 0.965897679, -0.224115133, -0.129670069, 0.250048459, 0.937386274, 0.242455319, 0.0672129169, -0.266610771, 0.961458743))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 0.554697514))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.221878871, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.719055176, 3.17931366, -3.56497192, -0.96593672, 0.258779138, -8.60001601e-005, 0.182864159, 0.682807565, 0.707344651, 0.183104426, 0.683234334, -0.706870198))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.221878871, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.29318237, 4.15603638, 0.905151367, -0.965962827, 0.223993152, 0.129395068, 0.0668886751, -0.266918182, 0.961396039, 0.249883622, 0.937327921, 0.242850438))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 0.554697514))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.221878871, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.734100342, 3.29673004, -3.57067871, -0.965928316, 0.258810312, 0.000226000149, -0.183072925, -0.682645738, -0.707446694, -0.182939902, -0.68338418, 0.706768095))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.554697335, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.29708862, 0.619125366, 4.22976685, 0.965979278, -0.223797277, -0.129612148, -0.249724433, -0.937472343, -0.242456377, -0.0672466159, 0.266575038, -0.961466372))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 0.554697514))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.367215037, 1.5109787, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.632202148, 0.180736542, 5.60667419, 0.97055167, -0.23266311, -0.0624310337, -0.240859404, -0.932901561, -0.26773715, 0.00405054633, 0.274889797, -0.96146816))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.411469162, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.221878871, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-1.29669189, 4.1741333, 0.953105927, -0.965947151, 0.223977238, 0.12954013, -0.0670539215, 0.26685524, -0.961402118, -0.249900192, -0.937349617, -0.242749542))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 0.554697514))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.367215037, 0.604391217, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.631652832, 5.60630798, 1.24031448, -0.970499158, 0.232891247, 0.0623970665, 0.00422959309, 0.27520144, -0.961378276, -0.241067886, -0.932752728, -0.268067747))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.411469162, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.554697335, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.732513428, -3.96032715, 3.29571533, 0.965891063, -0.25894922, 8.80002408e-005, -0.183193147, -0.683078706, 0.706997693, -0.183016106, -0.682898879, -0.707217276))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.277348429, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.345508784, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.90597534, -2.78483582, -0.00750732422, 0.000275999686, 0.333812177, -0.942640483, -0.000215999957, 0.942640483, 0.333812118, 1.00000012, 0.000111478068, 0.000332272379))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602222681, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00112915039, 0.963653564, 0.000671386719, 0.00012199991, 1.00000095, 9.20003076e-005, -0.000274999824, -9.19662853e-005, 1.00000083, 1, -0.000122025536, 0.00027498923))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.439578682, 0.439578772, 0.439578742))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.222426847, 0.202206194, 0.244405776))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-2.78868866, -4.19238281, -0.00555419922, -0.000200000155, 0.94360137, 0.331086516, 0.000325000496, -0.331086457, 0.943601429, 1, 0.000296323444, -0.000240453097))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232097521, 0.373641849, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.05065918, -4.53768158, -0.00598144531, 2.4000241e-005, -0.684613049, 0.728908122, -6.54836185e-011, -0.728908062, -0.684613049, 1, 1.64306111e-005, -1.7493594e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.7758975, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.705871582, -3.97502899, -0.0071105957, 3.00001921e-005, -0.884769678, 0.466030359, -9.5000134e-005, -0.466030419, -0.884769678, 1, -1.77298934e-005, -9.80338373e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 0.791241646))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.79475826, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-3.49215698, -3.94909668, -0.0061340332, 0.000193999964, -0.798750699, -0.60166353, -1.70002386e-005, 0.601663589, -0.798750818, 1.00000012, 0.000165185818, 0.00010314415))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 0.791241646))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.334958941, 0.348146349, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.82269287, -3.70261383, -0.00616455078, 3.10002579e-005, -0.488197714, 0.872734189, -3.20000327e-005, -0.872734249, -0.488197744, 1, -1.27934909e-005, -4.2676882e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.909927785, 0.349904597, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.76397705, -3.0793457, -0.00677490234, 5.70002521e-005, -0.34503442, 0.938591123, 6.60000296e-005, -0.938591063, -0.34503445, 1, 8.16138636e-005, -3.07272348e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00198364258, -2.36550903, -0.00492858887, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.0879157111, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(2.90072632, -2.63722992, 0.000549316406, 2.30002406e-005, -0.707217872, 0.706996918, -1.60000855e-005, -0.706996918, -0.707217872, 1, 4.95395216e-006, -2.75762286e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.184623033, 0.149456695, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.896740377, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.784042358, -4.82229614, -0.00659179688, 0.000245000032, -0.999967575, 0.00816500559, -1.20002305e-005, -0.00816500932, -0.999967754, 1, 0.00024489389, -1.39998283e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 0.791241646))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00198364258, -2.05691528, -0.00494384766, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.0879157111, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.349025339, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00852966309, -3.90582275, 0.000549316406, 0.00018400012, -1.00000083, -9.20002785e-005, -3.00002066e-005, 9.19943268e-005, -1.00000083, 1, 0.000184002813, -2.99828953e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.149456695, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.392983228, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.5005188, -5.3081131, -0.00643920898, 2.90001917e-005, -0.887013555, 0.461745292, -9.10001399e-005, -0.461745322, -0.887013614, 1, -1.62955257e-005, -9.41086255e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.734096408, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00198364258, -2.20858765, -0.00494384766, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.725304723, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.217151895))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00192260742, -1.58822632, -0.00714111328, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.395620763, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.3789168, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.41964722, -3.9382782, -0.00695800781, 2.8000235e-005, -0.578034401, 0.816013575, -1.50000415e-005, -0.816013515, -0.578034401, 1, 3.94464587e-006, -3.15186917e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.369246125, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.38507089, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(2.75286865, -4.80636597, -0.00549316406, 7.20002427e-005, -0.757331848, 0.653031707, 0.000139999916, -0.653031588, -0.757331908, 1.00000012, 0.000145952217, 5.90083837e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.509911358, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.345508784, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.8812561, -2.76496887, -0.00534057617, 5.1000261e-005, -0.333530456, 0.942740381, 0.000296000217, -0.942740321, -0.333530486, 1.00000012, 0.000296061218, 5.06454853e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602222681, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.697171628, 0.283088624, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.58883667, 2.29077148, -0.0055847168, -0.000156999886, 0.546051562, 0.837752819, 0.000234000239, -0.837752819, 0.546051562, 1, 0.000281764136, 3.75133118e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.312100857, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.55836487, -1.06567383, -0.00598144531, 4.40002368e-005, -0.019939024, 0.999802172, 0.000132000132, -0.999802113, -0.0199390333, 1, 0.000132851113, -4.13591551e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.575848162, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.49920654, 1.03039551, 0.000457763672, -2.89998061e-005, 0.22079812, 0.975320578, -0.000107999847, -0.975320518, 0.22079815, 1.00000012, -9.89315158e-005, 5.21306683e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.439578682, 1.75831509, 1.31873631))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.222426847, 0.202206194, 0.244405776))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-2.77007294, -4.16693115, -0.00622558594, 0.000191000116, -0.943623185, -0.331024408, -2.21916707e-010, 0.331024408, -0.943623185, 1.00000012, 0.00018023196, 6.32258816e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.222426847, 0.202206194, 0.244405776))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-2.52085114, -4.91748047, -0.00628662109, 0.000191000116, -0.943623185, -0.331024408, -2.21916707e-010, 0.331024408, -0.943623185, 1.00000012, 0.00018023196, 6.32258816e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.363091946, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.0123291, -3.84520721, -0.00552368164, 4.90002567e-005, -0.548781633, 0.835967004, 0.00015300003, -0.835966945, -0.548781693, 1.00000012, 0.000154793146, 4.30014406e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.523098528, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.301550984, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.70257568, 0.478057861, -0.00534057617, -0.000129999884, 0.249401316, 0.968401313, 0.000346000277, -0.968401134, 0.249401346, 1.00000012, 0.000367489003, 3.9599523e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.501119792, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(1.34511089, 1.34511089, 1.34511089))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00253295898, -4.66586304, 0.0189361572, -1, -8.69999712e-005, 3.19998144e-005, -3.20190265e-005, 0.000215999986, -1.00000095, 8.69931901e-005, -1.00000083, -0.000216003158))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.222426847, 0.202206194, 0.244405776))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-2.539505, -4.94293213, -0.00527954102, -0.000200000155, 0.94360137, 0.331086516, 0.000325000496, -0.331086457, 0.943601429, 1, 0.000296323444, -0.000240453097))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 2.24624705, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.000244140625, -2.79940796, -0.00543212891, 1.00000012, 0.000216000088, 0.000119000331, 0.000118943841, 0.000258999993, -1.00000095, -0.000216030938, 1.00000095, 0.00025897476))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.879157126, 1, 0.760471225))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.77563477, -3.4493866, -0.0061340332, 3.10002579e-005, -0.488197714, 0.872734189, -3.20000327e-005, -0.872734249, -0.488197744, 1, -1.27934909e-005, -4.2676882e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.452765942, 0.200000003, 0.420237273))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-9.15527344e-005, -3.97268677, -0.00567626953, 1.00000012, 0.000216000088, 0.000119000331, 0.000118943841, 0.000258999993, -1.00000095, -0.000216030938, 1.00000095, 0.00025897476))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.263747185, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.8843689, -2.51277161, -0.00543212891, 5.1000261e-005, -0.333530456, 0.942740381, 0.000296000217, -0.942740321, -0.333530486, 1.00000012, 0.000296061218, 5.06454853e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00189208984, -1.20935059, -0.00718688965, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.0879157111, 0.945094287))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0009765625, -1.67443848, -0.00559997559, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.953885317, 0.82640779, 0.940698326))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00189208984, -1.24188232, -0.00714111328, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.0879157111, 0.945094287))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.880915463, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.76708984, -2.82527924, -0.00677490234, 5.70002521e-005, -0.34503442, 0.938591123, 6.60000296e-005, -0.938591063, -0.34503445, 1, 8.16138636e-005, -3.07272348e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(2.74914551, -4.53517151, -0.00549316406, 7.20002427e-005, -0.757331848, 0.653031707, 0.000139999916, -0.653031588, -0.757331908, 1.00000012, 0.000145952217, 5.90083837e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.55239868, -0.830413818, -0.00601196289, 4.40002368e-005, -0.019939024, 0.999802172, 0.000132000132, -0.999802113, -0.0199390333, 1, 0.000132851113, -4.13591551e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.01516724, -3.58813477, -0.00555419922, 4.90002567e-005, -0.548781633, 0.835967004, 0.00015300003, -0.835966945, -0.548781693, 1.00000012, 0.000154793146, 4.30014406e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(2.9586792, -4.27397919, -0.00598144531, 2.4000241e-005, -0.684613049, 0.728908122, -6.54836185e-011, -0.728908062, -0.684613049, 1, 1.64306111e-005, -1.7493594e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.716513038, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.57852936, 2.5100708, -0.00561523438, -0.000156999886, 0.546051562, 0.837752819, 0.000234000239, -0.837752819, 0.546051562, 1, 0.000281764136, 3.75133118e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(1.7758975, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.51150513, -3.70806885, -0.0078125, 0.000230999751, 0.605653405, -0.795729637, -0.000298999948, 0.795729578, 0.605653465, 1.00000012, 9.80171026e-005, 0.000364904146))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(2.97491455, -4.30102539, -0.00747680664, 0.000216999819, 0.684574842, -0.728943884, -0.000299000007, 0.728943825, 0.684574842, 1.00000012, 6.94014016e-005, 0.000362868945))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.73216248, 0.706344604, -0.00601196289, 0.000101999831, -0.249317229, -0.968422949, -0.000158000155, 0.96842289, -0.249317259, 1.00000012, 0.000178441041, 5.93872028e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.50846863, -5.06376648, -0.0078125, 0.000182999807, 0.886935949, -0.461894512, -0.000389999856, 0.461894512, 0.886935771, 0.999999881, 1.78294722e-005, 0.000430431915))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0016784668, 0.344696045, 0.00161743164, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.879157305, 0.945094287))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00189208984, -0.404754639, 0.00160217285, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.879157305, 0.945094287))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00219726563, -1.61582947, 0.00169372559, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.879157305, 0.945094287))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.378037602, 0.363091946, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.810943604, -3.9641571, -0.00769042969, 0.000230999751, 0.605653405, -0.795729637, -0.000298999948, 0.795729578, 0.605653465, 1.00000012, 9.80171026e-005, 0.000364904146))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.523977816, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.00134277344, -1.44378662, 0.000427246094, 0.00012199991, 1.00000095, 9.20003076e-005, -0.000274999824, -9.19662853e-005, 1.00000083, 1, -0.000122025536, 0.00027498923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.953885317, 1, 0.202206224))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0012512207, -1.70469666, 0.00318908691, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.953885317, 0.82640779, 0.940698326))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.880915463, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.79244995, -2.84398651, -0.0080871582, 0.000266999821, 0.345026344, -0.938593984, -0.000235000043, 0.938593984, 0.345026255, 1.00000012, 0.000128447442, 0.000331686082))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00210571289, -1.23959351, 0.00166320801, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.0879157111, 0.945094287))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00210571289, -1.27210999, 0.00166320801, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.0879157111, 0.945094287))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(2.7616272, -4.56420898, -0.0075378418, 0.000184999852, 0.757411003, -0.652939856, -0.00032500003, 0.652939975, 0.757411003, 1.00000012, 7.20843527e-005, 0.000366952852))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.79812622, -3.47142792, -0.00772094727, 0.000279999978, 0.488091767, -0.872793376, -0.000309000141, 0.872793376, 0.488091677, 1.00000012, 0.000133027424, 0.000395202951))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.58247375, -0.839859009, -0.00692749023, 0.000213999854, 0.0199380238, -0.999802172, -0.00021600016, 0.999802113, 0.0199379809, 1, 0.000211690436, 0.00021826454))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.716513038, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.60901642, 2.51841736, -0.00616455078, 0.000148999912, -0.545940578, -0.837824941, -7.30002284e-005, 0.837824941, -0.545940697, 1.00000012, 0.000142506295, 8.49824864e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.90916443, -2.53263855, -0.00747680664, 0.000275999686, 0.333812177, -0.942640483, -0.000215999957, 0.942640483, 0.333812118, 1.00000012, 0.000111478068, 0.000332272379))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 2.24624705, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.000701904297, -2.82966614, 0.00340270996, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.879157126, 1, 0.760471225))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.03552246, -3.61229706, -0.00759887695, 0.000214999804, 0.548810601, -0.835947931, -0.000336000376, 0.835947812, 0.548810422, 1.00000012, 0.000162884433, 0.000364129606))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 1.62556159, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.00141906738, -0.0340576172, 0.000762939453, 0.00012199991, 1.00000095, 9.20003076e-005, -0.000274999824, -9.19662853e-005, 1.00000083, 1, -0.000122025536, 0.00027498923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.953885317, 1, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.452765942, 0.200000003, 0.420237273))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.000549316406, -4.00294495, 0.00314331055, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.263747185, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.419358075, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.00245667, -0.00262451172, -0.000244140625, 8.69997966e-005, 0.000129999884, -1.00000095, -0.000227000099, 1.00000083, 0.000129980574, 1.00000012, 0.000226988777, 8.70297954e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.408808142, 1, 0.487932414))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.50144958, -5.03311157, -0.00643920898, 2.90001917e-005, -0.887013555, 0.461745292, -9.10001399e-005, -0.461745322, -0.887013614, 1, -1.62955257e-005, -9.41086255e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(1.7758975, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.4934082, -3.68249512, -0.00610351563, 0.000124000275, -0.605525672, 0.795826972, 0.000221000024, -0.795826852, -0.605525672, 1, 0.000250962883, 3.51388371e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.70053101, 0.707824707, -0.00543212891, -0.000129999884, 0.249401316, 0.968401313, 0.000346000277, -0.968401134, 0.249401346, 1.00000012, 0.000367489003, 3.9599523e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.756075144, 0.791241527, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.419358075, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.972229, 0.00634765625, -0.000305175781, 4.3000211e-005, -8.59998254e-005, 1.00000083, 0.000119000106, -1.00000083, -8.60053842e-005, 1, 0.000119003693, -4.29896027e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.408808142, 1, 0.487932414))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00192260742, -1.58560181, -0.00714111328, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.879157305, 0.945094287))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.523977816, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00746154785, -1.41351318, 0.000671386719, 0.00018400012, -1.00000083, -9.20002785e-005, -3.00002066e-005, 9.19943268e-005, -1.00000083, 1, 0.000184002813, -2.99828953e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.953885317, 1, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.378037602, 0.363091946, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.792816162, -3.93865967, -0.00598144531, 0.000124000275, -0.605525672, 0.795826972, 0.000221000024, -0.795826852, -0.605525672, 1, 0.000250962883, 3.51388371e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.657609761, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.000183105469, -2.18704224, -0.00454711914, 1.00000012, 0.000216000088, 0.000119000331, 0.000118943841, 0.000258999993, -1.00000095, -0.000216030938, 1.00000095, 0.00025897476))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.879157126, 1, 0.786845922))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.657609761, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.000549316406, -2.21730042, 0.00433349609, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.879157126, 1, 0.786845922))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.998454988, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.73248291, -4.1822052, 3.18474579, 0.965891063, -0.25894922, 8.80002408e-005, -0.183193147, -0.683078706, 0.706997693, -0.183016106, -0.682898879, -0.707217276))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.367215037, 1.41909194, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.632415771, -1.1329422, -5.30447388, 0.970468521, -0.232976317, -0.0625550896, 0.24119477, 0.932829797, 0.267685175, -0.00401105732, -0.274868041, 0.961474597))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.164587662, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.367215037, 2.22162485, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.632293701, -0.67281723, 5.30447388, 0.97055167, -0.23266311, -0.0624310337, -0.240859404, -0.932901561, -0.26773715, 0.00405054633, 0.274889797, -0.96146816))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.164587662, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.998454988, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.29711914, 0.397193909, 4.17425537, 0.965979278, -0.223797277, -0.129612148, -0.249724433, -0.937472343, -0.242456377, -0.0672466159, 0.266575038, -0.961466372))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.332818359, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.731842041, 3.51643372, -3.18506622, 0.965964437, -0.258675337, 0.000261000532, 0.18312189, 0.683115065, -0.706981003, 0.182699949, 0.682966292, 0.707233965))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.367215037, 2.22162485, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0498657227, -0.727134705, 5.31214905, 0.956991673, -0.283411175, 0.062011037, 0.257601261, 0.928420603, 0.267728239, -0.133449256, -0.240239561, 0.961497903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.164587662, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.367215037, 1.41909194, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0509338379, -1.07858276, -5.31221008, 0.957068563, -0.283097416, 0.0622580908, -0.257248878, -0.92854315, -0.267642289, 0.133577913, 0.240136147, -0.961505771))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.164587662, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.332818359, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.718902588, 3.51016235, -3.06762695, 0.965891063, -0.25894922, 8.80002408e-005, -0.183193147, -0.683078706, 0.706997693, -0.183016106, -0.682898879, -0.707217276))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.998454988, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-1.29428101, 0.348529816, 4.15612793, 0.965897679, -0.224115133, -0.129670069, 0.250048459, 0.937386274, 0.242455319, 0.0672129169, -0.266610771, 0.961458743))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.998454988, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.718109131, -4.17564392, 3.06798553, 0.965964437, -0.258675337, 0.000261000532, 0.18312189, 0.683115065, -0.706981003, 0.182699949, 0.682966292, 0.707233965))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.998454988, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.29150391, 0.381469727, 4.14746094, 0.965865433, 0.224185288, 0.129789144, -0.250148833, 0.937358439, 0.242459133, -0.0673030764, -0.266649485, 0.961441636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.367215037, 1.41909194, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.627319336, -1.11688232, -5.2779541, 0.970409393, 0.233264312, 0.0624000803, 0.241428807, -0.932758331, -0.267723382, -0.0042461101, 0.274866432, -0.961474061))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.164587662, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.332818359, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.729736328, 3.50134277, -3.15725708, 0.965824842, 0.259196192, -0.000137999858, 0.183398217, -0.68300885, 0.707011878, 0.183160231, -0.682874858, -0.70720309))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.367215037, 2.22162485, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.628479004, -0.689544678, 5.27774048, 0.970437467, 0.233078331, 0.0626560897, -0.241320685, 0.932803631, 0.267663211, 0.00394065492, -0.274870574, 0.96147418))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.164587662, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.998454988, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.732177734, -4.16720581, 3.15643311, 0.965877354, 0.259000301, 0.000342000654, -0.182900518, 0.683016956, -0.707133055, -0.183380961, 0.682941198, 0.707081854))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.367215037, 1.41909194, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0496520996, -1.09480286, -5.3392334, 0.956963658, 0.283496201, -0.0620530397, -0.257685781, 0.92842263, 0.267640173, 0.133486181, -0.240131751, 0.961519718))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.164587662, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.332818359, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.722961426, 3.52587891, -3.0942688, 0.965877354, 0.259000301, 0.000342000654, -0.182900518, 0.683016956, -0.707133055, -0.183380961, 0.682941198, 0.707081854))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.998454988, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-1.2989502, 0.364227295, 4.18322754, 0.965865254, 0.224384263, 0.129446149, 0.25025031, -0.937328815, -0.242469177, 0.066927202, 0.266586423, -0.961485565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.998454988, 0.221879035))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.720397949, -4.19134521, 3.09510803, 0.965824842, 0.259196192, -0.000137999858, 0.183398217, -0.68300885, 0.707011878, 0.183160231, -0.682874858, -0.70720309))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.110939361, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.367215037, 2.22162485, 0.604391873))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.05078125, -0.711013794, 5.33905029, 0.956874907, 0.283777207, -0.0621400438, 0.257930368, -0.928340197, -0.26769039, -0.133651271, 0.240118355, -0.961500168))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.164587662, 1, 1))
Hitbox=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(4.36495876, 4.13814592, 0.228580952))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.60864258, 0.00344848633, -0.00997924805, 4.20002361e-005, -0.0289270449, 0.999582529, 1.01863407e-010, -0.999582529, -0.0289270449, 1, 1.21483754e-006, -4.19822827e-005))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232976705, 0.439578652, 0.64530158))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.0105895996, -2.36758423, 6.25720978, 1, 6.39999489e-005, 0.000419000571, 0.000175108711, 0.83785224, -0.545898795, -0.000385997148, 0.545898795, 0.83785218))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.239130735, 0.317375809, 0.694534361))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00775146484, -1.5519104, -3.32563782, -1, -4.8999922e-005, -0.000193000407, -0.000139106327, -0.521604776, 0.853188396, -0.000142475823, 0.853188396, 0.521604776))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232976705, 0.439578652, 0.64530158))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.0129699707, -2.37728882, 6.28723907, 1, 0.000214000087, -4.29998327e-005, 0.00020276627, -0.837799609, 0.5459795, 8.08140176e-005, -0.5459795, -0.837799728))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.239130735, 0.317375809, 0.694534361))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00744628906, -1.53134155, -3.30203247, -1, -0.000106999985, 9.29998787e-005, -0.000135149763, 0.521433592, -0.853292942, 4.28089552e-005, -0.853292942, -0.521433592))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.231218353, 0.430787146, 1.73369825))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00802612305, -2.74101257, -1.81306458, -1.00000012, -0.000127000021, -0.000124000333, -0.000115487426, -0.0649640337, 0.997888565, -0.000134787362, 0.997888505, 0.0649640337))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.232976705, 0.935423493, 0.356058687))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.00854492188, -1.63378906, 4.3205719, 1, 0.000219000067, -7.79998663e-005, 0.000194699373, -0.605617642, 0.795756876, 0.000127032399, -0.795756876, -0.605617702))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.232976705, 0.545077562, 0.35430041))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00787353516, 0.893188477, 4.32376099, -1.00000012, -0.000165000049, 0.000275000086, -0.000318757142, 0.605682909, -0.795707226, -3.52711577e-005, -0.795707285, -0.605683029))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.232976705, 0.457161844, 0.694534361))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00903320313, -1.60006714, -3.16188812, -1, -4.8999922e-005, -0.000193000407, -0.000139106327, -0.521604776, 0.853188396, -0.000142475823, 0.853188396, 0.521604776))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.232976705, 0.545077562, 0.35430041))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00799560547, 0.873535156, 4.29855347, -1.00000012, -0.000150000022, -0.000106000305, 6.54531323e-006, -0.605845869, 0.795583248, -0.000183556956, 0.795583189, 0.605845869))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.232976705, 0.935423493, 0.356058687))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.00750732422, -1.61502075, 4.29525757, 1, 0.000204000055, 0.000195000408, 3.16224905e-005, 0.60562849, -0.795748651, -0.000280430017, 0.795748651, 0.60562849))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.232976705, 0.457161844, 0.694534361))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0087890625, -1.57955933, -3.13829041, -1, -0.000106999985, 9.29998787e-005, -0.000135149763, 0.521433592, -0.853292942, 4.28089552e-005, -0.853292942, -0.521433592))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.231218353, 0.430787146, 1.73369825))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00811767578, -2.71151733, -1.80203247, -1, -4.59999283e-005, 0.000134999922, -0.000137700103, 0.0648760721, -0.997894228, 3.71449278e-005, -0.997894228, -0.0648760945))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00112915039, 0.959259033, 0.000671386719, 0.00012199991, 1.00000095, 9.20003076e-005, -0.000274999824, -9.19662853e-005, 1.00000083, 1, -0.000122025536, 0.00027498923))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.483536482, 0.483536512, 0.175831527))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00122070313, -0.993469238, 0.000152587891, 0.00012199991, 1.00000095, 9.20003076e-005, -0.000274999824, -9.19662853e-005, 1.00000083, 1, -0.000122025536, 0.00027498923))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.483536482, 0.483536512, 0.175831527))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.673434496, 0.263747245))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.000122070313, -1.34384155, -0.00862121582, 1.00000012, 0.000216000088, 0.000119000331, 0.000118943841, 0.000258999993, -1.00000095, -0.000216030938, 1.00000095, 0.00025897476))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.879157126, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.673434496, 0.263747245))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.000335693359, -1.37409973, 0.000213623047, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.879157126, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.53053284, 1.02914429, 0.000305175781, 0.00011499977, -0.220934153, -0.975289702, -0.000251000107, 0.975289702, -0.220934168, 1.00000012, 0.000270204968, 5.67040261e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.439578682, 1.75831509, 1.31873631))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00225830078, -1.91967773, 0.00387573242, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.725304723, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00122070313, -0.989044189, 0.000183105469, 0.00012199991, 1.00000095, 9.20003076e-005, -0.000274999824, -9.19662853e-005, 1.00000083, 1, -0.000122025536, 0.00027498923))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.439578682, 0.439578772, 0.439578742))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-2.66931152, 2.91678619, 0.0009765625, 2.30002406e-005, -0.707217872, 0.706996918, -1.60000855e-005, -0.706996918, -0.707217872, 1, 4.95395216e-006, -2.75762286e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.184623033, 0.197810382, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.349025339, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.00032043457, -3.93612671, -0.000213623047, 0.00012199991, 1.00000095, 9.20003076e-005, -0.000274999824, -9.19662853e-005, 1.00000083, 1, -0.000122025536, 0.00027498923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.149456695, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.07832789, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.00390625, -2.91799927, 6.10351563e-005, 0.00012199991, 1.00000095, 9.20003076e-005, -0.000274999824, -9.19662853e-005, 1.00000083, 1, -0.000122025536, 0.00027498923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.778054118, 1, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00225830078, -1.91967773, 0.00387573242, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.725304723, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00244140625, -2.5509491, 0.00390625, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.725304723, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.439578682, 0.243526563, 0.41584149))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00100708008, -4.06932068, 0.00273132324, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.36093533, 0.359575331, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.68063354, -3.96672058, -0.00796508789, 0.000230999751, 0.605653405, -0.795729637, -0.000298999948, 0.795729578, 0.605653465, 1.00000012, 9.80171026e-005, 0.000364904146))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.230339229, 0.428149641, 0.244405776))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-3.70005798, -1.78961182, -0.00677490234, -1.89999628e-005, 0.806382716, 0.591395557, -0.000181999785, -0.591395617, 0.806382775, 1, -9.23128537e-005, 0.00015799838))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.421995521, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.00090027, -0.00311279297, -0.000244140625, 8.69997966e-005, 0.000129999884, -1.00000095, -0.000227000099, 1.00000083, 0.000129980574, 1.00000012, 0.000226988777, 8.70297954e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.312100798, 1, 0.487932414))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.3789168, 0.200000003, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.43948364, -3.96276093, -0.00833129883, 0.00023599976, 0.577981651, -0.816050947, -0.000286000024, 0.816051006, 0.577981591, 1.00000012, 9.69868197e-005, 0.000357891084))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.369246125, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.363091946, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(4.03268433, -3.86935425, -0.00769042969, 0.000214999804, 0.548810601, -0.835947931, -0.000336000376, 0.835947812, 0.548810422, 1.00000012, 0.000162884433, 0.000364129606))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.523098528, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.301550984, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.73413086, 0.476516724, -0.00607299805, 0.000101999831, -0.249317229, -0.968422949, -0.000158000155, 0.96842289, -0.249317259, 1.00000012, 0.000178441041, 5.93872028e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.501119792, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.312100857, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.58840942, -1.07514954, -0.00692749023, 0.000213999854, 0.0199380238, -0.999802172, -0.00021600016, 0.999802113, 0.0199379809, 1, 0.000211690436, 0.00021826454))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.575848162, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.334958941, 0.348146349, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.84515381, -3.72462463, -0.00775146484, 0.000279999978, 0.488091767, -0.872793376, -0.000309000141, 0.872793376, 0.488091677, 1.00000012, 0.000133027424, 0.000395202951))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.217151895))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00189208984, -0.4034729, 0.00160217285, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.395620763, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.909927785, 0.349904597, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.78936768, -3.09806061, -0.00814819336, 0.000266999821, 0.345026344, -0.938593984, -0.000235000043, 0.938593984, 0.345026255, 1.00000012, 0.000128447442, 0.000331686082))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.217151895))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00219726563, -1.61846924, 0.00169372559, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.395620763, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.392983228, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.5075531, -5.33882141, -0.00787353516, 0.000182999807, 0.886935949, -0.461894512, -0.000389999856, 0.461894512, 0.886935771, 0.999999881, 1.78294722e-005, 0.000430431915))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.734096408, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232097521, 0.373641849, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.06686401, -4.56462097, -0.00756835938, 0.000216999819, 0.684574842, -0.728943884, -0.000299000007, 0.728943825, 0.684574842, 1.00000012, 6.94014016e-005, 0.000362868945))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.896740377, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-0.792831421, -4.85264587, -0.00759887695, 6.199989e-005, 0.999967933, -0.0081320079, -0.000257999753, 0.00813202281, 0.999967933, 1, -5.99000632e-005, 0.000258496118))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 0.791241646))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(2.91601563, -2.66474915, -0.000549316406, 0.000212999861, 0.707176983, -0.707038045, -0.000308000075, 0.707038045, 0.707176924, 1.00000012, 6.71389207e-005, 0.000368410023))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.184623033, 0.149456695, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00228881836, -2.0871582, 0.00386047363, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.0879157111, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.7758975, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.712310791, -4.0059433, -0.00775146484, 0.000190999912, 0.884758115, -0.466052622, -0.000302999979, 0.466052562, 0.884757996, 1.00000012, -2.77749641e-005, 0.000357098092))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 0.791241646))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00231933594, -2.23881531, 0.00389099121, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.725304723, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.79475826, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-3.51742554, -3.96795654, -0.00769042969, 3.63797881e-011, 0.798752904, 0.601660669, -0.000325999892, -0.601660669, 0.798752904, 1, -0.000196141555, 0.000260393776))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791241527, 0.791241646))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00234985352, -2.39576721, 0.00392150879, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.0879157111, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.217151895))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0016784668, 0.342071533, 0.00161743164, 1, 0.00013, -0.000226000004, 0.000226022734, -0.00017299992, 1.00000095, 0.000129961001, -1.00000083, -0.000173029723))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.395620763, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.421995521, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(3.97064209, 0.005859375, -0.000305175781, 4.3000211e-005, -8.59998254e-005, 1.00000083, 0.000119000106, -1.00000083, -8.60053842e-005, 1, 0.000119003693, -4.29896027e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.312100798, 1, 0.487932414))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00198364258, -2.52069092, -0.00489807129, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.725304723, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.230339229, 0.428149641, 0.244405776))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-3.67474365, -1.77087402, -0.0061340332, 0.000233000057, -0.806464076, -0.591284752, -0.000141000273, 0.591284692, -0.806464016, 1, 0.000271277211, 2.40581576e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(-2.65432739, 2.88899994, 0.00207519531, 0.000212999861, 0.707176983, -0.707038045, -0.000308000075, 0.707038045, 0.707176924, 1.00000012, 6.71389207e-005, 0.000368410023))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.184623033, 0.197810382, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.36093533, 0.359575331, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(1.66247559, -3.94114685, -0.00610351563, 0.000124000275, -0.605525672, 0.795826972, 0.000221000024, -0.795826852, -0.605525672, 1, 0.000250962883, 3.51388371e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.001953125, -1.8894043, -0.00491333008, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.725304723, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.439578682, 0.243526563, 0.41584149))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.000335693359, -4.03903198, -0.00607299805, 1.00000012, 0.000216000088, 0.000119000331, 0.000118943841, 0.000258999993, -1.00000095, -0.000216030938, 1.00000095, 0.00025897476))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Eggplant","Part",Vector3.new(1.34511089, 1.34511089, 1.34511089))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.00314331055, -4.69612122, 0.0102844238, -1, -4.39999203e-005, -0.000227000419, -0.000226992182, -0.000172999935, 1.00000095, -4.40393633e-005, 1.00000083, 0.000172990345))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.001953125, -1.8894043, -0.00491333008, 1.00000012, 0.000216000088, 0.000119000331, 0.000118962409, 0.000172999906, -1.00000095, -0.000216020708, 1.00000083, 0.000172974629))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99344784, 0.725304723, 0.843991339))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.38507089, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(2.76535034, -4.83540344, -0.00762939453, 0.000184999852, 0.757411003, -0.652939856, -0.00032500003, 0.652939975, 0.757411003, 1.00000012, 7.20843527e-005, 0.000366952852))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.509911358, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.07832789, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(0.0048828125, -2.88772583, 0.000610351563, 0.00018400012, -1.00000083, -9.20002785e-005, -3.00002066e-005, 9.19943268e-005, -1.00000083, 1, 0.000184002813, -2.99828953e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.778054118, 1, 0.202206224))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.697171628, 0.283088624, 0.228580952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0.00013, -0.000226000004, 0.00022603391, -0.000258999993, 1.00000095, 0.000129941574, -1.00000095, -0.000259029854),CFrame.new(5.61936188, 2.29910278, -0.00616455078, 0.000148999912, -0.545940578, -0.837824941, -7.30002284e-005, 0.837824941, -0.545940697, 1.00000012, 0.000142506295, 8.49824864e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Deep orange"))
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
 

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1.5,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(20)),.3)
        end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,1) 
 for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(-30)),.3)
        end
attack=false
con1:disconnect()
end

function attacktwo()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1.5,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-130),math.rad(-130)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=200632211",Hitbox,1,1) 
 for i=0,1.5,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-40),math.rad(-80)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
        end
attack=false
con1:disconnect()
end

function attackthree()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1.5,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1,0.8,-1)*angles(math.rad(130),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.8,-1)*angles(math.rad(130),math.rad(0),math.rad(50)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,.9) 
      for i=0,1.5,.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(5)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(20)),.3)
        end
attack=false
con1:disconnect()
end

function SpinNSmash()
        attack=true
for i=0,1.5,0.1 do
swait()
so("http://roblox.com/asset/?id=200632136",Hitbox,1,.9) 
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.9,0)*angles(math.rad(170),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-20)),.3)
handleweld.C0=cf(0,0,0)*euler(0,0+10*i,0)
        end
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1.5,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.9,0)*angles(math.rad(190),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=200632211",Hitbox,1,.9) 
for i=0,1.5,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-30)),.3)
handleweld.C0=clerp(handleweld.C0,cf(.5,0,0)*angles(math.rad(-50),math.rad(10),math.rad(-20)),.3)
        end
attack=false
con1:disconnect()
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

mouse.KeyDown:connect(function(k)
    k=k:lower()
    if k=='q' then
        if attack==false then
            SpinNSmash()
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
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0.4)*angles(math.rad(80),math.rad(0),math.rad(20)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
end
end
end
