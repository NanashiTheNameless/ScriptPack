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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.583199859, 1.12899995, 0.291599989))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.939432144, -0.0800132751, 0.07417202, 3.88524768e-011, -0.999999642, -3.21874995e-006, -4.39547563e-008, 3.21874859e-006, -0.999999762, 1, 3.88524733e-011, -4.39579679e-008))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.67403841, -1.36581421, -0.000153541565, 0.999998808, -9.49777586e-006, 5.19875016e-007, 9.49777677e-006, 0.999999285, 9.36602362e-007, -5.19882917e-007, -9.36585764e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.882089853, 0.444689989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800296545, -0.712223053, -0.00235366821, 0.999998808, -3.21874109e-006, 1.5134595e-011, 3.21874541e-006, 0.999999285, -5.05944158e-008, -1.4545953e-011, 5.06054008e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.882089734, 0.444689989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09152389, -0.712356567, -0.00235652924, 0.999998808, -3.21873927e-006, 1.6579807e-010, 3.21874381e-006, 0.999999285, -5.04028108e-008, -1.65181549e-010, 5.04137958e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.45799983, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30937195, -1.51124191, -0.000161170959, 0.999998808, -8.8703855e-006, 1.47351429e-007, 8.87038732e-006, 0.999999285, 5.79529001e-007, -1.47355948e-007, -5.79516268e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.437399924, 0.320760012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.364955187, -0.00199317932, -0.852100372, 0.999999523, -3.21874813e-006, -3.88364896e-011, -4.44827578e-011, -2.5929543e-005, 1, -3.21874995e-006, -0.999999762, -2.59295521e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.45799983, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.31080449, -0.092010498, 0.145636559, -0.999998808, 4.36551236e-005, -5.04220998e-006, -4.36550872e-005, -0.999999285, -5.39209395e-006, -5.04243917e-006, -5.39185885e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.437399983, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000127792358, -0.364368677, 0.928386688, -3.33928938e-007, -1.45202073e-008, 1, -0.999998212, 8.56905217e-007, -3.33930245e-007, -8.56913175e-007, -0.999998689, -1.45370116e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.45799983, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30979168, 0.0916519165, -0.000160217285, 0.999998808, -5.46405536e-005, 6.34407297e-006, 5.46404881e-005, 0.999999285, 7.63192747e-006, -6.34448179e-006, -7.63156459e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.02060008, 0.200000003, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09181273, -0.0534973145, -0.000155448914, 0.999998808, -4.4839212e-006, 1.47765633e-007, 4.4839253e-006, 0.999999285, 1.29804931e-007, -1.4776559e-007, -1.2979315e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.444689989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0914371, -1.22605515, -0.00235652924, 0.999998808, -3.21873904e-006, 1.65712805e-010, 3.21874336e-006, 0.999999285, -5.03972259e-008, -1.65110522e-010, 5.04082109e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.291599959, 0.200000003, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16585624, 0.191926956, 0.709686279, 0.999999464, -3.21874791e-006, -3.88365659e-011, -4.41632321e-011, -2.58302971e-005, 1, -3.21874973e-006, -0.999999702, -2.58303062e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.364499956, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.451979935, 0.291599959, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000159263611, -0.710388184, -1.16607833, -3.81471243e-011, 3.15851821e-007, -1, 3.21874904e-006, 0.999999225, 3.15858699e-007, 0.99999851, -3.21874404e-006, -3.87393208e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.45799983, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31019568, -1.51132965, 0.145642281, 0.999998808, -4.18915306e-006, -3.00069217e-007, 4.18915715e-006, 0.999999285, 5.48566788e-007, 3.00067001e-007, -5.4855667e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.451979935, 0.200000003, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000157356262, -0.929039001, -1.1660713, -3.82887853e-011, 3.15786281e-007, -1, 3.21874836e-006, 0.999998689, 3.15800435e-007, 0.999997497, -3.21873972e-006, -3.8597802e-011))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.291599959, 0.200000003, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16569793, -0.191437721, 0.709644318, 0.999997556, -3.21873995e-006, -3.85535423e-011, -4.39490319e-011, -2.58516266e-005, 1, -3.21874859e-006, -0.999998748, -2.5851672e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.364499956, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.583199918, 0.200000003, 0.422819972))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.418209076, -1.23842776, -0.000156402588, -3.24854614e-006, -0.999999285, 3.55812446e-008, 0.999998808, -3.24854159e-006, 1.65825187e-010, -1.65257683e-010, 3.55922296e-008, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.291599959, 0.291599959))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.26317215, -0.976104736, -0.22615242, 0.965924382, -0.258822083, -1.14146879e-008, 0.258822024, 0.965924621, 4.24500755e-008, 3.88524768e-011, -4.39547563e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.314927936, 0.065609917, 0.0393660143))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.291599959, 0.200000003, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.89302266, -0.0535697937, -0.000152587891, 0.999998808, -4.5850793e-006, 1.49880378e-007, 4.58508566e-006, 0.999999285, 1.56089101e-007, -1.49880719e-007, -1.56078116e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.38961792e-005, 0.490356445, -0.364199638, -2.99582325e-007, -6.02180917e-005, 1, -2.32034063e-006, -0.999999285, -6.02181462e-005, 0.999998808, -2.32035381e-006, 2.994434e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.291599959, 0.291599959))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.26317215, -0.976104736, 0.225384712, 0.965924382, -0.258822083, -1.14146879e-008, 0.258822024, 0.965924621, 4.24500755e-008, 3.88524768e-011, -4.39547563e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.314927936, 0.065609917, 0.0393660143))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.728999913, 1.16639984, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.9457587, -0.709777832, -0.000155448914, 0.999998808, -3.21873949e-006, 1.65954389e-010, 3.21874381e-006, 0.999999285, -5.04691613e-008, -1.6533766e-010, 5.04801463e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.67437994, -0.0535125732, -0.000153541565, 0.999997854, -1.01730784e-005, 8.16774445e-007, 1.01730793e-005, 0.999998808, 9.45945544e-007, -8.16781551e-007, -9.459186e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.437399924, 0.291599989, 0.583199918))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.364617348, -0.0029964447, -0.855743408, 0.999998569, -1.34116942e-006, -3.47053671e-011, 2.32054653e-012, -2.59204589e-005, 1, -1.34118386e-006, -0.999999046, -2.59205281e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.583199859, 0.437399983, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392871857, 0.665061951, 9.53674316e-006, 0.707104027, -0.707108796, -3.11104422e-008, 0.707108617, 0.707104206, 3.10545616e-008, 3.95121678e-011, -4.39540919e-008, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.291599929, 0.291599989, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000177145004, 0.564125061, 9.53674316e-007, 0.999997616, -1.34116613e-006, -3.4560306e-011, 1.34118523e-006, 0.999998569, 1.4362957e-008, 3.7203407e-011, -1.43125121e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.451979935, 0.200000003, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000158309937, 0.491680145, -1.16609716, 3.83340928e-011, -3.2800807e-007, 1, -3.21874813e-006, -0.999998271, -3.28027653e-007, 0.999996603, -3.21873608e-006, -3.83994746e-011))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.437399983, 0.200000003, 0.291599959))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000143051147, -0.36475873, -0.709705353, -2.9810667e-007, -5.19605692e-008, -1, -0.999998808, 3.71047872e-006, 2.98106386e-007, 3.71048282e-006, 0.999999285, -5.19516234e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.45799983, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30999005, -0.0919189453, 0.145945549, 0.999997854, -4.86629979e-005, 5.66978451e-006, -4.86629287e-005, -0.999998808, -7.28117811e-006, 5.67012512e-006, 7.28087662e-006, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.444689989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800222874, -0.198246002, -0.00235366821, 0.999997854, -3.21873722e-006, 1.53904285e-011, 3.21874518e-006, 0.999998808, -5.05917228e-008, -1.44890983e-011, 5.06090956e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.45799983, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.31022596, -1.51136017, 0.145956039, -0.999997854, 3.53223049e-006, 2.70134734e-007, 3.53223777e-006, 0.999998808, -6.16106604e-007, -2.70137036e-007, -6.1612235e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.444689989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09143639, -0.19814682, -0.00235748291, 0.999997854, -3.21873517e-006, 1.6594022e-010, 3.21874313e-006, 0.999998808, -5.03940498e-008, -1.65039454e-010, 5.04114226e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.437399983, 0.291599929, 0.291599959))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.67572021e-005, 0.417419434, -0.437114239, -2.9943584e-007, -6.01886131e-005, 1, -2.32033972e-006, -0.999998808, -6.01887041e-005, 0.999997854, -2.32034927e-006, 2.99297568e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.437399924, 0.30618, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.364741802, -0.00200366974, -0.852409363, 0.999996662, -1.34116283e-006, -3.44241267e-011, 2.60720612e-012, -2.59189437e-005, 1, -1.34118636e-006, -0.999998093, -2.5919051e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000154495239, -0.861427307, 0.692502499, 3.78594031e-011, -3.55240161e-007, 1, -3.21874995e-006, -0.999999762, -3.55243458e-007, 0.999999523, -3.21874813e-006, -3.88613447e-011))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000155448914, -0.798744202, 0.892030716, 8.1022975e-008, -3.46195606e-007, 1, 0.258815795, -0.96592629, -3.5537272e-007, 0.965926051, 0.258815855, 1.13396368e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0015001297, 0.292566538, 1.15365219, 3.12335345e-007, -4.39539427e-008, 1, 0.999995768, -3.33794401e-006, -3.12338699e-007, 3.33794924e-006, 0.999996483, 4.39614602e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000155448914, -0.865684509, 0.446048737, -8.09472027e-008, -3.46194952e-007, 0.999999881, -0.258821905, -0.965924382, -3.55352569e-007, 0.965924144, -0.258821964, -1.14146737e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.583199978, 0.200000003, 0.422819972))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709770203, -1.23946881, -0.000160217285, -3.24852385e-006, -0.999992132, 3.55808609e-008, 0.999991179, -3.2485159e-006, 1.65914657e-010, -1.650627e-010, 3.55984895e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.583199918, 0.200000003, 0.422819972))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00143433, -1.23957133, -0.000152587891, -3.24854568e-006, -0.999998808, 3.55657761e-008, 0.999997854, -3.24853772e-006, 1.65882072e-010, -1.65044547e-010, 3.55831631e-008, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.291599929, 0.437399983, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.146161556, -0.782676697, -0.000150680542, 0.999998212, 5.22959454e-012, -1.09070107e-010, 2.95585778e-012, 0.999998689, -2.20695888e-008, 1.09791246e-010, 2.20860557e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.583199918, 0.437399983, 0.874799967))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00147629, 0.000156402588, -0.000279188156, -3.21875132e-006, -0.999998808, 7.32594145e-008, 4.02800493e-012, -7.32767944e-008, -1, 0.999997854, -3.21874359e-006, 5.03071543e-012))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.437399983, 0.451979935, 0.874799967))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00191640854, 0.000154495239, -1.01012421, 0.999997854, -3.12933344e-006, 2.96914529e-008, 2.96905522e-008, -3.59865062e-008, -1, 3.12934117e-006, 0.999998808, -3.59645895e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00150108337, -0.438556671, 1.15356827, -2.85820761e-007, 4.39538574e-008, -1, -0.99999553, 3.21873426e-006, 2.85824285e-007, 3.21873949e-006, 0.999996245, 4.39614496e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.291599959, 0.200000003, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.89220023, -1.36561584, -0.000156402588, 0.999996901, -5.73970283e-006, -1.51122748e-007, 5.73971147e-006, 0.999998331, 1.31626024e-007, 1.51122478e-007, -1.31602775e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.583199859, 0.728999913, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.291358232, -0.927932739, -0.000155448914, 0.999998689, -3.21874586e-006, 9.93332777e-011, 3.21875041e-006, 0.999999166, -4.29978506e-008, -9.8798629e-011, 4.30078941e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.728999913, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.58035278e-005, 0.198898315, -0.509926558, -2.99727873e-007, -6.02475266e-005, 1, -2.32034154e-006, -0.999998808, -6.02476175e-005, 0.999997854, -2.32035086e-006, 2.99589459e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.02060008, 0.200000003, 0.437399983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09126163, -1.36589813, -0.000156402588, 0.999997854, -4.4721055e-006, 1.4908322e-007, 4.47211232e-006, 0.999998808, 1.28626766e-007, -1.49082751e-007, -1.28608519e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000154495239, -1.36552811, -0.291260719, -2.99625952e-007, -8.25790323e-007, -1, 4.11713518e-006, 0.999998808, -8.25775203e-007, 0.999997854, -4.11712836e-006, -2.99622513e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.291599959, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000155448914, -1.43851089, -0.509871006, -2.99845482e-007, -8.26355517e-007, -1, 4.11713336e-006, 0.999998808, -8.26340283e-007, 0.999997854, -4.11712654e-006, -2.99841957e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 0.728999913))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.444689989))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800293684, -1.22616959, -0.00235462189, 0.999997854, -3.21873699e-006, 1.52767417e-011, 3.21874472e-006, 0.999998808, -5.05912112e-008, -1.44038349e-011, 5.0608584e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Barrel",Vector3.new(0.400000006, 0.200000003, 0.600000024))
Barrelweld=weld(m,handle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0258264542, -1.56056881, -0.719982147, 3.88524768e-011, -4.39547563e-008, 1, 0.999999523, -3.21874813e-006, -3.88524699e-011, 3.21874995e-006, 0.999999762, 4.39579679e-008))

