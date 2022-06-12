-- Created by Yunobii, using some of Fenrier's base functions

plr=game.Players.LocalPlayer
uis=game:GetService("UserInputService")
repeat wait() until plr.Character
char=plr.Character
torso=char:WaitForChild"Torso"
humanoid=char:WaitForChild"Humanoid"
tool=Instance.new("HopperBin",plr.Backpack)
tool.Name="Wrath"

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

function dequip()
	attacking=true

for i=0,2,0.05 do swait()
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(0),0,math.rad(-0)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(0)),.1)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(-0),math.rad(-0)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(math.rad(-0),0,math.rad(0)),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(math.rad(-0),0,math.rad(-0)),.2)
end
	
	RSH.Parent=torso
	LSH.Parent=torso
	RW.Parent=nil
	LW.Parent=nil	
	attacking=false
	equipped=false
end

function equip()
	attacking=true
	
	
	
	RSH.Parent=nil
	LSH.Parent=nil
	RW.Parent=torso
	LW.Parent=torso
	attacking=false
	equipped=true
end

uis.InputBegan:connect(function(key,g)
	if g then return end
	if attacking then return end
		if key.KeyCode==Enum.KeyCode.F then
		if tool.Active==false then return end
			if equipped==false then 
			equip()			
				else
			dequip()
		end		
	end	
end)

function newLightning(width,startpos,endpos,artics,erracity)
thread(function()
local lparts={}
local lightningartics=artics -- Articulation (amount of edges)
local lightningWidth=width -- How thick the lightning is

local basepart=Instance.new("Part")
basepart.Size=Vector3.new(1,1,1)
basepart.CanCollide=false
basepart.Anchored=true
local basepartmesh=Instance.new("BlockMesh",basepart)
basepartmesh.Scale=Vector3.new(1,1,1)

local lastpartpos=startpos.p
local firstpart=startpos.p
local erracticity=erracity
local randomX=5*erracticity
local randomY=3*erracticity
local randomZ=5*erracticity

	for i=1,lightningartics do

	local randompos=Vector3.new((math.random()-.5)*randomX,(math.random()-.5)*randomY,(math.random()-.5)*randomZ)
	local xpos=(((startpos.X-endpos.X))/lightningartics)*i
	local ypos=(((startpos.Y-endpos.Y))/lightningartics)*i
	local zpos=(((startpos.Z-endpos.Z))/lightningartics)*i
	local cpos=Vector3.new(xpos,ypos,zpos)+endpos.p+randompos
	local apos=lastpartpos
	
	local part=basepart:Clone()
	part.Material=Enum.Material.Neon
	part.BrickColor=BrickColor.new("Crimson")
	local partm=part.Mesh
	part.Parent=game.Workspace
	
	table.insert(lparts,part)

	part.CFrame=CFrame.new(cpos,apos)

	if i==1 then
	part.CFrame=CFrame.new(cpos,endpos.p)
	end
	
	if i==lightningartics then
	part.CFrame=CFrame.new(startpos.p,lastpartpos)
	end

	local partm=part.Mesh
	local halfz=(part.Position-lastpartpos).magnitude/2

	if i==1 then
	halfz=(part.Position-endpos.p).magnitude/2
	end
	
	partm.Offset=Vector3.new(0,0,-halfz)
	partm.Scale=Vector3.new(.2,.2,(halfz*1.93)+.3/1)
	
	lastpartpos=part.Position
end

wait()

for _,v in pairs(lparts) do
	thread(function()
	for i=1,15 do swait()
	v.Transparency=v.Transparency+1/15
	end	
	v:Destroy()
	end)
end
end)
end

function swipeLightning()
attacking=true
for i=0,1,0.05 do swait()	
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),math.rad(0),math.rad(-60)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0,0,math.rad(60)),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(-math.rad(17),0,-math.rad(12)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(0,math.rad(90),math.rad(85))*CFrame.Angles(0,math.rad(15),0),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(math.rad(-12),math.rad(90),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(12),-math.rad(90),0),.2)
end
newLightning(5,char["Right Arm"].CFrame*CFrame.new(0,-0.9,0),mouse.Hit,math.ceil((char.Torso.Position-mouse.Hit.p).magnitude/20)+1,2)

for i=0,1,0.05 do swait()	
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),math.rad(0),math.rad(60)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0,0,math.rad(-60)),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(-math.rad(17),0,-math.rad(12)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(0,math.rad(90),math.rad(85))*CFrame.Angles(0,math.rad(15),0),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(math.rad(-12),math.rad(90),0),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(12),-math.rad(90),0),.2)
end

attacking=false
end

mouse=plr:GetMouse()

