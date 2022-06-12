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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Handle",Vector3.new(0.249872148, 0.251215011, 0.249872148))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000205993652, -0.360076904, -0.95643425, -0.99999994, -0.000225757583, -0.000720398675, 0.00072045275, -0.000239534784, -0.999999762, 0.000225584954, -1, 0.000239697489))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.251215041))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 0.0691184998, -0.314193964, 1.00000024, -5.92179131e-005, -1.29602695e-005, 5.92175056e-005, 1, -1.97537011e-005, 1.29613618e-005, 1.97527552e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000465393066, -0.45242691, 0.288010597, -0.999997497, 0.000725772523, 0.000227257871, -0.000725722872, -1.00000441, 0.000240282548, 0.000227538287, 0.000240116162, 1.00000548))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.45243454, 0.0367903709, 0.999997497, -0.000720366137, -0.00022235082, 0.000720317767, 1.00000441, -0.000239741683, 0.000222629576, 0.000239580055, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.376822561, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.207035065, -0.17373085, 0.999997497, -0.00072160142, -0.00022359869, 0.00073676958, 0.866149008, 0.499794632, -0.000166879006, -0.499795169, 0.866149962))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000465393066, 0.45243454, 0.0888251066, -0.999997497, 0.000725971942, 0.00021874324, 0.000725924212, 1.00000441, -0.000240576948, -0.000219023961, -0.000240416673, -1.00000548))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.502430081, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, 0.131931305, -0.502456903, 1.00000024, -5.92213473e-005, -1.04527553e-005, 5.92209981e-005, 1, -1.97814952e-005, 1.04538531e-005, 1.97806949e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00016784668, -0.559078217, 0.125410795, 1.00000036, -5.56436135e-006, 5.70751354e-006, 5.56418672e-006, 1.00000012, -6.32018782e-007, -5.70759948e-006, 6.31829607e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.251215011))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000114440918, -0.559070587, -0.0630459785, 1.00000036, -3.43425199e-009, 4.1882933e-007, 3.25962901e-009, 1.00000012, -5.07861841e-009, -4.18907319e-007, 4.86033969e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.326820374, 0.287996054, 0.999997497, -0.000720454438, -0.00022328952, 0.000720405835, 1.00000441, -0.000239729197, 0.000223568277, 0.000239566856, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.251215011, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.389625549, 0.162387133, 0.999997497, -0.00072036538, -0.000222872448, 0.000720316893, 1.00000441, -0.000239734727, 0.000223151204, 0.000239572721, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215011, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.0062828064, -0.125666976, 1.00000036, -5.82076609e-011, -1.0415279e-007, -5.82076609e-011, 1.00000012, 1.92085281e-009, 1.04069201e-007, -2.12457962e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.320299208, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000480651855, 0.235279083, -0.0481357574, 0.999997497, -0.000721339951, -0.000224050062, 0.000736768707, 0.866149008, 0.499794632, -0.000166357378, -0.499795169, 0.866149962))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000114440918, 0.182186127, 0.12538743, -1.00000036, 9.11590178e-006, 1.74332206e-006, -9.11578536e-006, -1.00000012, 9.46136424e-007, 1.74326954e-006, 9.45903594e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433101654, -1.0681597, -0.000518798828, -0.000720398675, -0.999999762, 0.000239697489, 0.000225757554, 0.000239534755, 0.999999881, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.449054718, 1.06155396, -0.000518798828, 0.000349763839, 0.706936777, -0.707275927, -0.00066903315, -0.707275689, -0.706936777, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327357, 0.195947766, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.25121507, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000106811523, -0.370616913, 0.125349045, 1.00000036, 7.15954229e-009, -5.11285134e-006, -7.33416528e-009, 1.00000012, 6.86413841e-008, 5.11277858e-006, -6.88451109e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.628037453))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.55904007, -0.628454924, 1.00000036, -3.20364488e-005, -2.10887192e-005, 3.20360414e-005, 1.00000012, -1.04982755e-005, 2.10889866e-005, 1.0497417e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822561, 0.249872148, 0.502430081))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.433403015, -0.188618064, 1.00000036, 1.11758709e-008, -6.992203e-006, -1.13504939e-008, 1.00000012, 9.36706783e-008, 6.9921266e-006, -9.38744051e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -1.00516951, 0.320278168, -1.00000024, 6.65510888e-005, 1.68400602e-005, 1.68413608e-005, 2.0647436e-005, 1, 6.65506232e-005, 1, -2.06487457e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.376822591, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, 0.0691642761, -1.00482428, 1.00000024, -5.9222104e-005, -9.93106914e-006, 5.92217548e-005, 1, -1.9788451e-005, 9.9321569e-006, 1.97876652e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.433422089, -0.753872871, 1.00000036, 8.68557254e-006, -5.82381335e-006, -8.68568895e-006, 1.00000012, 2.99772364e-006, 5.8237415e-006, -2.99786916e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, 0.32036972, -0.753610492, 1.00000024, -5.92212891e-005, -1.04526243e-005, 5.92209399e-005, 1, -1.97814952e-005, 1.04537221e-005, 1.97806949e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.376822591, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, 0.0691490173, -0.753605008, 1.00000024, -5.9221813e-005, -1.01400929e-005, 5.92214637e-005, 1, -1.97856716e-005, 1.01411933e-005, 1.97848713e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.25121507, 0.502430022))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -0.244979858, -0.188724279, 1.00000036, 1.11758709e-008, -6.99218845e-006, -1.13504939e-008, 1.00000012, 9.36706783e-008, 6.99211205e-006, -9.38744051e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.376822591, 0.376822561))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.86645508e-005, -0.433349609, -1.38218713, 1.00000024, -5.91896242e-005, -2.39263682e-005, 5.92111028e-005, 1, -1.96207548e-005, 2.39328383e-005, 1.96265173e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000114440918, -0.559082031, 0.251346588, -1.00000024, -2.39079236e-005, -1.38423338e-005, -2.39082146e-005, 1, 9.51347465e-006, 1.38421719e-005, 9.51398397e-006, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000144958496, 0.559082031, -0.251361251, -1.00000024, -1.84752862e-005, -6.47418165e-006, 1.84755772e-005, -1, -9.59941826e-006, -6.47407114e-006, -9.59972385e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, -0.43346405, 0.502572298, -1.00000036, 5.48030948e-006, -6.26139763e-006, 5.48013486e-006, 1.00000012, -2.82510882e-007, 6.26146448e-006, -2.82365363e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, 0.43346405, -0.502573967, -1.00000036, 1.09116663e-005, 1.524249e-006, -1.09114917e-005, -1.00000012, 1.91022991e-007, 1.52417022e-006, 1.90804712e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.25121507))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.0565261841, -1.06798422, 1.00000024, -5.9191836e-005, -2.70642977e-005, 5.91911376e-005, 1, -1.95882458e-005, 2.70653727e-005, 1.95864559e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.376822591, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000495910645, -0.625137329, -0.67111969, 0.999997497, -0.00072721875, -0.000194401277, 0.000651851704, 0.707277596, 0.706942856, -0.000376532524, -0.70694226, 0.70727849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687335))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.395663708))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, 0.144451141, -0.62521112, 1.00000024, -5.9185375e-005, -3.07253576e-005, 5.91846183e-005, 1, -1.95451576e-005, 3.07264309e-005, 1.95431639e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.376822591, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000106811523, -0.433422089, -1.63327813, 1.00000024, -5.919463e-005, -2.74966787e-005, 5.91939315e-005, 1, -1.95596949e-005, 2.74977483e-005, 1.95578905e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.376822591, 0.251215041))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.433334351, -1.0680908, 1.00000036, -4.52231034e-005, -2.28274512e-005, 4.52225795e-005, 1.00000012, -1.49286498e-005, 2.28280478e-005, 1.49274274e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.43334198, 1.75898731, 0.000129699707, -2.69297161e-005, -1.00000012, 1.91715808e-005, -6.51740556e-005, -1.91696308e-005, -1, 1.00000036, -2.69311131e-005, -6.51736191e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000129699707, -0.684700012, -1.50741279, 1.00000024, -6.4982567e-005, -1.10206747e-005, 6.50263974e-005, 1, -1.95248285e-005, 1.10326419e-005, 1.95386674e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.39233398e-005, -0.684638977, -1.63328862, 1.00000024, -5.919463e-005, -2.74966787e-005, 5.91939315e-005, 1, -1.95596949e-005, 2.74977483e-005, 1.95578905e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.251215041, 0.249872148, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.244930267, 1.75896168, 0.000129699707, -2.69391458e-005, -1.00000012, 1.92259758e-005, -5.96150421e-005, -1.9224186e-005, -1, 1.00000036, -2.69404845e-005, -5.96145801e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125732422, -0.684707642, -0.125760436, 1.00000036, -5.79509651e-006, 7.80390383e-006, 5.79492189e-006, 1.00000012, 1.72105501e-007, -7.80397568e-006, -1.72265572e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.502430081))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -0.307754517, -0.6913836, 1.00000024, -1.13646965e-005, -1.22719966e-005, 1.13644637e-005, 1, -3.66875611e-006, 1.22719612e-005, 3.66842141e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.125473022, -0.684703827, -0.125751019, 1.00000036, -5.79480547e-006, 7.69880899e-006, 5.79463085e-006, 1.00000012, 1.73502485e-007, -7.69889721e-006, -1.73648004e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 1.13046777))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.91821289e-005, -0.182117462, -1.13084769, 1.00000024, -5.91959688e-005, -2.53911767e-005, 5.91952703e-005, 1, -1.96104957e-005, 2.53922535e-005, 1.96088076e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, 0.502620816, 0.182220459, -1.00000036, 3.14078643e-005, 2.9162622e-005, -2.91631495e-005, -1.99905044e-005, -1, -3.14071076e-005, -1.00000012, 1.99916249e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, -0.502616286, -0.182235718, -1.00000036, 3.87764885e-005, 2.37294116e-005, 2.37300956e-005, 1.99014321e-005, 1, 3.87758482e-005, 1.00000012, -1.99025526e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125656128, -0.684650421, -0.251537204, 1.00000036, 1.50175765e-008, -8.97663449e-006, -1.51921995e-008, 1.00000012, 1.48662366e-007, 8.97656173e-006, -1.48866093e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.125549316, -0.684650421, -0.251536846, 1.00000036, 1.51921995e-008, -9.08120455e-006, -1.53668225e-008, 1.00000012, 1.5005935e-007, 9.08113088e-006, -1.50248525e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06815958, 0.433101654, -0.000518798828, -0.000225757482, -0.000239519795, -0.999999642, -0.000720398501, -0.999999523, 0.000239682529, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06155396, -0.449050903, -0.000518798828, -0.000669033267, -0.707275808, -0.706936955, -0.000349763926, -0.706936955, 0.707276046, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
BarrelA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Barrel",Vector3.new(0.251214981, 0.249872148, 0.376822591))
BarrelAweld=weld(m,handle,BarrelA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433361053, 1.76527333, 0.00016784668, -5.6413468e-005, -1, 1.91889267e-005, -7.36084621e-005, -1.91846048e-005, -1.00000024, 1.00000048, -5.64150396e-005, -7.36074362e-005))
mesh("CylinderMesh",BarrelA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
mesh("BlockMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))

handle2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","handle2",Vector3.new(0.249872148, 0.251215011, 0.249872148))
handle2weld=weld(m,Character["Left Arm"],handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, -0.36007309, -0.95643425, -0.99999994, -0.000225757583, -0.000720398675, 0.00072045275, -0.000239534784, -0.999999762, 0.000225584954, -1, 0.000239697489))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.251215041))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 0.0691146851, -0.314193964, 1.00000024, -5.92179131e-005, -1.29602695e-005, 5.92175056e-005, 1, -1.97537011e-005, 1.29613618e-005, 1.97527552e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000465393066, -0.452423096, 0.288010597, -0.999997497, 0.000725772523, 0.000227257871, -0.000725722872, -1.00000441, 0.000240282548, 0.000227538287, 0.000240116162, 1.00000548))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.452430725, 0.0367903709, 0.999997497, -0.000720366137, -0.00022235082, 0.000720317767, 1.00000441, -0.000239741683, 0.000222629576, 0.000239580055, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.376822561, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.20703125, -0.173728943, 0.999997497, -0.00072160142, -0.00022359869, 0.00073676958, 0.866149008, 0.499794632, -0.000166879006, -0.499795169, 0.866149962))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000465393066, 0.452430725, 0.0888252258, -0.999997497, 0.000725971942, 0.00021874324, 0.000725924212, 1.00000441, -0.000240576948, -0.000219023961, -0.000240416673, -1.00000548))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.502430081, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, 0.13192749, -0.502457142, 1.00000024, -5.92213473e-005, -1.04527553e-005, 5.92209981e-005, 1, -1.97814952e-005, 1.04538531e-005, 1.97806949e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00016784668, -0.559078217, 0.125410557, 1.00000036, -5.56436135e-006, 5.70751354e-006, 5.56418672e-006, 1.00000012, -6.32018782e-007, -5.70759948e-006, 6.31829607e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.251215011))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000114440918, -0.559074402, -0.0630459785, 1.00000036, -3.43425199e-009, 4.1882933e-007, 3.25962901e-009, 1.00000012, -5.07861841e-009, -4.18907319e-007, 4.86033969e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.326816559, 0.287996054, 0.999997497, -0.000720454438, -0.00022328952, 0.000720405835, 1.00000441, -0.000239729197, 0.000223568277, 0.000239566856, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.251215011, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.389621735, 0.162387133, 0.999997497, -0.00072036538, -0.000222872448, 0.000720316893, 1.00000441, -0.000239734727, 0.000223151204, 0.000239572721, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215011, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.006275177, -0.125666976, 1.00000036, -5.82076609e-011, -1.0415279e-007, -5.82076609e-011, 1.00000012, 1.92085281e-009, 1.04069201e-007, -2.12457962e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.320299208, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000480651855, 0.235275269, -0.0481338501, 0.999997497, -0.000721339951, -0.000224050062, 0.000736768707, 0.866149008, 0.499794632, -0.000166357378, -0.499795169, 0.866149962))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000114440918, 0.182186127, 0.12538743, -1.00000036, 9.11590178e-006, 1.74332206e-006, -9.11578536e-006, -1.00000012, 9.46136424e-007, 1.74326954e-006, 9.45903594e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433105469, -1.0681597, -0.000518798828, -0.000720398675, -0.999999762, 0.000239697489, 0.000225757554, 0.000239534755, 0.999999881, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.449050903, 1.06155396, -0.000518798828, 0.000349763839, 0.706936777, -0.707275927, -0.00066903315, -0.707275689, -0.706936777, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327357, 0.195947766, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.25121507, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000106811523, -0.370620728, 0.125349045, 1.00000036, 7.15954229e-009, -5.11285134e-006, -7.33416528e-009, 1.00000012, 6.86413841e-008, 5.11277858e-006, -6.88451109e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.628037453))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.559043884, -0.628455162, 1.00000036, -3.20364488e-005, -2.10887192e-005, 3.20360414e-005, 1.00000012, -1.04982755e-005, 2.10889866e-005, 1.0497417e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822561, 0.249872148, 0.502430081))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.43340683, -0.188618183, 1.00000036, 1.11758709e-008, -6.992203e-006, -1.13504939e-008, 1.00000012, 9.36706783e-008, 6.9921266e-006, -9.38744051e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -1.00516927, 0.320274353, -1.00000024, 6.65510888e-005, 1.68400602e-005, 1.68413608e-005, 2.0647436e-005, 1, 6.65506232e-005, 1, -2.06487457e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.376822591, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, 0.0691604614, -1.0048244, 1.00000024, -5.9222104e-005, -9.93106914e-006, 5.92217548e-005, 1, -1.9788451e-005, 9.9321569e-006, 1.97876652e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.433425903, -0.753872871, 1.00000036, 8.68557254e-006, -5.82381335e-006, -8.68568895e-006, 1.00000012, 2.99772364e-006, 5.8237415e-006, -2.99786916e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, 0.320365906, -0.75361073, 1.00000024, -5.92212891e-005, -1.04526243e-005, 5.92209399e-005, 1, -1.97814952e-005, 1.04537221e-005, 1.97806949e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.376822591, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, 0.0691452026, -0.753605008, 1.00000024, -5.9221813e-005, -1.01400929e-005, 5.92214637e-005, 1, -1.97856716e-005, 1.01411933e-005, 1.97848713e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.25121507, 0.502430022))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -0.244983673, -0.188724399, 1.00000036, 1.11758709e-008, -6.99218845e-006, -1.13504939e-008, 1.00000012, 9.36706783e-008, 6.99211205e-006, -9.38744051e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.376822591, 0.376822561))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.86645508e-005, -0.433353424, -1.38218737, 1.00000024, -5.91896242e-005, -2.39263682e-005, 5.92111028e-005, 1, -1.96207548e-005, 2.39328383e-005, 1.96265173e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000114440918, -0.559089661, 0.251346469, -1.00000024, -2.39079236e-005, -1.38423338e-005, -2.39082146e-005, 1, 9.51347465e-006, 1.38421719e-005, 9.51398397e-006, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000144958496, 0.559089661, -0.251361251, -1.00000024, -1.84752862e-005, -6.47418165e-006, 1.84755772e-005, -1, -9.59941826e-006, -6.47407114e-006, -9.59972385e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, -0.43347168, 0.502572179, -1.00000036, 5.48030948e-006, -6.26139763e-006, 5.48013486e-006, 1.00000012, -2.82510882e-007, 6.26146448e-006, -2.82365363e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, 0.433467865, -0.502573967, -1.00000036, 1.09116663e-005, 1.524249e-006, -1.09114917e-005, -1.00000012, 1.91022991e-007, 1.52417022e-006, 1.90804712e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.25121507))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.0565299988, -1.0679841, 1.00000024, -5.9191836e-005, -2.70642977e-005, 5.91911376e-005, 1, -1.95882458e-005, 2.70653727e-005, 1.95864559e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.376822591, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000495910645, -0.625141144, -0.67111969, 0.999997497, -0.00072721875, -0.000194401277, 0.000651851704, 0.707277596, 0.706942856, -0.000376532524, -0.70694226, 0.70727849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687335))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.395663708))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, 0.144447327, -0.62521112, 1.00000024, -5.9185375e-005, -3.07253576e-005, 5.91846183e-005, 1, -1.95451576e-005, 3.07264309e-005, 1.95431639e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.376822591, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000106811523, -0.433425903, -1.63327825, 1.00000024, -5.919463e-005, -2.74966787e-005, 5.91939315e-005, 1, -1.95596949e-005, 2.74977483e-005, 1.95578905e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.376822591, 0.251215041))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.433338165, -1.06809092, 1.00000036, -4.52231034e-005, -2.28274512e-005, 4.52225795e-005, 1.00000012, -1.49286498e-005, 2.28280478e-005, 1.49274274e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433349609, 1.75898743, 0.000129699707, -2.69297161e-005, -1.00000012, 1.91715808e-005, -6.51740556e-005, -1.91696308e-005, -1, 1.00000036, -2.69311131e-005, -6.51736191e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000129699707, -0.684707642, -1.50741291, 1.00000024, -6.4982567e-005, -1.10206747e-005, 6.50263974e-005, 1, -1.95248285e-005, 1.10326419e-005, 1.95386674e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.39233398e-005, -0.684642792, -1.63328874, 1.00000024, -5.919463e-005, -2.74966787e-005, 5.91939315e-005, 1, -1.95596949e-005, 2.74977483e-005, 1.95578905e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.251215041, 0.249872148, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.244937897, 1.75896156, 0.000129699707, -2.69391458e-005, -1.00000012, 1.92259758e-005, -5.96150421e-005, -1.9224186e-005, -1, 1.00000036, -2.69404845e-005, -5.96145801e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125732422, -0.684711456, -0.125760555, 1.00000036, -5.79509651e-006, 7.80390383e-006, 5.79492189e-006, 1.00000012, 1.72105501e-007, -7.80397568e-006, -1.72265572e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.502430081))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -0.307758331, -0.691383839, 1.00000024, -1.13646965e-005, -1.22719966e-005, 1.13644637e-005, 1, -3.66875611e-006, 1.22719612e-005, 3.66842141e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.125473022, -0.684707642, -0.125751138, 1.00000036, -5.79480547e-006, 7.69880899e-006, 5.79463085e-006, 1.00000012, 1.73502485e-007, -7.69889721e-006, -1.73648004e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 1.13046777))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.91821289e-005, -0.182121277, -1.13084757, 1.00000024, -5.91959688e-005, -2.53911767e-005, 5.91952703e-005, 1, -1.96104957e-005, 2.53922535e-005, 1.96088076e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, 0.502620697, 0.182224274, -1.00000036, 3.14078643e-005, 2.9162622e-005, -2.91631495e-005, -1.99905044e-005, -1, -3.14071076e-005, -1.00000012, 1.99916249e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, -0.502616286, -0.182239532, -1.00000036, 3.87764885e-005, 2.37294116e-005, 2.37300956e-005, 1.99014321e-005, 1, 3.87758482e-005, 1.00000012, -1.99025526e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125656128, -0.684658051, -0.251536965, 1.00000036, 1.50175765e-008, -8.97663449e-006, -1.51921995e-008, 1.00000012, 1.48662366e-007, 8.97656173e-006, -1.48866093e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.125549316, -0.684654236, -0.251536846, 1.00000036, 1.51921995e-008, -9.08120455e-006, -1.53668225e-008, 1.00000012, 1.5005935e-007, 9.08113088e-006, -1.50248525e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06815958, 0.433105469, -0.000518798828, -0.000225757482, -0.000239519795, -0.999999642, -0.000720398501, -0.999999523, 0.000239682529, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06155396, -0.449050903, -0.000518798828, -0.000669033267, -0.707275808, -0.706936955, -0.000349763926, -0.706936955, 0.707276046, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
BarrelB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Barrel",Vector3.new(0.251214981, 0.249872148, 0.376822591))
BarrelBweld=weld(m,handle2,BarrelB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433368683, 1.76527357, 0.00016784668, -5.6413468e-005, -1, 1.91889267e-005, -7.36084621e-005, -1.91846048e-005, -1.00000024, 1.00000048, -5.64150396e-005, -7.36074362e-005))
mesh("CylinderMesh",BarrelB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
mesh("BlockMesh",handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))