Handle2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(1.01999998, 0.200000003, 1.01999998))
Handle2weld=weld(m,Character["Left Arm"],Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14440918e-005, 0.100007057, 3.33786011e-006, 3.57715635e-010, -2.95605749e-012, -1, -5.72838985e-008, 0.999996901, -3.06973262e-012, 1, 5.72847938e-008, 3.57715635e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0105714798, -0.00724029541, 0.72002697, -0.00227884948, -0.999994278, -3.14008695e-008, 0.999997258, -0.00227884273, -1.88338817e-007, 1.8826681e-007, -3.1829174e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.722000003, 0.525999904, 0.05400002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.800000012, 0.800000072))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.600066662, -0.506579161, 1.49494934, 1.88182682e-007, -3.42372061e-007, 1, -0.00156627304, -0.999992847, -3.42080369e-007, 0.999998808, -0.00156626385, -1.88718715e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(1.00000012, 0.240000024, 0.400000036))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.992839813, -0.600031376, -0.713233471, -0.999997497, 0.00225593429, 2.69224472e-007, -2.69153475e-007, 3.17754782e-008, -1, -0.00225594081, -0.999994516, -3.11690336e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(1.00000012, 0.240000024, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00487518311, -0.599974632, -0.0101013184, -1.00000715, 0.00170321832, 2.69357599e-007, -2.69303257e-007, 3.14816688e-008, -0.999999881, -0.00170322636, -1.00000143, -3.10243422e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(1.00000012, 0.240000024, 0.400000036))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.992839813, -0.600029945, 0.686819553, -0.999997497, 0.00225593429, 2.69224472e-007, -2.69153475e-007, 3.17754782e-008, -1, -0.00225594081, -0.999994516, -3.11690336e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.60000014, 1.4000001, 0.220000014))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.294834137, 0.00941085815, 0.600057125, 0.999999285, -0.0015829663, -1.88319888e-007, 0.0015829755, 0.999993324, -2.61565543e-008, 1.88360957e-007, 2.5859805e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00724411011, -0.0133445263, 0.72002697, -0.999997139, 0.00227879803, 1.88339342e-007, -0.00227880478, -0.999994159, -3.14003294e-008, 1.88267336e-007, -3.1828634e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.722000003, 0.525999904, 0.05400002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(1.60000014, 1.80000007, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.294578552, 0.00910449028, 0.600059032, 0.999998808, -0.00157502736, -1.88321337e-007, 0.00157503667, 0.999992847, -2.61099142e-008, 1.88362222e-007, 2.58145789e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.219999999, 0.600000024, 0.600000083))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600063324, -0.389781237, 1.39486694, -1.88033937e-007, 4.18434638e-007, -1, 0.00156614475, 0.999987364, 4.18147323e-007, 0.999999285, -0.00156612648, -1.88689157e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.800000012, 0.800000072))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600064754, -0.490182877, 1.49465942, -1.88085835e-007, 4.1837248e-007, -1, 0.00147422298, 0.999987543, 4.18102474e-007, 0.999999464, -0.00147420575, -1.88702529e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.219999999, 0.600000024, 0.600000083))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.600065231, -0.410286188, 1.39486694, 1.88056802e-007, -4.03845036e-007, 1, -0.00156614475, -0.999987364, -4.0355755e-007, 0.999999285, -0.00156612648, -1.88689171e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.79465866, 0.00978517532, 0.600064754, 0.999999464, -0.00147420575, -1.88344828e-007, 0.00147422298, 0.999987543, -2.61361475e-008, 1.88383041e-007, 2.58611337e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(1.00000012, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.00502396, -0.790920258, 0.600062847, 0.999999106, -0.00170235953, -1.88335619e-007, 0.00170237955, 0.999987185, -2.6221743e-008, 1.88379886e-007, 2.59036881e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.00000012, 0.800000072, 0.220000014))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.00543976, -0.291083574, 0.600053787, 0.999999225, -0.00163256016, -1.88321309e-007, 0.00163257925, 0.999987304, -2.62404622e-008, 1.88363799e-007, 2.59356483e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 1, 0.600000083))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.600045681, -0.390607357, 1.80615997, 2.48640987e-007, 3.55274381e-007, 0.999999881, 0.00125003362, 0.999989927, -3.55585257e-007, -1.00000167, 0.00125001976, 2.48197068e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.219999999, 0.400000036, 0.800000072))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600056171, -1.7054863, 0.290289164, 1.83715883e-007, 6.05534751e-008, -0.999999881, 1.00000477, -0.00163089298, 1.83613238e-007, -0.00163091009, -0.999993145, -6.08563582e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.800000072, 0.240000024, 0.600000024))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.69277954, -0.600026131, -0.0133347511, -0.999997377, 0.00227887253, 2.69257981e-007, -2.69186216e-007, 3.17775601e-008, -1, -0.00227887928, -0.999994397, -3.11648947e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.4000001, 0.220000014, 1.20000005))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.401924133, -0.600030422, -0.110830545, -0.999998093, 0.00197390979, 2.69301665e-007, -2.69240189e-007, 3.14088879e-008, -1, -0.0019739212, -0.999992132, -3.08790185e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000262, 0.200000048, 0.220000014))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.39399719, 0.0092022419, 0.600039959, 0.999999344, -0.00154708384, -1.88294081e-007, 0.001547102, 0.999987423, -2.61687525e-008, 1.88334241e-007, 2.58800839e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(1.60000014, 0.200000003, 1.4000001))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.502429962, -0.600062847, -0.211121082, -0.999997973, 0.00200980925, 2.69314768e-007, -2.69251899e-007, 3.15479625e-008, -1, -0.00200982112, -0.999992013, -3.10083941e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(1.00000012, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.60664368, 0.207199812, 0.601732731, 1.00000703, -0.00156512251, -1.88274043e-007, 0.00156513706, 0.999994993, -2.61905004e-008, 1.88313066e-007, 2.58985651e-008, 1))