uis.InputBegan:connect(function(key,g)
	if g then return end
	if attacking then return end
	
	if key.KeyCode==Enum.KeyCode.Z then
		swipeLightning()
	end	
	
end)

function createBodyTrail()
	local faketab={}
	local fakel=newPart(Effects,char["Right Arm"].BrickColor.Color,0,true,false,char["Right Arm"].Size,"")
	local faker=newPart(Effects,char["Left Arm"].BrickColor.Color,0,true,false,char["Left Arm"].Size,"")
	local fakell=newPart(Effects,char["Left Leg"].BrickColor.Color,0,true,false,char["Left Leg"].Size,"")
	local fakerl=newPart(Effects,char["Right Leg"].BrickColor.Color,0,true,false,char["Right Leg"].Size,"")
	local faketors=newPart(Effects,char["Torso"].BrickColor.Color,0,true,false,char["Torso"].Size,"")
	local fakehead=newPart(Effects,char["Head"].BrickColor.Color,0,true,false,char["Head"].Size,"")
	
	if char["Head"]:findFirstChild"Mesh" then
		char["Head"].Mesh:Clone().Parent=fakehead
	end
	
	fakel.Name="FakeLeft"
	faker.Name="FakeRight"
	fakell.Name="FakeLeftL"
	fakerl.Name="FakeRightL"
	faketors.Name="FakeTorso"
	fakehead.Name="FakeHead"

	table.insert(faketab,fakel)
	table.insert(faketab,faker)
	table.insert(faketab,fakell)
	table.insert(faketab,fakerl)
	table.insert(faketab,faketors)
	table.insert(faketab,fakehead)

	for _,v in pairs(faketab) do
		v.Archivable=true
		v.CanCollide=false
		v.Anchored=true
		v.Material="SmoothPlastic"	
		v.Transparency=0.2
		v.Locked=true
		game.Debris:AddItem(v,3)
	end	

	fakel.CFrame=char["Left Arm"].CFrame
	faker.CFrame=char["Right Arm"].CFrame
	fakell.CFrame=char["Left Leg"].CFrame
	fakerl.CFrame=char["Right Leg"].CFrame
	faketors.CFrame=char["Torso"].CFrame
	fakehead.CFrame=char["Head"].CFrame
	
	local hats={}
	for _,v in pairs(char:GetChildren()) do
		if v:IsA"Hat" then
			table.insert(hats,v)
		end
	end
	
	for _,v in pairs(hats) do
		if v:findFirstChild"Handle" then
			local vc=v.Handle:Clone()
			vc.Parent=Effects
			vc.CFrame=v.Handle.CFrame
			vc.Anchored=true
			vc.CanCollide=false

			thread(function()
				for i=1,15 do swait()
					vc.Transparency=vc.Transparency+1/15
				end
				vc:Destroy()
			end)
		end		
	end
	
	return faketors,fakehead,faker,fakel,fakerl,fakell
end

thread(function()
local sinecount=0
local normcount=0
while true do swait()
sinecount=sinecount+1
normcount=normcount+1
local sinewave=math.sin(sinecount/75)*0.2

if normcount%3==0 then
	if Anim~="Idle" then
	if equipped==true then
	local ctors,chead,cright,cleft,crighth,clefth=createBodyTrail()
	thread(function()
	for i=1,15 do swait()
		ctors.Transparency=ctors.Transparency+0.8/15
		chead.Transparency=chead.Transparency+0.8/15
		cright.Transparency=cright.Transparency+0.8/15
		crighth.Transparency=crighth.Transparency+0.8/15
		cleft.Transparency=cleft.Transparency+0.8/15
		clefth.Transparency=clefth.Transparency+0.8/15
	end
	ctors:Destroy()
	chead:Destroy()
	cright:Destroy()
	crighth:Destroy()
	cleft:Destroy()
	clefth:Destroy()
	end)
	end
	end
end



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

elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(10),0,math.rad(-25)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(25)),.1)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(15),math.rad(5),math.rad(15)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(15),math.rad(-15),math.rad(-15)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(math.rad(-5),0,math.rad(3)),.2)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(math.rad(-5),0,math.rad(-3)),.2)

elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
sinewave=0
Neck.C0=clerp(Neck.C0,necko*CFrame.Angles(math.rad(5),0,math.rad(0)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0.1,0,-math.rad(0)),.1)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-25),math.rad(5),math.rad(15)),.2)
RW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-25),math.rad(-15),math.rad(-15)),.2)
LW.C1=clerp(LW.C1,CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0),.2)
RH.C0=clerp(RH.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(0,math.rad(0),0),.1)
LH.C0=clerp(LH.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-math.rad(90),0)*CFrame.Angles(0,math.rad(0),0),.1)

end
end
end
end 
end)
