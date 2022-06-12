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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Handle",Vector3.new(0.399999976, 3.60000014, 0.599999964))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, -5.69614329e-008, 5.96046448e-008, 5.69614222e-008, 0.999999881, 6.38557296e-008, -5.96046448e-008, -6.38557367e-008, 1),CFrame.new(-0.0502281189, 0.651779175, 1.07125878, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.800000012, 0.400000006, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.01522827, 0.00137710571, 0.264533997, -0.000451982021, 0.707132518, -0.70708096, -0.999999702, 0.000185647325, 0.000824883173, 0.000714569353, 0.707081079, 0.707132161))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1.00999999, 0.100000001))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Quill grey","Hitbox",Vector3.new(7.60000038, 0.200000003, 0.600000024))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-5.75015259, 7.62939453e-006, 1.04991317, -7.67856764e-005, 4.61829586e-005, -1, -1, 0.000196854686, 7.67947713e-005, 0.000196858236, 1, 4.61678428e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Quill grey","Part",Vector3.new(0.200000003, 2.4000001, 3))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-0.000133514404, -0.149738908, 11.050415, -1, 0.000196889057, 5.97238613e-005, -0.000196891095, -1, -3.41577215e-005, 5.97171347e-005, -3.41694795e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Quill grey","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.95001221, 1.90734863e-005, 1.04991555, -7.67856764e-005, 4.61829586e-005, -1, -1, 0.000196854686, 7.67947713e-005, 0.000196858236, 1, 4.61678428e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Quill grey","Part",Vector3.new(0.200000003, 1.80000007, 1.80000007))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.28881836e-005, -0.150063515, -2.65003967, -1, 0.000180725096, 6.73532486e-005, 0.00018072738, 1, 3.39938124e-005, -6.73471004e-005, 3.40059851e-005, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Quill grey","Part",Vector3.new(6.00000048, 0.200000003, 1.80000007))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-6.55021667, -1.14440918e-005, -0.150118351, -7.67856764e-005, 4.61829586e-005, -1, -1, 0.000196854686, 7.67947713e-005, 0.000196858236, 1, 4.61678428e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Medium stone grey","Part",Vector3.new(0.200000003, 2.60000014, 3.20000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-0.00016784668, -0.24972713, 11.1504059, -1, 0.000196889057, 5.97238613e-005, -0.000196891095, -1, -3.41577215e-005, 5.97171347e-005, -3.41694795e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.999000013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Medium stone grey","Part",Vector3.new(7.60000038, 0.200000003, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-5.75015259, 2.67028809e-005, 1.24992132, -7.67856764e-005, 4.61829586e-005, -1, -1, 0.000196854686, 7.67947713e-005, 0.000196858236, 1, 4.61678428e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.200000003, 0.400000006, 2.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.77470398, 0.00217056274, 1.97377014, -0.00024946034, 0.866042256, -0.499970824, -0.999999642, 0.00018472239, 0.000818923116, 0.000801577931, 0.499970883, 0.866041958))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.200000003, 0.400000006, 2.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.11837769, 0.00190734863, 0.930618286, -0.000622972788, 0.500034273, -0.866005361, -0.999999702, 0.000187790167, 0.00082779408, 0.000576552702, 0.86600554, 0.500033975))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.600000024, 0.400000006, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.27683258, 0.0033531189, -3.67700958, -0.000722885132, -0.707075536, -0.707137644, -0.999999642, 0.000203396223, 0.000818890578, -0.000435188354, 0.707138002, -0.707075417))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.200000003, 0.400000006, 2.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.85006714, 2.28881836e-005, -0.200043917, -7.67856764e-005, 4.61829586e-005, -1, -1, 0.000196854686, 7.67947713e-005, 0.000196858236, 1, 4.61678428e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.600000024, 0.400000006, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.26258087, 0.00119018555, -0.353546143, -0.000723078847, -0.707075536, -0.707137704, -0.999999642, 0.000203026953, 0.000819533772, -0.000435904221, 0.707138062, -0.707075357))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.200000003, 0.400000006, 2.20000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.75359344, 0.000621795654, -2.00830078, -0.000578910112, -0.707075, -0.707138419, -0.999999702, 0.00075430196, 6.44313113e-005, 0.000487838057, 0.707138181, -0.707075238))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.600000024, 0.400000006, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-0.234588623, 0.00204849243, -3.2303772, 3.10465693e-005, -0.965934575, 0.258786738, -0.999999702, 0.000186417266, 0.000815781532, -0.000836233783, -0.258786649, -0.965934157))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.400000006, 0.400000006, 0.400000125))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.10957336, 0.00124359131, -1.74000347, -0.000831305981, 4.58104769e-005, -0.999999702, -0.999999642, 0.000196836598, 0.000831314945, 0.000196874622, 1, 4.56468297e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.05960083, 0.0016708374, -1.69001567, -0.000831305981, 4.58104769e-005, -0.999999702, -0.999999642, 0.000196836598, 0.000831314945, 0.000196874622, 1, 4.56468297e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.800000012, 0.400000006, 0.800000131))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.60990906, 0.0015411377, -1.24002254, -0.000831305981, 4.58104769e-005, -0.999999702, -0.999999642, 0.000196836598, 0.000831314945, 0.000196874622, 1, 4.56468297e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.15953064, 0.00136947632, -0.789977908, -0.000831305981, 4.58104769e-005, -0.999999702, -0.999999642, 0.000196836598, 0.000831314945, 0.000196874622, 1, 4.56468297e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.600000024, 0.400000006, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.20388031, 0.00231552124, -3.72085571, -0.000399932265, -0.965916216, -0.258854896, -0.999999642, 0.000196011679, 0.000813588093, -0.000735119334, 0.258855134, -0.965915918))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.200000003, 0.400000006, 2.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(1.00007033, 3.81469727e-006, -2.65005493, -0.000191164276, -1, -3.42918211e-005, -1, 0.000191162268, 5.89191986e-005, -5.89126466e-005, 3.43030842e-005, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.400000006, 0.800000012, 0.800000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.90734863e-005, 1.39996338, 0.399903059, -1, 0.000188489998, 4.28557396e-005, 4.28470448e-005, -4.61233321e-005, 1, 0.000188491977, 1, 4.61152558e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.400000006, 0.800000012, 0.800000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-3.43322754e-005, 1.40000916, 0.400004745, 1, -0.000188503182, -7.5131662e-005, 7.51229381e-005, -4.62872777e-005, 1, -0.000188506659, -1, -4.6273115e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.800000012, 0.400000006, 0.800000131))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(1.48513794, -0.0012550354, -1.48508453, -0.000453040004, 0.707132459, -0.70708096, -0.999999642, 0.000184848264, 0.000825580209, 0.000714497233, 0.707081139, 0.707132101))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-6.13472748, 0.00688552856, -6.56424713, -0.000722542405, -0.707075357, -0.707137883, -0.999999642, 0.000202615614, 0.000819186214, -0.000435949187, 0.70713824, -0.707075238))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-6.00767517, -0.00597763062, 5.57806396, 0.000614136457, 0.707131982, -0.707081318, -0.999999821, 0.000185317942, -0.000683220045, -0.000352091884, 0.707081616, 0.707131922))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(6.01267242, 0.0069732666, -6.68621826, 0.00045250362, -0.707132578, 0.707080901, -0.999999702, 0.000184707402, 0.000824680901, -0.000713761721, -0.70708102, -0.707132161))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(4.88130188, 0.00579833984, -5.55484009, 0.00045250362, -0.707132578, 0.707080901, -0.999999702, 0.000184707402, 0.000824680901, -0.000713761721, -0.70708102, -0.707132161))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-5.00333405, 0.00572967529, -5.43283844, -0.000722542405, -0.707075357, -0.707137883, -0.999999642, 0.000202615614, 0.000819186214, -0.000435949187, 0.70713824, -0.707075238))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-3.74480438, -0.00352859497, 3.31526947, 0.000614136457, 0.707131982, -0.707081318, -0.999999821, 0.000185317942, -0.000683220045, -0.000352091884, 0.707081616, 0.707131922))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(6.12968445, -0.00601196289, 5.45607758, -0.000343874097, 0.707075536, 0.707138002, -0.999999762, 0.000202812502, -0.000689084351, -0.000630651135, -0.707138062, 0.707075238))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(3.86688232, -0.00355911255, 3.1932373, -0.000343874097, 0.707075536, 0.707138002, -0.999999762, 0.000202812502, -0.000689084351, -0.000630651135, -0.707138062, 0.707075238))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-4.87625885, -0.0047492981, 4.4466629, 0.000614136457, 0.707131982, -0.707081318, -0.999999821, 0.000185317942, -0.000683220045, -0.000352091884, 0.707081616, 0.707131922))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(3.74986267, 0.00458145142, -4.42344666, 0.00045250362, -0.707132578, 0.707080901, -0.999999702, 0.000184707402, 0.000824680901, -0.000713761721, -0.70708102, -0.707132161))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(2.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-3.53944397, -0.00273895264, 0.0833859444, 0.000676527619, 4.578058e-005, -0.999999762, -0.999999821, 0.000196437555, -0.000676518714, 0.000196406516, 1, 4.59134644e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-3.87188721, 0.00454330444, -4.30137634, -0.000722542405, -0.707075357, -0.707137883, -0.999999642, 0.000202615614, 0.000819186214, -0.000435949187, 0.70713824, -0.707075238))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(4.99826813, -0.00476455688, 4.324646, -0.000343874097, 0.707075536, 0.707138002, -0.999999762, 0.000202812502, -0.000689084351, -0.000630651135, -0.707138062, 0.707075238))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-0.000591278076, 0.0833610296, -2.43943787, -1, 0.000180725096, 6.73532486e-005, 0.00018072738, 1, 3.39938124e-005, -6.73471004e-005, 3.40059851e-005, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Toothpaste","Part",Vector3.new(0.200000003, 1.60000002, 1.60000002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-3.81469727e-005, 0.200072527, 2.65005493, -1, 0.000212982617, 5.06639481e-005, -0.000212984334, -1, -3.39640028e-005, 5.06567121e-005, -3.3974793e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.800000012, 0.400000006, 0.800000131))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.24004114, 0.00152206421, 1.60990906, 0.000191387764, 1, 3.41875239e-005, -0.999999702, 0.000191359897, 0.000813245773, 0.000813239254, -3.43431602e-005, 0.999999762))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00999999, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.400000006, 0.400000006, 0.400000125))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.10957336, 0.00124359131, -1.74000347, -0.000831305981, 4.58104769e-005, -0.999999702, -0.999999642, 0.000196836598, 0.000831314945, 0.000196874622, 1, 4.56468297e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.05931091, 0.00164413452, -1.68999982, -0.000831305981, 4.63469187e-005, -0.999999642, -0.999999642, 0.000196829147, 0.000831315119, 0.000196867608, 1, 4.61832788e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.800000012, 0.400000006, 0.800000131))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.01522064, 0.00154495239, 0.261528015, -0.000452429056, 0.707132459, -0.70708096, -0.999999702, 0.000185248791, 0.000825116818, 0.000714452763, 0.707081139, 0.707132101))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00999999, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.600000024, 0.400000006, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.26258087, 0.00119018555, -0.353546143, -0.000723078847, -0.707075536, -0.707137704, -0.999999642, 0.000203026953, 0.000819533772, -0.000435904221, 0.707138062, -0.707075357))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.15924072, 0.00138473511, -0.790001273, -0.000831305981, 4.58104769e-005, -0.999999702, -0.999999642, 0.000196836598, 0.000831314945, 0.000196874622, 1, 4.56468297e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.00999999, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.600000024, 0.400000006, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-0.22233963, 0.00203704834, -3.23742676, 3.10465693e-005, -0.965934575, 0.258786738, -0.999999702, 0.000186417266, 0.000815781532, -0.000836233783, -0.258786649, -0.965934157))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.600000024, 0.400000006, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-1.19681549, 0.00232696533, -3.733078, -0.000399932265, -0.965916216, -0.258854896, -0.999999642, 0.000196011679, 0.000813588093, -0.000735119334, 0.258855134, -0.965915918))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.600000024, 0.400000006, 0.600000143))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(-2.27683258, 0.0033531189, -3.67700958, -0.000722885132, -0.707075536, -0.707137644, -0.999999642, 0.000203396223, 0.000818890578, -0.000435188354, 0.707138002, -0.707075417))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.30000001192093,"Toothpaste","Part",Vector3.new(0.800000012, 0.400000006, 0.800000131))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(1.48513794, -0.0012550354, -1.48508453, -0.000453040004, 0.707132459, -0.70708096, -0.999999642, 0.000184848264, 0.000825580209, 0.000714497233, 0.707081139, 0.707132101))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.800000012, 0.400000006, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0.000196857742, 5.8949001e-005, 5.89399133e-005, -4.61829695e-005, 1, 0.000196860463, 1, 4.6171368e-005),CFrame.new(0.0665817261, 0.00122451782, 2.01520538, 0.000722974539, 0.707075357, 0.707137883, -0.999999702, 0.000203784293, 0.000818628876, 0.000434728659, -0.7071383, 0.707075238))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 0.100000001))

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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(20)),.3)
        end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,1) 
 for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(-30)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=200632211",Hitbox,1,1) 
 for i=0,1.5,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-40),math.rad(-80)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,.9) 
      for i=0,1.5,.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(5)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(20)),.3)
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
HandleWeld.C0=cf(0,0,0)*euler(0,0+10*i,0)
        end
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1.5,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.9,0)*angles(math.rad(190),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=200632211",Hitbox,1,.9) 
for i=0,1.5,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-30)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(.5,0,0)*angles(math.rad(-50),math.rad(10),math.rad(-20)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-10)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0.4)*angles(math.rad(80),math.rad(0),math.rad(20)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-20)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-20)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
end
end
end

