Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Mouse=Player:GetMouse()
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
trispeed=.5
pathtrans=.7 
magix=false
pathcolor=BrickColor.new('White')
shoot=false
mon=Instance.new('Model',Character)
--game:service'Lighting'.TimeOfDay=24
--[[
sound=Instance.new('Sound',Character)
sound.SoundId='rbxassetid://190454307'--170825871 142360845 231392691 145556530 178571619 190454307
sound.Volume=1
sound.Pitch=1
sound.PlayOnRemove=false
sound.Looped=true
wait()
sound:play()]]

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

function prt(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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


function paart(formfactor,parent,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor 
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false 
	fp.Locked=true
	fp.BrickColor=brickcolor
	fp.Name=name
	fp.Size=size
	fp.Position=Torso.Position 
	NoOutline(fp)
	fp.Material="SmoothPlastic"
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

local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
	if num==0 or num==nil then
		game:service'RunService'.Stepped:wait(0)
	else
		for i=0,num do
			game:service'RunService'.Stepped:wait(0)
		end
	end
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
w1.BrickColor = pathcolor
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
w2.BrickColor = pathcolor
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

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
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
Mesh=Thing[1].Mesh
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

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(3,3,3))
	prt.Anchored=true
	prt.CFrame=cframe
	local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
	--http://www.roblox.com/asset/?id=4770560
	game:GetService("Debris"):AddItem(prt,2)
	CF=prt.CFrame
	coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
		for i=0,1,0.2 do
			wait()
			Part.CFrame=CF*cf(0,0,-0.4)
		end
		for i=0,1,delay do
			wait()
			--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
			Mesh.Scale=Mesh.Scale
		end
		for i=0,1,0.1 do
			wait()
			Part.Transparency=i
		end
		Part.Parent=nil
		return Part
	end),prt,msh,CF)
	return prt
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
	Part.Parent=nil
	return Part
	end),prt,msh)
	return prt
end

function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=false
	prt.CFrame=cframe
	msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	local wld=weld(prt,prt,Parent,cframe)
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
		for i=0,1,delay do
			wait()
			Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
			--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh,wld)
end

function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=false
	prt.CFrame=cframe
	msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
		for i=0,1,delay do
			wait()
			Weld.C0=euler(i*20,0,0)
			--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh,wld)
end

function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
			local prt2=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
			prt2.Anchored=true
			prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
			game:GetService("Debris"):AddItem(prt2,2)
			coroutine.resume(coroutine.create(function(Part,Mesh) 
				for i=0,1,0.1 do
					wait()
					Part.CFrame=Part.CFrame*cf(0,0.5,0)
				end
				Part.Parent=nil
			end),prt2,msh2)
		end
		for i=0,1,delay*2 do
			wait()
			Part.CFrame=Part.CFrame
			Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
		end
	Part.Parent=nil
	end),prt,msh)
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe*euler(x2,y2,z2)
	--"http://www.roblox.com/asset/?id=168892465"
	local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,0.03 do
			wait()
			Part.CFrame=Part.CFrame
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
		CF=Part.CFrame
		Numbb=0
		randnumb=math.random()/10
		rand1=math.random()/10
		for i=0,1,rand1 do
			wait()
			CF=CF*cf(0,math.random()/2,0)
			--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
			Part.CFrame=CF*euler(Numbb,0,0)
			Part.Transparency=i
			Numbb=Numbb+randnumb
		end
		Part.Parent=nil
	end),prt,CF,Numbb,randnumb)
end

function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame*euler(0,0.7,0)
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame*cf(0,y3/2,0)
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
	local prt=paart(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe*cf(x,y,z)
	msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
		local num=math.random()
		local num2=math.random(-3,2)+math.random()
		local numm=0
		for i=0,1,delay*2 do
			swait()
			Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
			Part.Transparency=i
			numm=numm+0.01
		end
		Part.Parent=nil
		Mesh.Parent=nil
	end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

function Cloak()
	so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
	Face.Parent=nil
	cloaked=true
	for _,v in pairs(Torso.Parent:children()) do
		if v.className=="Part" and v.Name~="HumanoidRootPart" then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.2 do
					wait()
					v.Transparency=i
				end
				v.Transparency=1
			end))
		end
		if v.className=="Hat" then
			hatp=v.Handle
			coroutine.resume(coroutine.create(function(derp) 
				for i=0,1,0.2 do
					wait()
					derp.Transparency=i
				end
				derp.Transparency=1
			end),hatp)
		end
	end
	for _,v in pairs(m:children()) do
		if v.className=="Part" then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.2 do
					wait()
					v.Transparency=i
				end
				v.Transparency=1
			end))
		end
	end
