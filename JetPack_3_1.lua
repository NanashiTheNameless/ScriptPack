
plr=game.Players.LocalPlayer
uis=game:GetService("UserInputService")
repeat wait() until plr.Character
char=plr.Character
torso=char:WaitForChild"Torso"
humanoid=char:WaitForChild"Humanoid"
tool=Instance.new("HopperBin",plr.Backpack)
tool.Name="Yunopack"

Anim=nil
attacking=false
equipped=false

LS=torso["Left Shoulder"]
LH=torso["Left Hip"]
RS=torso["Right Shoulder"]
RH=torso["Right Hip"]
Neck=torso.Neck
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=CFrame.new(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=CFrame.new(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=CFrame.new(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=char.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=CFrame.Angles(-1.57,0,3.14)
RSH, LSH=nil, nil
RW, LW=Instance.new("Weld"), Instance.new("Weld")
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
RSH=char.Torso["Right Shoulder"]
LSH=char.Torso["Left Shoulder"]
RSH.Parent=nil
LSH.Parent=nil
RW.Name="Right Shoulder"
RW.Part0=char.Torso
RW.C0=CFrame.new(1.5, 0.5, 0) 
RW.C1=CFrame.new(0, 0.5, 0)
RW.Part1=char["Right Arm"]
RW.Parent=char.Torso
LW.Name="Left Shoulder"
LW.Part0=char.Torso
LW.C0=CFrame.new(-1.5, 0.5, 0)
LW.C1=CFrame.new(0, 0.5, 0)
LW.Part1=char["Left Arm"]
LW.Parent=char.Torso
Effects=Instance.new("Model",char)
Effects.Name="Effects"

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

function newPart(parent,brickcolor,transparency,anchored,cancollide,size,name)
local fp=Instance.new("Part")
fp.Parent=parent
fp.Transparency=transparency
fp.Anchored=anchored
fp.CanCollide=cancollide
fp.Locked=true
fp.BrickColor=BrickColor.new(brickcolor)
fp.Name=name
fp.Size=size
fp.Position=torso.Position
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp
end
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=Instance.new(Mesh)
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid then
mesh.MeshId=meshid
end
end
if offset then
mesh.Offset=offset
end
mesh.Scale=scale
return mesh
end

function blockmesh(brickcolor,transparency,size,scale,anchored,cancollide)
	local p=newPart(Effects,brickcolor,transparency,anchored,cancollide,size,"BlockEffect")
	local m=mesh("BlockMesh",p,nil,nil,nil,scale)
	game.Debris:AddItem(p,5)
	return p,m
end
 
function weld(parent,part0,part1,c0)
local weld=Instance.new("Weld")
weld.Parent=parent
weld.Part0=part0
weld.Part1=part1
weld.C0=c0
return weld
end


function newWing(name)
	local wing=Instance.new("Model",tool)
	wing.Name=name
	local stick=newPart(wing,"Really black",0,false,false,Vector3.new(0.2,0.2,0.2),"WingStick")
	local smesh=mesh("BlockMesh",stick,nil,nil,nil,Vector3.new(0.65, 1.1, 13.05))
	local neon1=newPart(wing,"Toothpaste",0,false,false,Vector3.new(0.2,0.2,0.2),"Block")
	local mesh1=mesh("BlockMesh",neon1,nil,nil,nil,Vector3.new(0.75, 0.8, 0.75))
	local neon2=newPart(wing,"Toothpaste",0.5,false,false,Vector3.new(0.2,0.2,0.2),"Block")
	local mesh2=mesh("BlockMesh",neon1,nil,nil,nil,Vector3.new(0.8, 0.9, 0.85))
	local hitbox=newPart(wing,"Really black",1,false,false,Vector3.new(0.6,0.6,3.1),"Hitbox")

	neon1.Material="Neon"
	neon2.Material="Neon"	
	
	weld(stick,neon1,stick,CFrame.new(0,0,1.1))
	weld(stick,neon2,stick,CFrame.new(0,0,1.1))
	weld(stick,hitbox,stick,CFrame.new(0,0,.2))

	return wing
end

function newThrust(parent,name)
	local thrust=newPart(parent,"Really black",0,false,false,Vector3.new(0.2,0.2,0.2),name)
	mesh("CylinderMesh",thrust,nil,nil,nil,Vector3.new(0.85, 0.9, 1))
	local t1=newPart(parent,"Smoky grey",0,false,false,Vector3.new(0.2,0.2,0.2),"Cylinder")
	mesh("CylinderMesh",t1,nil,nil,nil,Vector3.new(1,1,1))
	local t2=newPart(parent,"Smoky grey",0,false,false,Vector3.new(0.2,0.2,0.2),"Cylinder")
	mesh("CylinderMesh",t2,nil,nil,nil,Vector3.new(1.4, 0.55, 1.15))
	
	weld(thrust,t1,thrust,CFrame.new(0,-0.025,0))	
	weld(thrust,t2,thrust,CFrame.new(0,-0.1,0))
	
	return thrust
end

function newMod(parent,name)
	
	
	
end

local weapon=Instance.new("Model",char)
local base=newPart(weapon,"Really black",0,false,false,Vector3.new(0.38,1.65,0.56),"Base")
mesh("BlockMesh",base,nil,nil,nil,Vector3.new(1,1,1))
local bweld=Instance.new("Weld",char["Torso"])
bweld.Part0=base
bweld.Part1=char["Torso"]
bweld.C0=CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,-.2,-.7)
local b1=newPart(weapon,"Smoky grey",0,false,false,Vector3.new(0.46, 1.71, 0.51),"Block")
mesh("BlockMesh",b1,nil,nil,nil,Vector3.new(1,1,1))
weld(base,b1,base,CFrame.new(0,0,-0.45)*CFrame.Angles(0,0,0))
local b2=newPart(weapon,"Smoky grey",0,false,false,Vector3.new(0.46, 1.71, 0.51),"Block")
mesh("BlockMesh",b2,nil,nil,nil,Vector3.new(1,1,1))
weld(base,b2,base,CFrame.new(0,0,0.45)*CFrame.Angles(0,0,0))

b3=newPart(weapon,"Smoky grey",0,false,false,Vector3.new(0.46, 0.75, 0.24),"Block")
mesh("BlockMesh",b1,nil,nil,nil,Vector3.new(1,1,1))
weld(base,b3,base,CFrame.new(0,-0.48,0)*CFrame.Angles(0,0,0))
b4=newPart(weapon,"Smoky grey",0,false,false,Vector3.new(0.2, 0.2, 0.2),"Block")
mesh("BlockMesh",b4,nil,nil,nil,Vector3.new(2.3, 0.65, 0.5))
weld(b3,b4,b3,CFrame.new(0,-.31,0.15)*CFrame.Angles(0,0,0))
b5=newPart(weapon,"Smoky grey",0,false,false,Vector3.new(0.2, 0.2, 0.2),"Block")
mesh("BlockMesh",b5,nil,nil,nil,Vector3.new(2.3, 0.65, 0.5))
weld(b3,b5,b3,CFrame.new(0,-.31,-0.15)*CFrame.Angles(0,0,0))

b6=newPart(weapon,"Smoky grey",0,false,false,Vector3.new(0.2, 0.2, 0.2),"Wedge")
mesh("SpecialMesh",b6,"Wedge",nil,nil,Vector3.new(2.3, 0.3, 2))
weld(b4,b6,b4,CFrame.new(0,0,.26)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)))
b7=newPart(weapon,"Smoky grey",0,false,false,Vector3.new(0.2, 0.2, 0.2),"Wedge")
mesh("SpecialMesh",b7,"Wedge",nil,nil,Vector3.new(2.3, 0.3, 2))
weld(b5,b7,b5,CFrame.new(0,0,.26)*CFrame.Angles(math.rad(90),math.rad(180),math.rad(0)))