function Laser(Part,Dmg) 
sp = Part.Position 
dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(-1.57,0,0) 
local hit,pos = rayCast(sp,dirr.lookVector,500,Character) 
local las=Instance.new("Part",Character) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Light stone grey") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.15,0.7,0.15) 
end 
Part.Parent = nil 
end),las,msh) 
if pos ~= nil then 
local las2=Instance.new("Part",Character) 
las2.Anchored=true 
las2.Locked=true 
las2.CanCollide=false 
las2.TopSurface=0 
las2.BottomSurface=0 
las2.FormFactor = "Custom" 
las2.BrickColor=BrickColor.new("Light stone grey") 
las2.Size=Vector3.new(1,1,1) 
--las2.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
las2.CFrame=CFrame.new(pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las2) 
msh.MeshType = "Sphere"
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,0.1,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
--wait(10) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.5,0,0.5) 
end 
Part.Parent = nil 
end),las2,msh) 
end 
if hit ~= nil and pos ~= nil then 
if hit.Parent.className == "Hat" then 
hit:BreakJoints() 
hit.Velocity = Vector3.new(math.random(-5,5),20,math.random(-5,5)) 
end 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(Dmg) 
end 
end 
--[[if hit.className == "Part" and hit.Parent:findFirstChild("Humanoid") == nil then 
end ]] 
end 
end 