end

function UnCloak()
	so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
	Face.Parent=Head 
	cloaked=false
	for _,v in pairs(Torso.Parent:children()) do
		if v.className=="Part" and v.Name~="HumanoidRootPart" then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.1 do
					wait()
					v.Transparency=v.Transparency-0.1
				end
				v.Transparency=0
			end))
		end
		if v.className=="Hat" then
			hatp=v.Handle
			coroutine.resume(coroutine.create(function(derp) 
				for i=0,1,0.1 do
					wait()
					derp.Transparency=derp.Transparency-0.1
				end
				derp.Transparency=0
			end),hatp)
		end
	end
	for _,v in pairs(m:children()) do
		if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.1 do
					wait()
					v.Transparency=v.Transparency-0.1
				end
				v.Transparency=0
			end))
			v.Transparency=0
		end
	end
end
handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1.4000001, 0.200000003, 0.200000003))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154070854, 0.995601535, 0.000632286072, -0.00125485484, 0.00257133436, -0.999995947, 6.88316641e-006, 0.999996662, 0.00257132808, 0.999999285, -3.6564943e-006, -0.00125486846))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxA",Vector3.new(1.79999995, 2.4000001, 0.200000003))
HitboxAweld=weld(m,handle,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00170946121, -0.0965684652, -0.601927757, 0.999999881, -0.000561807537, 0.000275471248, 0.000561808934, 0.99999994, -4.76328069e-006, -0.000275468454, 4.91804258e-006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.800000072, 0.50999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602468491, -0.724547029, 0.242210865, 0.00042680779, -7.82173265e-006, -0.99999994, -0.000832682126, -0.999999821, 7.46633577e-006, -0.999999583, 0.000832678634, -0.000426814135))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.60279274, 0.495191097, 0.799488068, -0.00070699479, 4.96798862e-007, 0.999999881, -0.00145373261, -0.999999046, -5.30982788e-007, 0.999998748, -0.00145373226, 0.000706994964))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.800000072, 0.49999997))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602442741, -0.724509835, 0.25446558, -0.000412500987, 7.36253105e-006, 1, -0.000830772333, -0.999999821, 7.01983481e-006, 0.999999642, -0.000830769422, 0.000412507041))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.601718903, -1.59704423, 0.801092148, -0.000494460051, 6.93902348e-006, 0.99999994, 0.00101020024, 0.999999523, -6.43951716e-006, -0.999999404, 0.00101019721, -0.000494466804))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.60227108, -1.59592354, 0.798442364, 0.000617224199, -4.80521385e-006, -1, 0.00125885615, 0.999999344, -4.02821388e-006, 0.999999046, -0.00125885336, 0.000617229904))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(1, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00190782547, 0.0232970715, -0.601828575, 0.999999642, 0.000794240739, -0.000389426365, -0.000794241205, 0.999999821, -3.51965855e-006, 0.000389423221, 3.82895541e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.180000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601143837, 0.498566628, 0.79928875, 0.000771298422, 6.43939802e-006, -0.999999762, -0.00161833921, -0.999998748, -7.68761493e-006, -0.99999845, 0.00161834504, -0.000771286897))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1.60000002, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00112390518, -1.09656513, -0.601929665, 0.999999881, -0.000561807537, 0.000275471248, 0.000561808934, 0.99999994, -4.76328069e-006, -0.000275468454, 4.91804258e-006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000888347626, -1.19647253, -0.611891747, 0.999999583, -0.000899368082, 0.000440986711, 0.000899370061, 0.999999762, -4.0586242e-006, -0.000440982811, 4.4552321e-006, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600500584, -1.09640467, -0.201779366, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000306129456, -0.377037048, -0.601670265, 1, 0.000316517428, -0.000155193033, -0.000316518126, 1.00000012, -4.67931477e-006, 0.000155191519, 4.72843612e-006, 1.00000012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.180000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600498676, -0.196920753, -0.00151443481, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.599460602, -1.09671295, -0.201775551, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603309631, 0.79431057, 0.1997962, 0.000441341603, 1.01966566e-006, -1.00000012, -0.00148041546, -0.999999166, -1.67311498e-006, -0.999998808, 0.00148036098, -0.000441342418))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000072, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602658272, 0.895184875, 0.599769115, -0.000441067736, -1.06552829e-006, 0.999999821, -0.0014800647, -0.999999106, -1.78397886e-006, 0.999998987, -0.00148006517, 0.000441068551))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000072, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603645325, 0.895176172, 0.598275185, 0.000440955686, -1.06465241e-005, -0.999999523, -0.00366260204, -0.999993503, 9.09692517e-006, -0.999993205, 0.00366259739, -0.000441015174))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.599495411, -0.200006366, -8.58306885e-006, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602901459, 0.794560313, 0.699896336, 0.000277693267, -4.80270955e-006, -0.999999642, -0.000562646659, -0.999999702, 4.62737444e-006, -0.999999821, 0.000562646426, -0.000277680578))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601531029, -1.59454489, 0.704494476, 0.000275316415, -3.86594729e-006, -0.999999821, 0.00458068866, 0.999989569, -2.60450747e-006, 0.99998945, -0.0045806882, 0.000275375205))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.601531982, 0.794553995, 0.703288555, -0.00027771492, 3.93844584e-006, 0.999999464, -0.00458001066, -0.999989331, 2.68568306e-006, 0.999989212, -0.00458000973, 0.000277744257))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602655411, -1.49517691, 0.599338531, 0.000441020064, 1.03086927e-006, -1.00000012, 0.00148038764, 0.999999344, 1.68374265e-006, 0.999998987, -0.00148038741, 0.000441020762))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.60290432, -1.59455109, 0.701107025, -0.000275433296, 4.86323188e-006, 0.99999994, 0.000561969588, 0.99999994, -4.70864506e-006, -0.999999821, 0.000561968423, -0.000275420258))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000083, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602983475, 0.794746637, 0.200195313, -0.000441403419, -1.05526942e-006, 0.99999994, -0.00148058624, -0.999999166, -1.70904195e-006, 0.99999851, -0.00148053118, 0.000441275013))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603649139, -1.49516821, 0.597844124, -0.000440896314, 1.06115904e-005, 0.999999702, 0.00366227981, 0.999993742, -8.99657334e-006, -0.999993205, 0.00366227515, -0.000441015174))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602816582, -1.59496272, 0.399340153, 0.000441020064, 1.03086927e-006, -1.00000012, 0.00148038764, 0.999999344, 1.68374265e-006, 0.999998987, -0.00148038741, 0.000441020762))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603467941, -1.59409034, 0.400663376, -0.000440896198, -9.23162133e-007, 0.999999762, 0.00148090243, 0.999999344, 1.57590046e-006, -0.999998569, 0.00148090185, -0.000440932345))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))