local wing1=newWing("Wing1")
local wing2=newWing("Wing2")
local wing3=newWing("Wing3")
local wing4=newWing("Wing4")
local wing5=newWing("Wing5")
local wing6=newWing("Wing6")

local stick1=wing1.WingStick
local stick2=wing2.WingStick
local stick3=wing3.WingStick
local stick4=wing4.WingStick
local stick5=wing5.WingStick
local stick6=wing6.WingStick
local thrust1=newThrust(weapon,"Thrust1")
local thrust2=newThrust(weapon,"Thrust2")
local thrust3=newThrust(weapon,"Thrust3")
local thrust4=newThrust(weapon,"Thrust4")

weld(base,thrust1,base,CFrame.new(-.1,1,-0.45))
weld(base,thrust2,base,CFrame.new(.1,1,-0.45))
weld(base,thrust3,base,CFrame.new(-.1,1,0.45))
weld(base,thrust4,base,CFrame.new(.1,1,0.45))

local whit1=wing1.Hitbox
local whit2=wing2.Hitbox
local whit3=wing3.Hitbox
local whit4=wing4.Hitbox
local whit5=wing5.Hitbox
local whit6=wing6.Hitbox

local wings={wing1,wing2,wing3,wing4,wing5,wing6}
local neonbricks={}
for _,v in pairs(weapon:GetChildren()) do
	if v:IsA"BasePart" then
		if v.BrickColor==BrickColor.new("Toothpaste") then
			table.insert(neonbricks,v)
		end
	end