function rayCast(Pos, Dir, Max, Ignore) -- Origin Position , Direction, MaxDistance , IgnoreDescendants 
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
function Laser(Part,Dmg) 
sp = Part.Position 
dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
local hit,pos = rayCast(sp,dirr.lookVector,500,Character) 
local las=Instance.new("Part",Character) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Toothpaste") 
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
las2.BrickColor=BrickColor.new("Toothpaste") 
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

FireSounds = {131179973}

function PlaySound(id, pitch, parent, volume)
if volume == nil then volume=tonumber(1) end
        epicsound = Instance.new("Sound")
        epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = volume
     epicsound.Pitch = pitch
  epicsound.Looped = false
  epicsound.Parent = parent
	 wait()
	 epicsound:Play()
	game:service'Debris':AddItem(epicsound, 8)
end

FireSound = function(part)
local shot=math.random(0.9, #FireSounds)
PlaySound(FireSounds[shot], 1, part)
end

function Blast()
	if attack==false then
		attack=true
		FireSound(Barrel)
        Laser(Barrel,20)
		for i=0,1,0.3 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(30),math.rad(30)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(-30)),.3)
		end
		attack=false
	end
end
function Blast2()
	if attack==false then
		attack=true
		for i=0,1,0.3 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(140),math.rad(30),math.rad(30)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(-30)),.3)
		end
		for i=0,1,0.3 do
			swait()
			FireSound(Barrel)
			  Laser(Barrel,20)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(10)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(-30)),.3)
		end
		attack=false
	end