handle2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","handle2",Vector3.new(1.4000001, 0.200000003, 0.200000003))
handle2weld=weld(m,Character["Left Arm"],handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00919055939, 0.995664835, 0.0114703178, 0.0012549758, 0.00257122959, 0.999995947, -6.8526133e-006, 0.999996662, -0.00257122354, -0.999999046, -3.62611718e-006, 0.00125494599))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxB",Vector3.new(1.79999995, 2.4000001, 0.200000003))
HitboxBweld=weld(m,handle2,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00170660019, -0.0965681076, -0.601927757, 0.999999642, -0.000561807072, 0.00027549779, 0.000561809167, 0.99999994, -4.76324203e-006, -0.00027543481, 4.91759874e-006, 0.999999702))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.800000072, 0.50999999))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602469921, -0.724547267, 0.242210865, 0.000426779152, -7.82130155e-006, -0.999999642, -0.000832682359, -0.999999821, 7.46649903e-006, -0.999999344, 0.000832678168, -0.000426910236))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.60279417, 0.495191097, 0.799487114, -0.000707134255, 4.96800908e-007, 0.999999523, -0.00145373296, -0.999999046, -5.30899797e-007, 0.999998569, -0.00145373214, 0.000706980878))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.800000072, 0.49999997))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602442265, -0.724509716, 0.254464626, -0.000412504945, 7.36218499e-006, 0.999999702, -0.000830772566, -0.999999821, 7.01985255e-006, 0.999999464, -0.00083076919, 0.000412620022))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.601716995, -1.59704447, 0.801092625, -0.000494611624, 6.93905622e-006, 0.999999583, 0.00101020071, 0.999999523, -6.43967132e-006, -0.999999344, 0.00101019721, -0.000494443404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602270603, -1.59592342, 0.79843998, 0.000617268961, -4.80497238e-006, -0.999999583, 0.00125885627, 0.999999344, -4.028072e-006, 0.999998927, -0.00125885347, 0.000617334503))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(1, 0.600000024, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0019068718, 0.0232973099, -0.601829529, 0.999999523, 0.000794241205, -0.000389327412, -0.000794240274, 0.999999821, -3.51985841e-006, 0.000389305991, 3.82890084e-006, 0.999999762))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.180000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Toothpaste","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601144314, 0.498567104, 0.799289227, 0.000771435793, 6.4394012e-006, -0.999999285, -0.00161833968, -0.999998748, -7.68757309e-006, -0.999998271, 0.0016183448, -0.000771280145))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.120000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1.60000002, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00112533569, -1.09656477, -0.601927757, 0.999999642, -0.000561807072, 0.00027549779, 0.000561809167, 0.99999994, -4.76324203e-006, -0.00027543481, 4.91759874e-006, 0.999999702))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000889778137, -1.19647264, -0.611890316, 0.999999464, -0.000899367849, 0.000441022159, 0.00089937041, 0.999999762, -4.05865558e-006, -0.00044113741, 4.45527257e-006, 0.999999464))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600500584, -1.09640455, -0.201779842, 1.00000012, -2.32830644e-010, -4.30736691e-008, -2.32830644e-010, 1.00000012, -2.45790943e-010, -4.30736691e-008, -2.45790943e-010, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000306606293, -0.377037287, -0.601670265, 0.999999762, 0.00031651766, -0.000155181624, -0.000316517428, 1.00000012, -4.67921154e-006, 0.000155075802, 4.72837655e-006, 0.999999821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.180000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600499153, -0.196920633, -0.00151586533, 1.00000012, -2.32830644e-010, -4.30736691e-008, -2.32830644e-010, 1.00000012, -2.45790943e-010, -4.30736691e-008, -2.45790943e-010, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.600000024))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.599459648, -1.09671283, -0.201775074, 1.00000012, -2.32830644e-010, -4.30736691e-008, -2.32830644e-010, 1.00000012, -2.45790943e-010, -4.30736691e-008, -2.45790943e-010, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603309631, 0.79431057, 0.19979763, 0.000441345328, 1.02001377e-006, -0.999999583, -0.0014804157, -0.999999166, -1.67312442e-006, -0.999998629, 0.00148036075, -0.000441501907))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000072, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602658272, 0.895184755, 0.599769115, -0.00044106209, -1.06590051e-006, 0.999999404, -0.00148006494, -0.999999106, -1.78377411e-006, 0.999998808, -0.00148006494, 0.000441099808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.800000072, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603645325, 0.895176172, 0.598274708, 0.000441031589, -1.06463622e-005, -0.999999106, -0.00366260204, -0.999993503, 9.0968615e-006, -0.999993086, 0.00366259739, -0.000441047887))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.59949255, -0.200006008, -8.10623169e-006, 1.00000012, -2.32830644e-010, -4.30736691e-008, -2.32830644e-010, 1.00000012, -2.45790943e-010, -4.30736691e-008, -2.45790943e-010, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.400000036))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602900505, 0.794560432, 0.699896812, 0.000277848565, -4.8027523e-006, -0.999999285, -0.000562647125, -0.999999702, 4.62732169e-006, -0.999999464, 0.000562645728, -0.000277688028))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601531029, -1.59454489, 0.704492569, 0.000275437254, -3.86590182e-006, -0.999999583, 0.00458068866, 0.999989569, -2.6046348e-006, 0.999989331, -0.00458068773, 0.000275452854))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.400000036))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.601531506, 0.794553995, 0.703287125, -0.000277835759, 3.93840037e-006, 0.999999225, -0.00458001066, -0.999989331, 2.68569465e-006, 0.999988854, -0.0045800088, 0.000277791754))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602654457, -1.49517679, 0.599338055, 0.000441032287, 1.03119532e-006, -0.999999523, 0.00148038787, 0.999999344, 1.68376937e-006, 0.999998808, -0.00148038717, 0.000441099808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602901459, -1.59455109, 0.701107502, -0.000275434693, 4.862879e-006, 0.999999583, 0.00056196982, 0.99999994, -4.70873238e-006, -0.999999642, 0.000561968191, -0.00027549779))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000083, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.602984428, 0.794746876, 0.200193405, -0.000441434851, -1.05554568e-006, 0.999999642, -0.00148058624, -0.999999166, -1.70890337e-006, 0.999998391, -0.00148053118, 0.000441248238))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603648663, -1.49516833, 0.597844124, -0.00044106174, 1.06116586e-005, 0.999999285, 0.00366228004, 0.999993742, -8.99647875e-006, -0.999993086, 0.00366227515, -0.000441047887))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.602815151, -1.59496284, 0.399338245, 0.000441032287, 1.03119532e-006, -0.999999523, 0.00148038787, 0.999999344, 1.68376937e-006, 0.999998808, -0.00148038717, 0.000441099808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603466988, -1.59408998, 0.40066433, -0.000441091426, -9.23018206e-007, 0.999999285, 0.00148090266, 0.999999344, 1.57579962e-006, -0.99999845, 0.00148090185, -0.000441129145))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Navy blue"))
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