end
for _,v in pairs(wing1:GetChildren()) do if v.Name=="Block" then table.insert(neonbricks,v) end end
for _,v in pairs(wing2:GetChildren()) do if v.Name=="Block" then table.insert(neonbricks,v) end end
for _,v in pairs(wing3:GetChildren()) do if v.Name=="Block" then table.insert(neonbricks,v) end end
for _,v in pairs(wing4:GetChildren()) do if v.Name=="Block" then table.insert(neonbricks,v) end end
for _,v in pairs(wing5:GetChildren()) do if v.Name=="Block" then table.insert(neonbricks,v) end end
for _,v in pairs(wing6:GetChildren()) do if v.Name=="Block" then table.insert(neonbricks,v) end end

repeat wait() until char:WaitForChild"Body Colors"
for _,v in pairs(neonbricks) do
	v.BrickColor=BrickColor.new("Cocoa")
end

local bweld=Instance.new("Weld",char["Torso"])
bweld.Part0=base
bweld.Part1=char["Torso"]
bweld.C0=CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,-.2,-.7)

local w1weld=Instance.new("Weld",char["Torso"])
w1weld.Part0=stick1
w1weld.Part1=char["Torso"]
w1weld.C0=CFrame.Angles(0,math.rad(-90),math.rad(25))*CFrame.new(2.4,-.2-1.2,-.7)

local w2weld=Instance.new("Weld",char["Torso"])
w2weld.Part0=stick2
w2weld.Part1=char["Torso"]
w2weld.C0=CFrame.Angles(0,math.rad(90),math.rad(-25))*CFrame.new(-2.4,-.2-1.2,-.7)

local w3weld=Instance.new("Weld",char["Torso"])
w3weld.Part0=stick3
w3weld.Part1=char["Torso"]
w3weld.C0=CFrame.Angles(0,math.rad(-90),0)*CFrame.new(2.5,-.2,-.7)

local w4weld=Instance.new("Weld",char["Torso"])
w4weld.Part0=stick4
w4weld.Part1=char["Torso"]
w4weld.C0=CFrame.Angles(0,math.rad(90),0)*CFrame.new(-2.5,-.2,-.7)

local w5weld=Instance.new("Weld",char["Torso"])
w5weld.Part0=stick5
w5weld.Part1=char["Torso"]
w5weld.C0=CFrame.Angles(0,math.rad(-90),math.rad(-25))*CFrame.new(2.4,-.2+1.2,-.7)

local w6weld=Instance.new("Weld",char["Torso"])
w6weld.Part0=stick6
w6weld.Part1=char["Torso"]
w6weld.C0=CFrame.Angles(0,math.rad(90),math.rad(25))*CFrame.new(-2.4,-.2+1.2,-.7)

local anglemult=20
w1c0=CFrame.Angles(0,math.rad(-90),math.rad(anglemult))*CFrame.new(2.4,-.2-1.2,-.7)
w2c0=CFrame.Angles(0,math.rad(90),math.rad(-anglemult))*CFrame.new(-2.4,-.2-1.2,-.7)
w3c0=CFrame.Angles(0,math.rad(-90),0)*CFrame.new(2.5,-.2,-.7)
w4c0=CFrame.Angles(0,math.rad(90),0)*CFrame.new(-2.5,-.2,-.7)
w5c0=CFrame.Angles(0,math.rad(-90),math.rad(-anglemult))*CFrame.new(2.4,-.2+1.2,-.7)
w6c0=CFrame.Angles(0,math.rad(90),math.rad(anglemult))*CFrame.new(-2.4,-.2+1.2,-.7)

dw1c0=CFrame.Angles(0,math.rad(-90),math.rad(0))*CFrame.new(2.4,-.2-1.2,-.7)
dw2c0=CFrame.Angles(0,math.rad(90),math.rad(-0))*CFrame.new(-2.4,-.2-1.2,-.7)
dw3c0=CFrame.Angles(0,math.rad(-90),0)*CFrame.new(2.5,-.2,-.7)
dw4c0=CFrame.Angles(0,math.rad(90),0)*CFrame.new(-2.5,-.2,-.7)
dw5c0=CFrame.Angles(0,math.rad(-90),math.rad(-0))*CFrame.new(2.4,-.2+1.2,-.7)
dw6c0=CFrame.Angles(0,math.rad(90),math.rad(0))*CFrame.new(-2.4,-.2+1.2,-.7)