end

function SpinBlast()
attack=true
for i=0,1,0.1 do
swait()
FireSound(Barrel)
Laser(Barrel,20)
RootJoint.C0=RootCF*euler(0,0,6.6*i)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(100),math.rad(30)),.3)
end
attack=false
end

function Spray()
attack=true
for i=0,1,0.1 do
swait()
handleweld.C0=cf(0,-0.5,0)*euler(0-10*i,0,0)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(140),math.rad(30),math.rad(30)),.3)
end
for i=0,1,0.1 do
swait()
FireSound(Barrel)
Laser(Barrel,20)
handleweld.C0=cf(0,0,0)*euler(0,0,0)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(30)),.3)
end
for i=0,1,0.1 do
swait()
FireSound(Barrel)
Laser(Barrel,20)
handleweld.C0=cf(0,0,0)*euler(0,0,0)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(30)),.3)
end
for i=0,1,0.1 do
swait()
FireSound(Barrel)
Laser(Barrel,20)
handleweld.C0=cf(0,0,0)*euler(0,0,0)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(30)),.3)
end
for i=0,1,0.1 do
swait()
FireSound(Barrel)
Laser(Barrel,20)
handleweld.C0=cf(0,0,0)*euler(0,0,0)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(0),math.rad(30)),.3)
end
attack=false
end


mouse.Button1Down:connect(function()
	if attack==false then	
	Blast()
		end
end)

Defending=false

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			Blast2()
		end
		elseif k=='r' then
		if attack==false then
			SpinBlast()
		end
		elseif k=='e' then
		if attack==false then
			Spray()
		end
		elseif k=='f' then
		if Defending==false then
			Defending=true
			attack=true
		elseif Defending==true then
			Defending=false
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
	handleweld.C0=cf(0,0,0)*euler(0,0,0)
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(-10),math.rad(0),math.rad(30)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-40)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
	handleweld.C0=cf(0,0,0)*euler(0,0,0)
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(10),math.rad(0),math.rad(30)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(-30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(10)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
handleweld.C0=cf(0,0,0)*euler(0,0,0)
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(30)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(10),math.rad(0),math.rad(30)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(100),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-30)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-5),math.rad(-25),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(5),math.rad(25),math.rad(-20)),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
end
end
if Defending==true then
	RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(30)),.5)
	Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
		LW.C0=clerp(LW.C0,cf(-0,0.6,-1.2)*euler(math.rad(90),math.rad(0),math.rad(120)),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-5),math.rad(-25),math.rad(20)),.3)
        RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
	end
end