function PlaySound(id, pitch, parent, volume)
if volume == nil then volume=tonumber(1) end
        epicsound = Instance.new("Sound")
        epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = volume
     epicsound.Pitch = pitch
  epicsound.Looped = false
  epicsound.Parent = parent
  sbu = epicsound:Clone()
  sbu.Parent = Storage
	 wait()
	 epicsound:Play()
	game:service'Debris':AddItem(epicsound, 8)
end

Slashes = {200633108, 200633148, 200633196,200633281}

Slash = function(part)
local shot=math.random(1, #Slashes)
PlaySound(Slashes[shot], 1, part)
end

local Shockwave = function()
    local Wave = Instance.new("Part", m)
    Wave.Name = "Shockwave"
    Wave.BrickColor = BrickColor.new("Black")
    Wave.Size = Vector3.new(1, 1, 1)
    Wave.Shape = "Ball"
    Wave.CanCollide = false
    Wave.Anchored = true
    Wave.TopSurface = 0
    Wave.BottomSurface = 0
    Wave.Touched:connect(function(hit)
        if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
            if hit.Parent.Name ~= Character.Name and hit.Parent.Parent~=mon then
                hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 5
                hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
            end
        end
    end)
    Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
    Delay(0, function()
           for i = 1, 38, 1 do
                Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                Wave.CFrame = Torso.CFrame
                local t = i / 38
                Wave.Transparency = t
                wait()
            end
        Wave:Destroy()
    end)
    Delay(0, function()
        while wait() do
            if Wave ~= nil then
                Wave.CFrame = Wave.CFrame
            else
                break
            end
        end
    end)
end

hits={144650218,135436482,183345423,200561185}

function atktype(s,e)
	coroutine.resume(coroutine.create(function()
		attacktype = e
		wait(.5)
		attacktype = s
	end))
end

mouse.Button1Down:connect(function()
        if attack==false and attacktype==1 then
                attacktype=2
                attackone()
        elseif attack==false and attacktype==2 then
                attacktype=1
                attacktwo()
        end
end)

mouse.KeyDown:connect(function(k)
	if k=='e' and attack==false then
		kick()
	elseif k=='r' and attack==false then
		rapunch()
	end
end)

function kick()
	attack=true
	Humanoid.WalkSpeed=0
	so("http://roblox.com/asset/?id=200632136",RightLeg,1,1) 
	con1=RightLeg.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(30,50),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(-25),math.rad(0),math.rad(0)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25),math.rad(0),math.rad(0)),.37)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(65),math.rad(0),math.rad(-35)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-65),math.rad(0),math.rad(-25)),.37)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(125)),.37)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(25)),.37)
	end
	attack=false
	Humanoid.WalkSpeed=16
	con1:disconnect()