weapon.Parent=char
for _,v in pairs(wings) do
	v.Parent=char
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

randomangles=function(m)
local rangle=math.rad((math.random()-0.5)*180)
if m then
if m=="raw" then
return rangle
else
return CFrame.new(rangle,rangle,rangle)
end
end
end

function rayCast(Pos, Dir, Max, Ignore) 
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

function thread(f)
	coroutine.resume(coroutine.create(f))
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

function attack1()
for i=0,1,0.05 do swait()
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),0,math.rad(90)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0.1,0,-math.rad(90)),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(80)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.2,0.5,-.4)*CFrame.Angles(math.rad(0),math.rad(40),math.rad(95)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(0,math.rad(35),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(0,math.rad(30),0),.2)	
w1weld.C0=clerp(w1weld.C0,w1c0*CFrame.Angles(math.rad(45),0,math.rad(0)),.2)
w2weld.C0=clerp(w2weld.C0,w2c0*CFrame.new(-2,0,0)*CFrame.Angles(0,0,math.rad(-15))*CFrame.Angles(0,math.rad(-45),0),.2)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.Angles(math.rad(45),0,math.rad(0)),.2)
w4weld.C0=clerp(w4weld.C0,w4c0*CFrame.new(-2,0,0)*CFrame.Angles(0,0,math.rad(-15))*CFrame.Angles(0,math.rad(-45),0),.2)
w5weld.C0=clerp(w5weld.C0,w5c0*CFrame.Angles(math.rad(45),0,math.rad(0)),.2)
w6weld.C0=clerp(w6weld.C0,w6c0*CFrame.new(-2,0,0)*CFrame.Angles(0,0,math.rad(-15))*CFrame.Angles(0,math.rad(-45),0),.2)
end

local hitboxTouch1=whit2.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack1.1"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack1.1"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)

local hitboxTouch2=whit4.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack1.2"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack1.2"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)

local hitboxTouch3=whit6.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack1.3"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack1.3"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)
	
for i=0,1.1,0.05 do swait()
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),0,-math.rad(90)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0.1,0,math.rad(90)),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.2,0.5,-.4)*CFrame.Angles(math.rad(0),math.rad(40),math.rad(95)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(0,math.rad(-35),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(0,math.rad(-30),0),.2)	
if i>0.1 then
w1weld.C0=clerp(w1weld.C0,w1c0*CFrame.Angles(0,0,math.rad(0)),.2)
w2weld.C0=clerp(w2weld.C0,w2c0*CFrame.new(-2,0,0)*CFrame.Angles(math.rad(45),math.rad(-5),math.rad(-15)),.2)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.Angles(0,0,math.rad(0)),.2)
w4weld.C0=clerp(w4weld.C0,w4c0*CFrame.new(-2.5,0,0)*CFrame.Angles(math.rad(0),math.rad(-15),math.rad(-15)),.2)
w5weld.C0=clerp(w5weld.C0,w5c0*CFrame.Angles(0,0,math.rad(0)),.2)
w6weld.C0=clerp(w6weld.C0,w6c0*CFrame.new(-2,0,0)*CFrame.Angles(math.rad(-45),math.rad(-5),math.rad(-15)),.2)
end
end

wait(0.1)

	hitboxTouch1:Disconnect()
	hitboxTouch2:Disconnect()
	hitboxTouch3:Disconnect()

	attacking=false
end

function attack2()
for i=0,1,0.05 do swait()
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),0,-math.rad(90)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0.1,0,math.rad(90)),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(80)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.2,0.5,-.4)*CFrame.Angles(math.rad(0),math.rad(40),math.rad(95)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(0,math.rad(-35),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(0,math.rad(-30),0),.2)	
w1weld.C0=clerp(w1weld.C0,w3c0*CFrame.new(1,-0.6,0)*CFrame.Angles(0,0,math.rad(0)),.2)
w2weld.C0=clerp(w2weld.C0,w2c0,.2)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.new(1,0,0)*CFrame.Angles(0,0,math.rad(0)),.2)
w4weld.C0=clerp(w4weld.C0,w4c0,.2)
w5weld.C0=clerp(w5weld.C0,w3c0*CFrame.new(1,0.6,0)*CFrame.Angles(0,0,math.rad(0)),.2)
w6weld.C0=clerp(w6weld.C0,w6c0,.2)
end