function attackone()
		attack=true
		for i=0,1,0.1 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
		end
		Laser(BarrelA,20)
			so("http://www.roblox.com/asset/?id=149155476",Torso,1,1) 
		for i=0,1,0.2 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(50),math.rad(50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(10),math.rad(-50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
		end
		attack=false
end

function attacktwo()
		attack=true
		for i=0,1,0.1 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(30),math.rad(50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
			--LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
			--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		end
		Laser(BarrelB,20)
			so("http://www.roblox.com/asset/?id=149155476",Torso,1,1) 
		for i=0,1,0.2 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(30),math.rad(50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(120),math.rad(-50),math.rad(-50)),.3)
			--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(50),math.rad(50)),.3)
			--LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(-10),math.rad(50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		end
		attack=false
	end

function attackthree()
	attack=true
	for i=0,1,0.1 do
			swait()
			RW.C0=clerp(RW.C0,cf(1,0.5,-1)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
            LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		end
	for i=0,1,0.2 do
			swait()
					Laser(BarrelA,20)
					Laser(BarrelB,20)
		so("http://www.roblox.com/asset/?id=149155476",Torso,1,1) 
			RW.C0=clerp(RW.C0,cf(1,0.5,-1)*angles(math.rad(100),math.rad(-10),math.rad(-50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(100),math.rad(-10),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(-10),math.rad(50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		end
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
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RW.C0=clerp(RW.C0,cf(1,0.5,-1)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RW.C0=clerp(RW.C0,cf(.8,0.5,-1)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(-10),math.rad(50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
end
end
end
end