end

function attackone()
	attack=true
	con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,2),"Normal",RootPart,.2,1) end) 
	--[[for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.37)
		RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(90),math.rad(90),math.rad(0))*angles(math.rad(45),math.rad(0),math.rad(0)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(-90),math.rad(0))*angles(math.rad(-55),math.rad(0),math.rad(0)),.37)
		RH.C0=clerp(RH.C0,cf(.8,-1,-.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(45),math.rad(0)),.37)
		LH.C0=clerp(LH.C0,cf(-.8,-1,.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(45),math.rad(0)),.37)
	end
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(75)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-75)),.37)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(55),math.rad(90),math.rad(0))*angles(math.rad(-25),math.rad(0),math.rad(0)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-15),math.rad(0),math.rad(-15))*angles(math.rad(0),math.rad(0),math.rad(0)),.37)
		RH.C0=clerp(RH.C0,cf(.5,-1,.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(-75),math.rad(0)),.37)
		LH.C0=clerp(LH.C0,cf(-.5,-1,-.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(-75),math.rad(0)),.37)
	end]]
	Torso.Velocity=Head.CFrame.lookVector*50
    Slash(HitboxA)
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(85)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-85)),.37)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(90),math.rad(0))*angles(math.rad(-75),math.rad(0),math.rad(0)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-15),math.rad(0),math.rad(-15))*angles(math.rad(0),math.rad(0),math.rad(0)),.37)
		RH.C0=clerp(RH.C0,cf(.5,-1,.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(-85),math.rad(0)),.37)
		LH.C0=clerp(LH.C0,cf(-.5,-1,-.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(-85),math.rad(0)),.37)
	end
	attack=false
	con1:disconnect()