local hitboxTouch1=whit1.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack2.1"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack2.1"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)

local hitboxTouch2=whit3.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack2.2"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack2.2"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)

local hitboxTouch3=whit5.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack3.3"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack3.3"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)
	
	
for i=0,2,0.05 do swait()
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),0,math.rad(90)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0,0,-math.rad(90)),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(180),math.rad(95)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(0,math.rad(35),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(0,math.rad(30),0),.2)	
if i>0.7 then
w1weld.C0=clerp(w1weld.C0,w3c0*CFrame.new(12,-0.6,0)*CFrame.Angles(0,0,math.rad(0)),.2)
w2weld.C0=clerp(w2weld.C0,w2c0,.2)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.new(12,0,0)*CFrame.Angles(0,0,math.rad(0)),.2)
w4weld.C0=clerp(w4weld.C0,w4c0,.2)
w5weld.C0=clerp(w5weld.C0,w3c0*CFrame.new(12,0.6,0)*CFrame.Angles(0,0,math.rad(0)),.2)
w6weld.C0=clerp(w6weld.C0,w6c0,.2)
end
end

wait(0)

	hitboxTouch1:disconnect()
	hitboxTouch2:disconnect()
	hitboxTouch3:disconnect()

	attacking=false
end

function attack3()
for i=0,1,0.05 do swait()
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),0,-math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0.1,0,math.rad(0)),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(0,math.rad(0),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(0,math.rad(0),0),.2)	
w1weld.C0=clerp(w1weld.C0,w1c0*CFrame.new(2,0,0)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(0),0),.2)
w2weld.C0=clerp(w2weld.C0,w2c0*CFrame.new(-2,0,0)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(-0),0),.2)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.new(2,0,0)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(0),0),.2)
w4weld.C0=clerp(w4weld.C0,w4c0*CFrame.new(-2,0,0)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(-0),0),.2)
w5weld.C0=clerp(w5weld.C0,w5c0*CFrame.new(2,0,0)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(0),0),.2)
w6weld.C0=clerp(w6weld.C0,w6c0*CFrame.new(-2,0,0)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(-0),0),.2)
end

for i=0,1,0.05 do swait()
w1weld.C0=clerp(w1weld.C0,w1c0*CFrame.new(-1,0,3)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(0),0),.2)
w2weld.C0=clerp(w2weld.C0,w2c0*CFrame.new(1,0,3)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(-0),0),.2)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.new(-1,0,3)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(0),0),.2)
w4weld.C0=clerp(w4weld.C0,w4c0*CFrame.new(1,0,3)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(-0),0),.2)
w5weld.C0=clerp(w5weld.C0,w5c0*CFrame.new(-1,0,3)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(0),0),.2)
w6weld.C0=clerp(w6weld.C0,w6c0*CFrame.new(1,0,3)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(-0),0)*CFrame.Angles(0,math.rad(-0),0),.2)		
end

local hitboxTouch1=whit1.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack31.1"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack31.1"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)

local hitboxTouch2=whit3.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack31.2"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack31.2"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)

local hitboxTouch3=whit5.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack31.3"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack31.3"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)
	
local hitboxTouch4=whit2.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack3.1"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack3.1"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)

local hitboxTouch5=whit4.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack3.2"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack3.2"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)

local hitboxTouch6=whit6.Touched:connect(function(hit)
	if hit.Parent:findFirstChild"Humanoid" and hit.Parent:findFirstChild"Humanoid"~=humanoid then
		if hit.Parent:findFirstChild("Ypack_Attack3.3"..plr.Name) then return end
		local vhum=hit.Parent.Humanoid
		local vtors=hit.Parent:findFirstChild"Torso" if not vtors then return end
		
		local str=Instance.new("StringValue",hit.Parent)	
		str.Name="Ypack_Attack3.3"..plr.Name	
		game.Debris:AddItem(str,1)
		
		vhum.Health=vhum.Health-5		
		
	end
end)