end

function attacktwo()
	attack=true
	con1=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,2),"Normal",RootPart,.2,1) end) 
	Slash(HitboxB)
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-65)),.37)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(65)),.37)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(15),math.rad(0),math.rad(15))*angles(math.rad(0),math.rad(0),math.rad(0)),.37)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(75),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-45)),.37)
		RH.C0=clerp(RH.C0,cf(.7,-1,-.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(65),math.rad(0)),.37)
		LH.C0=clerp(LH.C0,cf(-.7,-1,.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(65),math.rad(0)),.37)
	end
	attack=false
	con1:disconnect()
end

function rapunch()
	attack=true
	con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,2),"Normal",RootPart,.2,1) end) 
	con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,2),"Normal",RootPart,.2,1) end) 
	for i=0,10 do
		Slash(HitboxA)
		for i=0,.4,0.1 do
			swait()
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-65)),.7)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(65)),.7)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(15),math.rad(0),math.rad(15))*angles(math.rad(0),math.rad(0),math.rad(0)),.7)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(75),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-45)),.7)
			RH.C0=clerp(RH.C0,cf(.7,-1,-.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(65),math.rad(0)),.7)
			LH.C0=clerp(LH.C0,cf(-.7,-1,.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(65),math.rad(0)),.7)
		end
		Slash(HitboxB)
		for i=0,.4,0.1 do
			swait()
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(85)),.7)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-85)),.7)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(90),math.rad(0))*angles(math.rad(-75),math.rad(0),math.rad(0)),.7)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-15),math.rad(0),math.rad(-15))*angles(math.rad(0),math.rad(0),math.rad(0)),.7)
			RH.C0=clerp(RH.C0,cf(.5,-1,.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(-85),math.rad(0)),.7)
			LH.C0=clerp(LH.C0,cf(-.5,-1,-.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(-85),math.rad(0)),.7)
		end
	end
	attack=false
	con1:disconnect()
	con2:disconnect()
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
				Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
				Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5),.3)
				RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
				LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
			Anim="Fall"
			if attack==false then
				Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
				Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2),.3)
				RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
				LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
			end
		elseif torvel<1 and hitfloor~=nil then
			Anim="Idle"
			if attack==false then
				--[[]]
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.2)*angles(math.rad(15),math.rad(0),math.rad(10)),.3)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-15),math.rad(0),math.rad(-15)),.3)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(75),math.rad(-5)),.3)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(-75),math.rad(5)),.3)
				RH.C0=clerp(RH.C0,cf(1,-.7,-.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(-15),math.rad(15)),.3)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(-15),math.rad(0)),.3)
			end
		elseif torvel>2 and torvel<22 and hitfloor~=nil then
			Anim="Walk"
			if attack==false then
				change=3
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(15),math.rad(0),math.rad(0)),.2)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-35),math.rad(0),math.rad(0)),.2)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-35),math.rad(0),math.rad(0)),.2)
				RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
			end
		elseif torvel>=22 and hitfloor~=nil then
			Anim="Run"
			if attack==false then
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
				RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			end
		end
	end
end