for i=0,1,0.05 do swait()
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),0,math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0.1,0,-math.rad(0)),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.2,0.5,-.4)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(80)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.2,0.5,-.4)*CFrame.Angles(math.rad(10),math.rad(-80),math.rad(-80)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(0,math.rad(-0),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(0,math.rad(-0),0),.2)	
w1weld.C0=clerp(w1weld.C0,w1c0*CFrame.new(-1,0,17)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(0),0),.2)
w2weld.C0=clerp(w2weld.C0,w2c0*CFrame.new(1,0,17)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(-0),0),.2)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.new(-1,0,17)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(0),0),.2)
w4weld.C0=clerp(w4weld.C0,w4c0*CFrame.new(1,0,17)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(-0),0),.2)
w5weld.C0=clerp(w5weld.C0,w5c0*CFrame.new(-1,0,17)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(0),0),.2)
w6weld.C0=clerp(w6weld.C0,w6c0*CFrame.new(1,0,17)*CFrame.Angles(0,0,math.rad(0))*CFrame.Angles(0,math.rad(-0),0)*CFrame.Angles(0,math.rad(-0),0),.2)
end

wait(0.2)
hitboxTouch1:Disconnect()
hitboxTouch2:Disconnect()
hitboxTouch3:Disconnect()
hitboxTouch4:Disconnect()
hitboxTouch5:Disconnect()
hitboxTouch6:Disconnect()

	attacking=false
end

function dequip()
attacking=true
for i=0,2,0.05 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*euler(0,0,0),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*euler(0,0,0),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,RHC0,.4)
RH.C1=clerp(RH.C1,RHC1,.4)
LH.C0=clerp(LH.C0,LHC0,.4)
LH.C1=clerp(LH.C1,LHC1,.4)

w1weld.C0=clerp(w1weld.C0,dw3c0*CFrame.new(0,-.7,0),.12)
w2weld.C0=clerp(w2weld.C0,dw4c0*CFrame.new(0,-.7,0),.12)
w3weld.C0=clerp(w3weld.C0,dw3c0*CFrame.new(0,-.7,0),.12)
w4weld.C0=clerp(w4weld.C0,dw4c0*CFrame.new(0,-.7,0),.12)
w5weld.C0=clerp(w5weld.C0,dw3c0*CFrame.new(0,-.7,0),.12)
w6weld.C0=clerp(w6weld.C0,dw4c0*CFrame.new(0,-.7,0),.12)

end
for i=0,2,0.05 do swait()
w1weld.C0=clerp(w1weld.C0,dw3c0*CFrame.new(-.7,-.7,0),.12)
w2weld.C0=clerp(w2weld.C0,dw4c0*CFrame.new(.7,-.7,0),.12)
w3weld.C0=clerp(w3weld.C0,dw3c0*CFrame.new(-.7,-.7,0),.12)
w4weld.C0=clerp(w4weld.C0,dw4c0*CFrame.new(.7,-.7,0),.12)
w5weld.C0=clerp(w5weld.C0,dw3c0*CFrame.new(-.7,-.7,0),.12)
w6weld.C0=clerp(w6weld.C0,dw4c0*CFrame.new(.7,-.7,0),.12)
end
attacking=false
equipped=false
end

function equip()
attacking=true
for i=0,2,0.05 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*euler(0,0,0),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*euler(0,0,0),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,RHC0,.4)
RH.C1=clerp(RH.C1,RHC1,.4)
LH.C0=clerp(LH.C0,LHC0,.4)
LH.C1=clerp(LH.C1,LHC1,.4)

w1weld.C0=clerp(w1weld.C0,dw3c0*CFrame.new(0,-.7,0),.12)
w2weld.C0=clerp(w2weld.C0,dw4c0*CFrame.new(0,-.7,0),.12)
w3weld.C0=clerp(w3weld.C0,dw3c0*CFrame.new(0,-.7,0),.12)
w4weld.C0=clerp(w4weld.C0,dw4c0*CFrame.new(0,-.7,0),.12)
w5weld.C0=clerp(w5weld.C0,dw3c0*CFrame.new(0,-.7,0),.12)
w6weld.C0=clerp(w6weld.C0,dw4c0*CFrame.new(0,-.7,0),.12)

end
equipped=true
attacking=false
end

dequip()

toolequipped=function()
	if tool.Active==true then
		return true
	else
		return false
	end
end

equipbutton=uis.InputBegan:connect(function(key,global)
if toolequipped()==false then return end
	if key.KeyCode==Enum.KeyCode.F then
		if equipped==true then
			if attacking==true then return end
			dequip()
		else
			if attacking==true then return end
			equip()
		end		
	end
end)

counter=1
function keyDown(key,global)
	if global then return end
	if attacking then return end
	if not equipped then return end
	
	if key.UserInputType==Enum.UserInputType.MouseButton1 then
		attacking=true
		
		if counter==1 then
			attack1()
		end
		
		if counter==2 then
			attack2()
		end
		
		if counter==3 then
			attack3()
		end
		
		counter=counter+1
		if counter>3 then counter=1 end
	end
	
end
uis.InputBegan:connect(keyDown)



thread(function()
local sinecount=0
local normcount=0
while true do swait()

sinecount=sinecount+1
normcount=normcount+1
local sinewave=math.sin(sinecount/75)*0.2

if equipped==true then
if attacking==false then
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude
local hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,char)

if RootPart.Velocity.y > 1 and hitfloor==nil then
Anim="Jump"
sinewave=0
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(-15),0,math.rad(0)),.1)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(-math.rad(17),0,-math.rad(12)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(-math.rad(17),0,math.rad(12)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(math.rad(-12),math.rad(90),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(12),-math.rad(90),0),.2)
w1weld.C0=clerp(w1weld.C0,w1c0*CFrame.Angles(0,math.rad(-10),math.rad(-10)),.2)
w2weld.C0=clerp(w2weld.C0,w2c0*CFrame.Angles(0,math.rad(10),math.rad(10)),.2)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.Angles(0,math.rad(-13),math.rad(-10)),.2)
w4weld.C0=clerp(w4weld.C0,w4c0*CFrame.Angles(0,math.rad(13),math.rad(10)),.2)
w5weld.C0=clerp(w5weld.C0,w5c0*CFrame.Angles(0,math.rad(-17),math.rad(-10)),.2)
w6weld.C0=clerp(w6weld.C0,w6c0*CFrame.Angles(0,math.rad(17),math.rad(10)),.2)

elseif RootPart.Velocity.y < -1 and hitfloor==nil then
Anim="Fall"
sinewave=0
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(23),0,0),.2)
Neck.C1=clerp(Neck.C1,necko2*CFrame.Angles(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0,0,0),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(-math.rad(17),0,math.rad(12)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(-math.rad(17),0,-math.rad(12)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(math.rad(24),math.rad(90),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-12),-math.rad(90),0),.2)
w1weld.C0=clerp(w1weld.C0,w1c0*CFrame.Angles(0,math.rad(-8),math.rad(10)),.05)
w2weld.C0=clerp(w2weld.C0,w2c0*CFrame.Angles(0,math.rad(8),math.rad(-10)),.05)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.Angles(0,math.rad(-11),math.rad(10)),.05)
w4weld.C0=clerp(w4weld.C0,w4c0*CFrame.Angles(0,math.rad(11),math.rad(-10)),.05)
w5weld.C0=clerp(w5weld.C0,w5c0*CFrame.Angles(0,math.rad(-15),math.rad(10)),.05)
w6weld.C0=clerp(w6weld.C0,w6c0*CFrame.Angles(0,math.rad(15),math.rad(-10)),.05)

elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(10),0,math.rad(0)),.05)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.new(0,0,2+sinewave)*CFrame.Angles(0,0,math.rad(0)),.05)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(15),math.rad(15),math.rad(15)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(15),math.rad(-15),math.rad(-15)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(math.rad(-5),0,math.rad(3)),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(math.rad(-5),0,math.rad(-3)),.2)
w1weld.C0=clerp(w1weld.C0,w1c0*CFrame.new(sinewave/4,0,-.3)*CFrame.Angles(0,math.rad(12),-sinewave/3),.05)
w2weld.C0=clerp(w2weld.C0,w2c0*CFrame.new(-sinewave/4,0,-.3)*CFrame.Angles(0,math.rad(-12),sinewave/3),.05)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.new(sinewave/2,0,-.3)*CFrame.Angles(0,math.rad(15),-sinewave/3),.05)
w4weld.C0=clerp(w4weld.C0,w4c0*CFrame.new(-sinewave/2,0,-.3)*CFrame.Angles(0,math.rad(-15),sinewave/3),.05)
w5weld.C0=clerp(w5weld.C0,w5c0*CFrame.new(sinewave/4,0,-.3)*CFrame.Angles(0,math.rad(20),-sinewave/3),.05)
w6weld.C0=clerp(w6weld.C0,w6c0*CFrame.new(-sinewave/4,0,-.3)*CFrame.Angles(0,math.rad(-20),sinewave/3),.05)

if normcount%5==0 then
local cthrust=thrust1
local now=cthrust.CFrame*CFrame.new(0,-3,0)
local b1,m1=blockmesh((math.random()>0.5 and "Deep orange" or "Bright yellow"),0.2,Vector3.new(0.2,0.2,0.2),Vector3.new(2,2,2),true,false)
b1.CFrame=cthrust.CFrame*CFrame.new(0,-cthrust.Size.Y,0)
local now=cthrust.CFrame*CFrame.new(0,-cthrust.Size.Y,0)
thread(function() 
	for i=1,30 do swait() 
		m1.Scale=m1.Scale+Vector3.new(-2/30,-2/30,-2/30)
		b1.CFrame=now*CFrame.new(Vector3.new(0,(-3/30)*i,0),Vector3.new(randomangles("raw"),randomangles("raw"),randomangles("raw")))
		b1.Transparency=b1.Transparency+0.8/30
	end 
	b1:Destroy()
end)
end
if normcount%5==0 then
local cthrust=thrust2
local now=cthrust.CFrame*CFrame.new(0,-3,0)
local b1,m1=blockmesh((math.random()>0.5 and "Deep orange" or "Bright yellow"),0.2,Vector3.new(0.2,0.2,0.2),Vector3.new(2,2,2),true,false)
b1.CFrame=cthrust.CFrame*CFrame.new(0,-cthrust.Size.Y,0)
local now=cthrust.CFrame*CFrame.new(0,-cthrust.Size.Y,0)
thread(function() 
	for i=1,30 do swait() 
		m1.Scale=m1.Scale+Vector3.new(-2/30,-2/30,-2/30)
		b1.CFrame=now*CFrame.new(Vector3.new(0,(-3/30)*i,0),Vector3.new(randomangles("raw"),randomangles("raw"),randomangles("raw")))
		b1.Transparency=b1.Transparency+0.8/30
	end 
	b1:Destroy()
end)
end
if normcount%5==0 then
local cthrust=thrust3
local now=cthrust.CFrame*CFrame.new(0,-3,0)
local b1,m1=blockmesh((math.random()>0.5 and "Deep orange" or "Bright yellow"),0.2,Vector3.new(0.2,0.2,0.2),Vector3.new(2,2,2),true,false)
b1.CFrame=cthrust.CFrame*CFrame.new(0,-cthrust.Size.Y,0)
local now=cthrust.CFrame*CFrame.new(0,-cthrust.Size.Y,0)
thread(function() 
	for i=1,30 do swait() 
		m1.Scale=m1.Scale+Vector3.new(-2/30,-2/30,-2/30)
		b1.CFrame=now*CFrame.new(Vector3.new(0,(-3/30)*i,0),Vector3.new(randomangles("raw"),randomangles("raw"),randomangles("raw")))
		b1.Transparency=b1.Transparency+0.8/30
	end 
	b1:Destroy()
end)
end
if normcount%5==0 then
local cthrust=thrust4
local now=cthrust.CFrame*CFrame.new(0,-3,0)
local b1,m1=blockmesh((math.random()>0.5 and "Deep orange" or "Bright yellow"),0.2,Vector3.new(0.2,0.2,0.2),Vector3.new(2,2,2),true,false)
b1.CFrame=cthrust.CFrame*CFrame.new(0,-cthrust.Size.Y,0)
local now=cthrust.CFrame*CFrame.new(0,-cthrust.Size.Y,0)
thread(function() 
	for i=1,30 do swait() 
		m1.Scale=m1.Scale+Vector3.new(-2/30,-2/30,-2/30)
		b1.CFrame=now*CFrame.new(Vector3.new(0,(-2/30)*i,0),Vector3.new(randomangles("raw"),randomangles("raw"),randomangles("raw")))
		b1.Transparency=b1.Transparency+0.8/30
	end 
	b1:Destroy()
end)
end

elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
sinewave=0
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),0,math.rad(30)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0.1,0,-math.rad(30)),.1)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(30),math.rad(10)),.1)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.2,0.5,-.4)*CFrame.Angles(math.rad(0),math.rad(40),math.rad(95)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(0,math.rad(30),0),.1)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(0,math.rad(30),0),.1)
w1weld.C0=clerp(w1weld.C0,w1c0*CFrame.Angles(0,0,math.rad(15)),.1)
w2weld.C0=clerp(w2weld.C0,w2c0*CFrame.Angles(0,0,math.rad(-15)),.1)
w3weld.C0=clerp(w3weld.C0,w3c0*CFrame.Angles(0,0,math.rad(15)),.1)
w4weld.C0=clerp(w4weld.C0,w4c0*CFrame.Angles(0,0,math.rad(-15)),.1)
w5weld.C0=clerp(w5weld.C0,w5c0*CFrame.Angles(0,0,math.rad(15)),.1)
w6weld.C0=clerp(w6weld.C0,w6c0*CFrame.Angles(0,0,math.rad(-15)),.1)

end
end
end
end 
end)
