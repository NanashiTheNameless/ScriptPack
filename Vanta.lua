
if script.Parent~=game.Workspace then
	script.Parent=game.Workspace
	script.Disabled=false
end


--New boss for Black Magic
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles 
if workspace:findFirstChild("Vanta",true) ~= nil then 
workspace:findFirstChild("Vanta",true).Parent = nil 
end  
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
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
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end 
local Character=Instance.new("Model")
Character.Parent=workspace
Character.Name="Vanta" 
local Head=part(0,Character,0,1,BrickColor.new("Black"),"Head",vt(2,1,1))
local Torso=part(0,Character,0,1,BrickColor.new("Black"),"Torso",vt(2,2,1))
local LeftArm=part(0,Character,0,1,BrickColor.new("Black"),"Left Arm",vt(1,2,1))
local RightArm=part(0,Character,0,1,BrickColor.new("Black"),"Right Arm",vt(1,2,1))
local LeftLeg=part(0,Character,0,1,BrickColor.new("Black"),"Left Leg",vt(1,2,1))
local RightLeg=part(0,Character,0,1,BrickColor.new("Black"),"Right Leg",vt(1,2,1))
local RootPart=part(0,Character,0,1,BrickColor.new("White"),"HumanoidRootPart",vt(2,2,1))
Head.CanCollide=true
Torso.CanCollide=true
LeftArm.CanCollide=true
RightArm.CanCollide=true
LeftLeg.CanCollide=true
RightLeg.CanCollide=true
RootPart.CanCollide=false 
local HMesh=mesh("SpecialMesh",Head,"Head","",vt(0,0,0),vt(1.25,1.25,1.25)) 
--[[local Neck=weld(Torso,Torso,Head,cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
Neck.C1=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)]]
local Neck=weld(Torso,Torso,Head,cf(0,1,0))
Neck.C1=cf(0,-0.5,0)
local RW=weld(Torso,Torso,RightArm,cf(1.5,0.5,0))
RW.C1=cf(0,0.5,0)
local LW=weld(Torso,Torso,LeftArm,cf(-1.5,0.5,0))
LW.C1=cf(0,0.5,0)
local RH=weld(Torso,Torso,RightLeg,cf(0.5,-1,0))
RH.C1=cf(0,1,0)
local LH=weld(Torso,Torso,LeftLeg,cf(-0.5,-1,0))
LH.C1=cf(0,1,0)
local RootJoint=weld(Torso,Torso,RootPart,cf(0,0,0)) 
local Humanoid=Instance.new("Humanoid")
Humanoid.Parent=Character
Humanoid.MaxHealth=math.huge
Humanoid.Health=math.huge
coroutine.resume(coroutine.create(function()
        for i=1,20 do
                Humanoid.Health=Humanoid.MaxHealth
        end
        Humanoid:TakeDamage(1)
end)) 
local MainPosition=workspace.Base.CFrame*cf(0,100,0)*euler(0,1.57,0)
Torso.CFrame=MainPosition
local Mode=Instance.new("IntValue")
Mode.Parent=Character
Mode.Value=2
Mode.Name="ModeValue" 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 
function MagicBlock2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale-vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 
function MagicCrystal(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,4)
coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 
function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
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
function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
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
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
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
function WaveEffect2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1323306",vt(0,0,0),vt(x1,y1,z1))
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
function SummonCrystals()
local Cryst={}
Part1=workspace.Base
local numbah=0
for i=1,4 do
Crys=Instance.new("Model")
Crys.Parent=workspace
Crys.Name="Crystal" 
CHead=part(0,Crys,0,0,BrickColor.new("Black"),"Head",vt(8,8,8))
CTorso=part(0,Crys,0,1,BrickColor.new("Black"),"Torso",vt())
CHMesh=mesh("SpecialMesh",CHead,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(10,11,10))
local Neck=weld(CTorso,CTorso,CHead,cf(0,0,0))
Hum=Instance.new("Humanoid")
Hum.Parent=Crys
CTorso.CFrame=Part1.CFrame*cf(5,10,0)*euler(0,numbah,0)
MagicCircle(BrickColor.new("Really black"),CHead.CFrame,50,50,50,1,12,1,0.05)
wait(0)
CTorso.Anchored=true
coroutine.resume(coroutine.create(function(Model,CrysHum) 
while CrysHum.Health>0 do
wait()
end
print("ded")
Tors=Model.Torso
Hed=Model.Head
for i=0,1,0.1 do
wait()
Hed.Transparency=i
end
print("ez ded")
Model.Parent=nil
end),Crys,Hum)
numbah=numbah+1.57
wait(0.875)
end
coroutine.resume(coroutine.create(function(ModeVal)
while ModeVal.Value==2 do
wait()
local dedcrystals=true
model=workspace
for _,c in pairs(model:children()) do
if c.Name=="Crystal" then
dedcrystals=false
end
end
if dedcrystals==true then
ModeVal.Value=3
print("CRYSTALS ARE DED")
end
end
print("goe keel vanta nao")
end),Mode)
end 
local BodPos=Instance.new("BodyPosition")
BodPos.P=500
BodPos.D=100
BodPos.Name="VantaPos"
BodPos.maxForce=vt(math.huge,math.huge,math.huge)
BodPos.position=workspace.Base.Position+vt(0,50,0)
BodPos.Parent=RootPart 
local BPRef=part(3,Character,0,0.5,BrickColor.new("Black"),"Reference",vt())
BPRef.Anchored=true
for i=0,1,0.1 do
wait()
end 
BPRef.CFrame=Torso.CFrame
BodPos.position=BPRef.Position 
local BodGy=Instance.new("BodyGyro")
BodGy.maxTorque=Vector3.new(4e+005,4e+005,4e+005)*math.huge 
BodGy.P=2000
BodGy.D=100
BodGy.Name="VantaGyro"
CF=RootPart.CFrame
BodGy.Parent=RootPart
BodGy.cframe=CF
--local music=workspace.PlayMusic
local intro=true
local DarkLegEffect=true 
wait(1)
if intro==true then
wait(5)
--music.Value=true
coroutine.resume(coroutine.create(function(Leg1,Leg2) 
while DarkLegEffect==true do
wait(0.1)
MagicBlock(BrickColor.new("Really black"),Leg1.CFrame*cf(0,-1,0),5,5,5,0.5,0.5,0.5,0.1)
MagicBlock(BrickColor.new("Really black"),Leg2.CFrame*cf(0,-1,0),5,5,5,0.5,0.5,0.5,0.1)
end
end),RightLeg,LeftLeg) 
MagicCircle2(BrickColor.new("Black"),Torso.CFrame*euler(1.57,0,0),10,0.1,10,0.1,0,0.1,0.02)
for _,c in pairs(Character:children()) do
if c.className=="Part" and c.Name~="HumanoidRootPart" and c.Name~="Reference" then
c.Transparency=1
coroutine.resume(coroutine.create(function(Part)
for i=1,0,-0.05 do
wait()
Part.Transparency=i
end
Part.Transparency=0
end),c)
end
end 
for i=0,1,0.01 do
wait()
RootJoint.C0=cf(0,0,0)*euler(1-0.8*i,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.5+0.2*i,0,1.57-1.37*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.5+0.2*i,0,-1.57+1.37*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1,0)*euler(-1+0.7*i,0,0.2)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-1+0.7*i,0,-0.2)
LH.C1=cf(0,1,0)
BPRef.CFrame=BPRef.CFrame*cf(0,0,-0.1)
BodPos.position=BPRef.Position
end
--wait(0.5)
for i=0,1,0.02 do
wait()
Neck.C0=cf(0,1,0)*euler(0.2*i,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.3+1.5*i,0,0.2+0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.3+1.5*i,0,-0.2-0.2*i)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.3*i,0.5,-0.5*i)*euler(1.2+0.37*i,0,0.4-1.57*i)
LW.C0=cf(-1.5+0.3*i,0.5,-0.5*i)*euler(1.2+0.37*i,0,-0.4+1.57*i)
end
MagicCircle(BrickColor.new("Really black"),RootPart.CFrame,4,4,4,3,3,3,0.04) 
Crystals={}
numb=0
for i=1,4 do
local Cryst1=part(3,Character,0,0,BrickColor.new("Black"),"Crystal",vt())
local CrystMsh=mesh("SpecialMesh",Cryst1,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(1.5,2,1.5))
Cryst1.Anchored=true
Cryst1.CFrame=RootPart.CFrame*euler(0,numb,0)*cf(0,0,5)
MagicCrystal(BrickColor.new("Really black"),Cryst1.CFrame,1,1,1,0.2,0.4,0.2,0.1)
numb=numb+1.57
table.insert(Crystals,Cryst1)
end
wait(0.5)
for i=0,1,0.05 do
wait()
Neck.C0=cf(0,1,0)*euler(0.2-0.2*i,0,0)
RW.C0=cf(1.2+0.3*i,0.5,-0.5+0.5*i)*euler(1.57-1.57*i,0,-1.17+1.27*i)
LW.C0=cf(-1.2-0.3*i,0.5,-0.5+0.5*i)*euler(1.57-1.67*i,0,1.17-1.27*i)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5,0.5,0)*euler(3.2*i,0,0.1-0.1*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.1+0.1*i,0,-0.1-0.3*i)
end
wait(0.5)
for i=1,#Crystals do
Crystals[i].Parent=nil
MagicCircle(BrickColor.new("Really black"),Crystals[i].CFrame,10,10,10,0.5,8,0.5,0.1)
wait(0.2)
end
for i=0,1,0.04 do
wait()
RW.C0=cf(1.5,0.5,0)*euler(3.2-3.2*i,0,0.1)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.1-0.3+0.3*i)
end
wait(0.5)
for i=0,1,0.05 do
wait()
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.1+1.37*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.1-1.37*i)
end
numb=2
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5,0.5,0)*euler(0,0,1.47+0.1*i*numb)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-1.47-0.1*i*numb)
numb=numb-0.1
end
RW.C0=cf(1.5,0.5,0)*euler(0,0,1.57)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-1.57)
SummonCrystals()
--wait(3.5)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5,0.5,0)*euler(0.1*i,0,1.57-1.47*i)
LW.C0=cf(-1.5,0.5,0)*euler(0.1*i,0,-1.57+1.47*i)
end
for i=0,1,0.1 do
wait()
RootJoint.C0=cf(0,0,0)*euler(0.2-0.1*i,0,0)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(0.1+1.37*i,0,0.1-1.37*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(0.1+1.07*i,0,-0.1+1.17*i)
end
n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2*i*n,0,0)
RootJoint.C0=cf(0,0,0)*euler(0.1-0.1*i*n,0,0)
RW.C0=cf(1,0.5,-0.5)*euler(1.47+0.1*i*n,0,-1.27-0.1*i*n)
LW.C0=cf(-1,0.5,-0.5)*euler(1.17+0.1*i*n,0,1.07+0.1*i*n)
n=n-0.1
end
--[[local Shield1=part(3,Character,0,1,BrickColor.new("Dark stone grey"),"Shield1",vt())
local Smsh1=mesh("SpecialMesh",Shield1,"FileMesh","http://www.roblox.com/asset/?id=90782182",vt(0,0,0),vt(0.4,0.5,0.4))
Smsh1.TextureId="http://www.roblox.com/asset/?id=90782359"
Smsh1.VertexColor=vt(0.5,0.5,0.5)
local swld1=weld(Torso,Torso,Shield1,cf(0,1.45,0))
local Shield2=part(3,Character,0,1,BrickColor.new("Dark stone grey"),"Shield2",vt())
local Smsh2=mesh("SpecialMesh",Shield2,"FileMesh","http://www.roblox.com/asset/?id=90782182",vt(0,0,0),vt(0.4,0.5,0.4))
Smsh2.TextureId="http://www.roblox.com/asset/?id=90782359"
Smsh2.VertexColor=vt(0.5,0.5,0.5)
local swld1=weld(Torso,Torso,Shield2,cf(0,-1.45,0)*euler(3.14,0,0))
coroutine.resume(coroutine.create(function(Part1,Mesh1,Part2,Mesh2)
for i=1,0.5,-0.02 do
wait()
Part1.Transparency=i
Part2.Transparency=i
end
wait(1)
for i=0.5,1,0.01 do
wait()
Part1.Transparency=i
Part2.Transparency=i
end
end),Shield1,Smsh1,Shield2,Smsh2)]]
wait(1)
n=2
num=1
for i=0,1,0.02 do
wait()
RW.C0=cf(1+0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.57-1.57*i*n,0,-1.37+1.57*i*n)
LW.C0=cf(-1-0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.27-1.27*i*n,0,1.17-1.37*i*n)
n=n-0.02
end
wait(5)
else
print("NOE INTRO")
--music.Value=true
coroutine.resume(coroutine.create(function(Leg1,Leg2) 
while DarkLegEffect==true do
wait(0.1)
MagicBlock(BrickColor.new("Really black"),Leg1.CFrame*cf(0,-1,0),5,5,5,0.5,0.5,0.5,0.1)
MagicBlock(BrickColor.new("Really black"),Leg2.CFrame*cf(0,-1,0),5,5,5,0.5,0.5,0.5,0.1)
end
end),RightLeg,LeftLeg) 
for _,c in pairs(Character:children()) do
if c.className=="Part" and c.Name~="HumanoidRootPart" and c.Name~="Reference" then
c.Transparency=0
end
end
Neck.C0=cf(0,1,0)*euler(-0.2,0,0)
RootJoint.C0=cf(0,0,0)*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.2)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1,0)*euler(-0.3,0,0.2)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.3,0,-0.2)
LH.C1=cf(0,1,0)
wait(1)
end
print("START BOSS BATTLE") 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end  
function findNearestTorso(pos)
        local list = game.Workspace:children()
        local torso = nil
        local dist = 1000
        local temp = nil
        local human = nil
        local temp2 = nil
        for x = 1, #list do
                temp2 = list[x]
                if (temp2.className == "Model") and (temp2.Name~="Vanta") and temp2.Name~="Crystal" then
                        temp = temp2:findFirstChild("Torso")
                        human = temp2:findFirstChild("Humanoid")
                        if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                                if (temp.Position - pos).magnitude < dist then
                                        torso = temp
                                        dist = (temp.Position - pos).magnitude
                                end
                        end
                end
        end
        return torso,dist
end 
function findRandomTorso(pos)
        local list = game.Workspace:children()
        local torso = nil
        local dist = 1000
        local temp = nil
        local human = nil
        local temp2 = nil
        local list2 = {}
        for x = 1, #list do
                temp2 = list[x]
                if (temp2.className == "Model") and (temp2.Name~="Vanta") and temp2.Name~="Crystal" then
                        temp = temp2:findFirstChild("Torso")
                        human = temp2:findFirstChild("Humanoid")
                        if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                                if pos.magnitude < dist then
                                        torso = temp
                                        table.insert(list2,temp)
                                end
                        end
                end
        end
        if #list2>0 then
        rand=math.random(1,#list2)
        return list2[rand],dist
        else
        return nil,dist
        end
end 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent.Name~="Crystal" and hit.Parent:FindFirstChild("Torso")~=nil then
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
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor:Red())
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
wait(1)
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
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,20,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Freeze" then
                BodPos2=Instance.new("BodyPosition")
                BodPos2.P=50000
                BodPos2.D=1000
                BodPos2.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                BodPos2.position=hit.Parent.Torso.Position
                BodPos2.Parent=hit.Parent.Torso
                BodGy2 = it("BodyGyro") 
                BodGy2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
                BodGy2.P = 20e+003 
                BodGy2.Parent=hit.Parent.Torso
                BodGy2.cframe = hit.Parent.Torso.CFrame
                hit.Parent.Torso.Anchored=true
                coroutine.resume(coroutine.create(function(Part) 
                wait(1.5)
                Part.Anchored=false
                end),hit.Parent.Torso)
                game:GetService("Debris"):AddItem(BodPos2,3)
                game:GetService("Debris"):AddItem(BodGy2,3)
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
        else
        c.CFrame=CFrame.new(Char["Torso"].CFrame.p+Vector3.new(0,1.5,0))
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
function MagniDamage(Part,magni,mindam,maxdam,knock,Type,base)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Character.Name then 
Damagefunc(head,mindam,maxdam,knock,Type,base,0)
end
end
end
end
end  
local HealtVal=Instance.new("IntValue")
HealtVal.Name="Max Health Value"
HealtVal.Parent=Character
HealtVal.Value=5000
local HealtVal2=Instance.new("IntValue")
HealtVal2.Name="Current Health Value"
HealtVal2.Parent=Character
HealtVal2.Value=5000
local HealthNum=Instance.new("IntValue")
HealthNum.Name="Divis Numb"
HealthNum.Parent=Character
HealthNum.Value=HealtVal2.Value/3
local HealthNumber=1666
Anim=Instance.new("StringValue")
Anim.Name="Animation"
Anim.Parent=Character
Anim.Value="Walking"
mode=Mode
local target,distance=nil,nil
local attacking=false
while Humanoid.Health>0 do
wait()
while mode.Value==2 do
Humanoid.PlatformStand=false
Humanoid.Sit=false
if Torso.Parent==nil or Humanoid.Health<=0 then
Humanoid.Parent=nil
RootPart.Parent=Character
BPRef.CFrame=workspace.Base.CFrame*cf(0,100,0)*euler(0,1.57,0)
BodPos.position=BPRef.Position
BodPos.Parent=RootPart
RootPart.CFrame=BPRef.CFrame
BodPos.position=BPRef.Position
Torso.Parent=Character
Head.Parent=Character
LeftArm.Parent=Character
RightArm.Parent=Character
LeftLeg.Parent=Character
RightLeg.Parent=Character 
Neck.Parent=Torso
RootJoint.Parent=Torso
RW.Parent=Torso
LW.Parent=Torso
RH.Parent=Torso
LH.Parent=Torso
wait(.1)
Humanoid.MaxHealth=math.huge
Humanoid.Health=math.huge
coroutine.resume(coroutine.create(function()
        for i=1,20 do
                Humanoid.Health=math.huge
                Neck.Parent=Torso
                RootJoint.Parent=Torso
                RW.Parent=Torso
                LW.Parent=Torso
                RH.Parent=Torso
                LH.Parent=Torso
        end
        Humanoid:TakeDamage(1)
end)) 
end
RH.C0=cf(0.5,-1,0)*euler(-0.3,0,0.2)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.3,0,-0.2)
LH.C1=cf(0,1,0)
BodPos.maxForce=vt(math.huge,math.huge,math.huge)
local move=1
if math.random(1,2)==1 then
move=1
target,distance=findRandomTorso(Torso.Position)
else
move=2
target,distance=findNearestTorso(Torso.Position)
end
if target~=nil then
if math.random(1,5)==1 then
MagicBlock(BrickColor.new("Really black"),Torso.CFrame,15,15,15,6,6,6,0.1)
local pos=cf(math.random(-10,10),math.random(50,70),math.random(-10,10))
BPRef.CFrame=cf(target.Position)*pos
Torso.CFrame=BPRef.CFrame
BodPos.position=BPRef.Position
MagicBlock(BrickColor.new("Really black"),Torso.CFrame,15,15,15,6,6,6,0.1)
end
BodGy.cframe=CF*euler(0,math.random(-50,50),0)
local pos=cf(math.random(-10,10),math.random(50,70),math.random(-10,10))
--BPRef.CFrame=cf(target.Position)*pos
--BodPos.position=BPRef.Position
attack=math.random(1,3)
attacking=true
if attack==1 then --Dark Rain
coroutine.resume(coroutine.create(function() 
while attacking==true do
wait()
BPRef.CFrame=cf(target.Position)*pos
BodPos.position=BPRef.Position
end
end))
n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2+0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14*i*n,0,0.2-0.2*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2-0.2*i*n)
n=n-0.1
end
for i=1,math.random(10,20) do
local orb=part(3,Character,0,1,BrickColor.new("Really black"),"Orb",vt())
so("http://roblox.com/asset/?id=183763498",orb,1,1.2) 
local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(10,10,10))
local owld=weld(orb,orb,Torso,cf(0,-5,0))
MagicCircle(BrickColor.new("Really black"),orb.CFrame,10,10,10,1,1,1,0.1)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
local ceef1=math.random(-50,50)
local ceef2=math.random(-2,8)
local ceef3=math.random(100,200)/100
local n=2
for i=0,1,0.1 do
wait()
Part.Transparency=Part.Transparency-0.07
owld.C0=cf(ceef2*i*n,-5,0)*euler(ceef3*i*n,ceef1,0)
n=n-0.1
end
wait(1)
Part.Parent=nil
local spread=vt((math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16)*(Part.Position-(Part.Position+vt(0,-1,0))).magnitude/100
local TheHit=Part.Position+vt(0,-1,0)
local MouseLook=cf((Part.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(Part.Position,MouseLook.lookVector,999,Character)
local mag=(Part.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really black"),CFrame.new((Part.Position+pos)/2,pos)*angles(1.57,0,0) ,1,mag*5,1,0.5,0,0.5,0.05)
MagicBlock(BrickColor.new("Really black"),Part.CFrame,8,8,8,0.5,0.5,0.5,0.1)
MagicBlock(BrickColor.new("Really black"),cf(pos),15,15,15,6,6,6,0.1)
MagicRing(BrickColor.new("Really black"),cf(pos)*euler(1.57,math.random(-100,100)/100,math.random(-100,100)/100),1,1,1,2,2,2,0.05)
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf(pos)
so("http://roblox.com/asset/?id=183763487",ref,1,1) 
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Parent=nil
end),ref)
MagniDamage(ref,15,5,10,0,"Normal",RootPart)
if hit~=nil then
Damagefunc(hit,20,40,1,"Knockdown",RootPart,0)
end
end),orb,omsh,owld)
wait(0.2)
end
n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(0.4-0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14-3.14*i*n,0,0.2*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.4+0.2*i*n)
n=n-0.1
end
attacking=false
wait(2)
elseif attack==2 then --Nocturne
coroutine.resume(coroutine.create(function() 
while attacking==true do
wait()
Pos=target.Position
BodGy.cframe=cf(Torso.Position,Pos)
end
end))
n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2+0.2*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57*i*n,0,0.2-0.6*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.57*i*n,0,-0.2+0.6*i*n)
n=n-0.1
end
local orb=part(3,Character,0,1,BrickColor.new("Really black"),"Orb",vt())
local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(10,10,10))
local owld=weld(orb,orb,Torso,cf(0,-0.5,3))
so("http://roblox.com/asset/?id=137463716",orb,1,0.6) 
for i=1,0.3,-0.01 do
wait()
orb.Transparency=i
omsh.Scale=omsh.Scale+vt(0.2,0.2,0.2)
MagicBlock(BrickColor.new("Really black"),orb.CFrame,8,8,8,0.5,0.5,0.5,0.1)
local ef=part(3,workspace,0,0,BrickColor.new("Really black"),"Effect",vt())
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Sphere","",vt(0,0,0),vt(2,math.random(1000,1500)/100,2))
local ceef=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,math.random(5,10),0)
ef.CFrame=orb.CFrame*ceef
game:GetService("Debris"):AddItem(ef,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.Transparency=i
Part.CFrame=Part.CFrame*cf(0,-1,0)
end
Part.Parent=nil
end),ef,emsh)
end
attacking=false
wait(1)
orb.Parent=nil
local hit,pos = rayCast(orb.Position,Head.CFrame.lookVector,999,Character)
print(hit)
local mag=(orb.Position-pos).magnitude 
MagicCircle(BrickColor.new("Really black"),cf(pos),15,15,15,8,8,8,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),15,15,15,8,8,8,0.02)
MagicCylinder(BrickColor.new("Really black"),CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0),10,mag*5,10,0.5,0,0.5,0.01)
for i=1,2 do
MagicRing(BrickColor.new("Really black"),cf(pos)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,1,1,1,0.04)
end
for i=1,5 do
tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(mag/5)*(i/2),0)
MagicRing(BrickColor.new("Really black"),tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
for i=0,5 do
tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(-mag/5)*(i/2),0)
MagicRing(BrickColor.new("Really black"),tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf(pos)
so("http://roblox.com/asset/?id=183763506",Torso,1,0.6) 
so("http://roblox.com/asset/?id=178452221",Torso,1,0.6) 
so("http://www.roblox.com/Asset?ID=87767777",Torso,1,1) 
so("http://roblox.com/asset/?id=183763506",ref,1,0.6) 
so("http://roblox.com/asset/?id=178452221",ref,1,0.6) 
so("http://www.roblox.com/Asset?ID=87767777",ref,1,1) 
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Parent=nil
end),ref)
MagniDamage(ref,20,10,30,40,"Knockdown",ref)
if hit~=nil then
Damagefunc(hit,30,70,50,"Knockdown",RootPart,0)
end
wait(1)
n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i*n,0,0.2-0.6+0.6*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i*n,0,-0.2+0.6-0.6*i*n)
n=n-0.1
end
elseif attack==3 then --Terror blast
n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2-0.2*i*n,0,0)
RW.C0=cf(1.5-0.5*i*n,0.5,-0.5*i*n)*euler(1.4*i*n,0,0.2-1.4*i*n)
LW.C0=cf(-1.5+0.5*i*n,0.5,-0.5*i*n)*euler(1.6*i*n,0,-0.2+1.6*i*n)
n=n-0.1
end
so("http://roblox.com/asset/?id=160772554",Torso,1,0.6) 
so("http://roblox.com/asset/?id=161006069",Torso,1,0.6) 
local charging=true
for _,c in pairs(workspace:children()) do
if c.className=="Model" then
if c:findFirstChild("Torso")~=nil and c:findFirstChild("Humanoid")~=nil and c.Name~="Vanta" then
print(c)
local Tors=c:findFirstChild("Torso")
coroutine.resume(coroutine.create(function(Part)
local ef=part(3,Character,0,0.5,BrickColor.new("Really black"),"Laser",vt(0.2,0.2,0.2))
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Head","",vt(0,0,0),vt(1,1,1))
game:GetService("Debris"):AddItem(ef,5)
while charging==true do
wait()
local TheHit=Part.Position
local MouseLook=cf((Torso.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(Torso.Position,MouseLook.lookVector,999,Character)
local mag=(Torso.Position-pos).magnitude 
ef.CFrame=CFrame.new((Torso.Position+pos)/2,pos)*euler(1.57,0,0)
emsh.Scale=vt(1,mag*5,1)
end
ef.Parent=nil
local TheHit=Part.Position
local MouseLook=cf((Torso.Position+TheHit)/2,TheHit)
wait()
local hit,pos = rayCast(Torso.Position,MouseLook.lookVector,999,Character)
local mag=(Torso.Position-pos).magnitude 
if hit~=nil then
Damagefunc(hit,20,40,50,"Knockdown",RootPart,0)
MagicCircle(BrickColor.new("Really black"),cf(pos),5,5,5,6,6,6,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),5,5,5,7,7,7,0.02)
MagicCylinder(BrickColor.new("Really black"),CFrame.new((Torso.Position+pos)/2,pos)*euler(1.57,0,0),5,mag*5,5,0.5,0,0.5,0.01)
so("http://roblox.com/asset/?id=183763515",hit,1,1) 
so("http://roblox.com/asset/?id=183763512",hit,1,1) 
end
end),Tors)
end
end
end
wait(1)
n=2
for i=0,1,0.2 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.4+0.2*i*n,0,0)
RW.C0=cf(1+0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.4+0.17*i*n,0,-1.2+2.77*i*n)
LW.C0=cf(-1-0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.6-0.03*i*n,0,1.4-2.97*i*n)
n=n-0.2
end
charging=false
wait(1)
n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i*n,0,1.57-1.37*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i*n,0,-1.57+1.37*i*n)
n=n-0.1
end
wait(2)
end
attacking=false
else
print("CAN'T FIND TARGET")
end
wait(1)
end
Humanoid.MaxHealth=HealtVal.Value
Humanoid.Health=HealtVal2.Value
coroutine.resume(coroutine.create(function()
        for i=1,20 do
                Humanoid.Health=HealtVal2.Value
        end
        Humanoid:TakeDamage(1)
end)) 
MagicBlock(BrickColor.new("Really black"),Torso.CFrame,15,15,15,6,6,6,0.1)
BPRef.CFrame=MainPosition
Torso.CFrame=BPRef.CFrame
BodPos.position=BPRef.Position
MagicBlock(BrickColor.new("Really black"),Torso.CFrame,15,15,15,6,6,6,0.1)
BodGy.cframe=CF
wait(0.5)
n=2
for i=0,1,0.05 do
wait()
BPRef.CFrame=MainPosition*cf(0,-60*i,0)
BodPos.position=BPRef.Position
Neck.C0=cf(0,1,0)*euler(-0.2-0.2*i*n,0,0)
RW.C0=cf(1.5-0.5*i*n,0.5,-0.5*i*n)*euler(1.4*i*n,0,0.2-1.4*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.5*i*n,0.5,-0.5*i*n)*euler(1.6*i*n,0,-0.2+1.6*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1,0)*euler(-0.3+0.3*i*n,0,0.2)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.3+0.3*i*n,0,-0.2)
LH.C1=cf(0,1,0)
n=n-0.05
end
wait(1)
DarkLegEffect=false
local Head2=part(0,Character,0,1,BrickColor.new("Really black"),"Shade Head",vt(10,5,5))
local Torso2=part(0,Character,0,1,BrickColor.new("Really black"),"Shade Torso",vt(10,10,5))
local LeftArm2=part(0,Character,0,1,BrickColor.new("Really black"),"Shade Left Arm",vt(5,10,5))
local RightArm2=part(0,Character,0,1,BrickColor.new("Really black"),"Shade Right Arm",vt(5,10,5))
local LeftLeg2=part(0,Character,0,1,BrickColor.new("Really black"),"Shade Left Leg",vt(5,10,5))
local RightLeg2=part(0,Character,0,1,BrickColor.new("Really black"),"Shade Right Leg",vt(5,10,5))
Head2.CFrame=Head.CFrame
Torso2.CFrame=Head.CFrame
LeftArm2.CFrame=Head.CFrame
RightArm2.CFrame=Head.CFrame
LeftLeg2.CFrame=Head.CFrame
RightLeg2.CFrame=Head.CFrame 
local HMesh2=mesh("SpecialMesh",Head2,"Head","",vt(0,0,0),vt(1.25,1.25,1.25)) 
local Neck2=weld(Torso2,Torso2,Head2,cf(0,5,0))
Neck2.C1=cf(0,-2.5,0)
local RW2=weld(Torso2,Torso2,RightArm2,cf(7.5,2.5,0))
RW2.C1=cf(0,2.5,0)
local LW2=weld(Torso2,Torso2,LeftArm2,cf(-7.5,2.5,0))
LW2.C1=cf(0,2.5,0)
local RH2=weld(Torso2,Torso2,RightLeg2,cf(2.5,-5,0))
RH2.C1=cf(0,5,0)
local LH2=weld(Torso2,Torso2,LeftLeg2,cf(-2.5,-5,0))
LH2.C1=cf(0,5,0)
local RootJoint2=weld(Torso2,Torso2,Torso,cf(0,2.5,0))
local DarkBody=true
local cf1=0 
local cf2=4 
local cf3=0
local cf4=6
local cf5=2
local cf6=0
local cf7=-6
local cf8=2
local cf9=0
local cf10=2
local cf11=-4
local cf12=0
local cf13=-2
local cf14=-4
local cf15=0
coroutine.resume(coroutine.create(function() 
--Destroy all CC, Dark body assume angles of normal body
while DarkBody==true do
wait()
for _,c in pairs(Character:children()) do
for _,v in pairs(c:children()) do
if v.className=="BodyGyro" or v.className=="BodyPosition" or v.className=="BodyVelocity" or v.className=="BodyAngularVelocity" then
if v.Name~="VantaGyro" and v.Name~="VantaPos" then
print("dai")
v.Parent=nil
end
end
end
end
Neck2.C0=cf(cf1,cf2,cf3)*Neck.C0
RW2.C0=cf(cf4,cf5,cf6)*RW.C0
LW2.C0=cf(cf7,cf8,cf9)*LW.C0
RH2.C0=cf(cf10,cf11,cf12)*RH.C0
LH2.C0=cf(cf13,cf14,cf15)*LH.C0
end
end))
n=2
n2=1
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.4+0.4*i*n,0,0)
RW.C0=cf(1+0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.4+0.17*i*n,0,-1.2+2.77*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1-0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.6-0.03*i*n,0,1.4-2.97*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2+0.2*i*n)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2-0.2*i*n)
LH.C1=cf(0,1,0)
Head2.Transparency=n2
Torso2.Transparency=n2
LeftArm2.Transparency=n2
RightArm2.Transparency=n2
LeftLeg2.Transparency=n2
RightLeg2.Transparency=n2
n=n-0.1
n2=n2-0.05
end
wait(0.5)
RootJoint.C0=cf(0,-14.5,0)*euler(0,0,0)
BodPos.Parent=nil
Humanoid.WalkSpeed=25
n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i*n,0,1.57-1.27*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i*n,0,-1.57+1.27*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.4-0.4*i*n)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.4+0.4*i*n)
LH.C1=cf(0,1,0)
n=n-0.1
end
BodGy.maxTorque=Vector3.new(40000000,400000000,40000000)
BodGy.P=2000
BodGy.D=100
--BodGy.cframe=CF*euler(0,0,0)
coroutine.resume(coroutine.create(function() 
--Movement function
local flying=false
while DarkBody==true do
wait()
--[[print(RootPart.Velocity.z)
if RootPart.Velocity.x>=6 or RootPart.Velocity.x<=-6 or RootPart.Velocity.z>=6 or RootPart.Velocity.z<=6 then
Anim.Value="Walking"
else
Anim.Value="Standing"
end]]
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
if flying==true then
Anim.Value="Flying"
elseif torvel<1 then 
Anim.Value="Standing"
elseif torvel<30 then
Anim.Value="Walking"
end
target=findNearestTorso(RootPart.Position)
local hit,pos=rayCast(RootPart.Position,cf(RootPart.Position,RootPart.Position-vt(0,1,0)).lookVector,50,Character)
if hit==nil and flying==false then
flying=true
BodPos.maxForce=vt(0,math.huge,0)
if target~=nil then
BodPos.position=target.Position
else
BodPos.position=Torso2.Position
end
BodPos.Parent=RootPart
coroutine.resume(coroutine.create(function()
local ground=false
while ground==false do
wait()
if target~=nil then
BodPos.position=target.Position
end
local hit,pos=rayCast(RootPart.Position,cf(RootPart.Position,RootPart.Position-vt(0,1,0)).lookVector,50,Character)
if hit~=nil then
ground=true
flying=false
end
end
BodPos.Parent=nil
end))
end
if target~=nil then
local pos=Vector3.new(target.Parent.Torso.Position.x,RootPart.Position.Y,target.Parent.Torso.Position.z)
BodGy.cframe=cf(RootPart.Position,pos)
Humanoid:MoveTo(target.Position)
end
end
end))
coroutine.resume(coroutine.create(function() 
--Movement animations
--[[function onRunning(speed)
        if speed>1 then
                Anim.Value="Walking"
        else
                Anim.Value="Standing"
        end
end
Humanoid.Running:connect(onRunning)]]
local con1=nil
local con2=nil 
while DarkBody==true do
wait()
local walkingoffset1=0
local walkingoffset2=0
if attacking==false then
if Anim.Value=="Standing" then
RH.C0=cf(0.5,-1,0)*euler(0,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(0,0,0)
LH.C1=cf(0,1,0)
elseif Anim.Value=="Walking" then
n=2
for i=0,1,0.1 do
if Anim.Value=="Walking" then
--con1=LeftLeg2.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.5) end) 
--con2=RightLeg2.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.5) end) 
wait()
walkingoffset1=1.2*i*n
walkingoffset2=-1.2*i*n
end
RH.C0=cf(0.5,-1,0)*euler(walkingoffset1,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(walkingoffset2,0,0)
LH.C1=cf(0,1,0)
n=n-0.1
end
while Anim.Value=="Walking" and DarkBody==true do
wait()
n=2
for i=0,1,0.05 do
if Anim.Value=="Walking" then
wait()
walkingoffset1=1.2-2.4*i*n
walkingoffset2=-1.2+2.4*i*n
end
RH.C0=cf(0.5,-1,0)*euler(walkingoffset1,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(walkingoffset2,0,0)
LH.C1=cf(0,1,0)
n=n-0.05
end
n=2
for i=0,1,0.05 do
if Anim.Value=="Walking" then
wait()
walkingoffset1=-1.2+2.4*i*n
walkingoffset2=1.2-2.4*i*n
end
RH.C0=cf(0.5,-1,0)*euler(walkingoffset1,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(walkingoffset2,0,0)
LH.C1=cf(0,1,0)
n=n-0.05
end
end
if Anim.Value=="Standing" then
n=2
for i=0,1,0.1 do
wait()
RH.C0=cf(0.5,-1,0)*euler(walkingoffset1-walkingoffset1*i*n,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(walkingoffset2-walkingoffset2*i*n,0,0)
LH.C1=cf(0,1,0)
n=n-0.1
end
end
elseif Anim.Value=="Flying" then
while Anim.Value=="Flying" and DarkBody==true do
wait(.1)
RH.C0=cf(0.5,-1,0)*euler(-0.2,0,0.2)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2,0,-0.2)
LH.C1=cf(0,1,0)
MagicBlock(BrickColor.new("Really black"),LeftLeg2.CFrame*cf(0,-5,0),30,30,30,2,2,2,0.1)
MagicBlock(BrickColor.new("Really black"),RightLeg2.CFrame*cf(0,-5,0),30,30,30,2,2,2,0.1)
end
end
end
end
end))
coroutine.resume(coroutine.create(function() 
while Humanoid.Health>=HealtVal.Value-HealthNum.Value do
wait()
end
HealthNum.Value=HealthNum.Value+HealthNumber
mode.Value=2
end))
while mode.Value==3 do
Humanoid.PlatformStand=false
Humanoid.Sit=false
Humanoid.Parent=Character
if Torso.Parent==nil then
Humanoid.Parent=Character
RootPart.Parent=Character
BodPos.position=workspace["Map"].ReferenceMiddle.Position+vt(0,50,0)
BodPos.Parent=RootPart
RootPart.CFrame=BPRef.CFrame
BPRef.CFrame=Torso.CFrame
BodPos.position=BPRef.Position
Torso.Parent=Character
Head.Parent=Character
LeftArm.Parent=Character
RightArm.Parent=Character
LeftLeg.Parent=Character
RightLeg.Parent=Character 
Neck.Parent=Torso
RootJoint.Parent=Torso
RW.Parent=Torso
LW.Parent=Torso
RH.Parent=Torso
LH.Parent=Torso
wait(.1)
Humanoid.MaxHealth=HealtVal.Value
Humanoid.Health=HealtVal2.Value
coroutine.resume(coroutine.create(function()
        for i=1,20 do
                Humanoid.Health=HealtVal2.Value
                Neck.Parent=Torso
                RootJoint.Parent=Torso
                RW.Parent=Torso
                LW.Parent=Torso
                RH.Parent=Torso
                LH.Parent=Torso
        end
        Humanoid:TakeDamage(1)
end)) 
end
Neck.C0=cf(0,1,0)*euler(-0.2,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.3)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
wait(1)
local targetting=false
if target~=nil then
targetting=true
local dist=(RootPart.Position - target.Position).magnitude
if Anim.Value=="Floating" then
dist=500
end
coroutine.resume(coroutine.create(function()
while targetting==true do
target=findNearestTorso(RootPart.Position)
if target==nil then
target=Torso2
end
wait(0)
end
end))
if dist>=50 then
attack=math.random(1,2)
if attack==1 then --Dark Rain
local n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2+0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14*i*n,0,0.3-0.3*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i*n,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.1
end
for i=1,math.random(20,40) do
wait(.05)
MagicBlock(BrickColor.new("Really black"),RightArm2.CFrame*cf(0,-5,0),30,30,30,2,2,2,0.1)
local orb=part(3,Character,0,0.5,BrickColor.new("Really black"),"Orb",vt())
orb.Anchored=true
so("http://roblox.com/asset/?id=183763498",orb,1,1.2) 
local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(10,10,10))
orb.CFrame=cf(target.Position+vt(math.random(-10,10),math.random(50,100),math.random(-10,10)))
MagicCircle(BrickColor.new("Really black"),orb.CFrame,10,10,10,1,1,1,0.1)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
wait(1)
Part.Parent=nil
local spread=vt((math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16)*(Part.Position-(Part.Position+vt(0,-1,0))).magnitude/100
local TheHit=Part.Position+vt(0,-1,0)
local MouseLook=cf((Part.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(Part.Position,MouseLook.lookVector,999,Character)
local mag=(Part.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really black"),CFrame.new((Part.Position+pos)/2,pos)*angles(1.57,0,0) ,1,mag*5,1,0.5,0,0.5,0.05)
MagicBlock(BrickColor.new("Really black"),Part.CFrame,8,8,8,0.5,0.5,0.5,0.1)
MagicBlock(BrickColor.new("Really black"),cf(pos),15,15,15,6,6,6,0.1)
MagicRing(BrickColor.new("Really black"),cf(pos)*euler(1.57,math.random(-100,100)/100,math.random(-100,100)/100),1,1,1,2,2,2,0.05)
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf(pos)
so("http://roblox.com/asset/?id=183763487",ref,1,1) 
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Parent=nil
end),ref)
MagniDamage(ref,15,5,10,0,"Normal",RootPart)
if hit~=nil then
Damagefunc(hit,20,40,1,"Knockdown",RootPart,0)
end
end),orb,omsh,owld)
end
wait(0.5)
local n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(0.4-0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14-3.14*i*n,0,0.3*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i*n,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.1
end
wait(1)
elseif attack==2 then --Nocturne
local n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2+0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14*i*n,0,0.3-0.9*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(3.14*i*n,0,-0.3+0.9*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.1
end
local orb=part(3,Character,0,1,BrickColor.new("Really black"),"Orb",vt())
local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(15,15,15))
local owld=weld(orb,orb,Torso,cf(0,-10,0))
so("http://roblox.com/asset/?id=137463716",orb,1,0.6) 
for i=1,0.3,-0.01 do
wait()
orb.Transparency=i
omsh.Scale=omsh.Scale+vt(0.5,0.5,0.5)
MagicBlock(BrickColor.new("Really black"),orb.CFrame,15,15,15,2,2,2,0.1)
local ef=part(3,workspace,0,0,BrickColor.new("Really black"),"Effect",vt())
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Sphere","",vt(0,0,0),vt(2,math.random(1000,1500)/100,2))
local ceef=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,math.random(10,20),0)
ef.CFrame=orb.CFrame*ceef
game:GetService("Debris"):AddItem(ef,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.Transparency=i
Part.CFrame=Part.CFrame*cf(0,-1,0)
end
Part.Parent=nil
end),ef,emsh)
end
local Pos=cf(orb.Position,target.Position).lookVector
wait(.5)
orb.Parent=nil
local hit,pos = rayCast(orb.Position,Pos,999,Character)
local mag=(orb.Position-pos).magnitude 
MagicCircle(BrickColor.new("Really black"),cf(pos),15,15,15,8,8,8,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),15,15,15,8,8,8,0.02)
MagicCylinder(BrickColor.new("Really black"),CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0),10,mag*5,10,0.5,0,0.5,0.01)
for i=1,2 do
MagicRing(BrickColor.new("Really black"),cf(pos)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,1,1,1,0.04)
end
for i=1,5 do
tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(mag/5)*(i/2),0)
MagicRing(BrickColor.new("Really black"),tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
for i=0,5 do
tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(-mag/5)*(i/2),0)
MagicRing(BrickColor.new("Really black"),tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf(pos)
so("http://roblox.com/asset/?id=183763506",Torso,1,0.6) 
so("http://roblox.com/asset/?id=178452221",Torso,1,0.6) 
so("http://www.roblox.com/Asset?ID=87767777",Torso,1,1) 
so("http://roblox.com/asset/?id=183763506",ref,1,0.6) 
so("http://roblox.com/asset/?id=178452221",ref,1,0.6) 
so("http://www.roblox.com/Asset?ID=87767777",ref,1,1) 
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Parent=nil
end),ref)
MagniDamage(ref,20,10,30,40,"Knockdown",ref)
if hit~=nil then
Damagefunc(hit,30,70,50,"Knockdown",RootPart,0)
end
wait(1)
local n=2
for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(0.4-0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14-3.14*i*n,0,-0.6+0.9*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(3.14-3.14*i*n,0,0.6-0.9*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.1
end
end
else
attack=math.random(1,2)
if attack==1 then --Titan Fall
attacking=true
Humanoid.WalkSpeed=0
local n=2
for i=0,1,0.05 do
wait()
cf4=6-2*i*n
cf5=2+2*i*n
cf6=-2*i*n
cf7=-6+2*i*n
cf8=2+2*i*n
cf9=-2*i*n
Neck.C0=cf(0,1,0)*euler(-0.2+0.8*i*n,0,0)
RW.C0=cf(1.5-0.5*i*n,0.5+0.5*i*n,-0.5*i*n)*euler(3.14*i*n,0,0.3-0.9*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.5*i*n,0.5+0.5*i*n,-0.5*i*n)*euler(3.14*i*n,0,-0.3+0.9*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.05
end
wait(0.3)
so("http://www.roblox.com/asset/?id=169445121",Torso2,1,0.6) 
n=2
for i=0,1,0.2 do
wait()
MagicBlock(BrickColor.new("Really black"),RightArm2.CFrame*cf(0,-5,0),30,30,30,2,2,2,0.1)
MagicBlock(BrickColor.new("Really black"),LeftArm2.CFrame*cf(0,-5,0),30,30,30,2,2,2,0.1)
cf11=-4+2*i*n
cf12=-2*i*n
cf5=4-4*i*n
cf8=4-4*i*n
RootJoint.C0=cf(0,-14.5+3*i*n,0)*euler(0,0,0)
Neck.C0=cf(0,1,0)*euler(0.6-1*i*n,0,0)
RW.C0=cf(1,1-1*i*n,-0.5)*euler(3.14-2.64*i*n,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,1-1*i*n,-0.5)*euler(3.14-2.64*i*n,0,0.6)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1+0.5*i*n,-0.5*i*n)*euler(-0.1*i*n,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.6*i*n,0,0)
LH.C1=cf(0,1,0)
n=n-0.2
end
local cf2=RootPart.CFrame*cf(0,500,-20)
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf2
ref.Anchored=true
local TheHit=ref.Position+vt(0,-1,0)
local MouseLook=cf((ref.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(ref.Position,MouseLook.lookVector,999,Character)
local ref2=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref2.CFrame=cf(pos)
ref2.Anchored=true
local mag=(ref.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really black"),CFrame.new((ref.Position+pos)/2,pos)*angles(1.57,0,0),5,mag*5,5,1,0,1,0.05)
MagicCircle(BrickColor.new("Really black"),ref2.CFrame,15,15,15,8,8,8,0.02)
MagicBlock(BrickColor.new("Really black"),ref2.CFrame,15,15,15,3,3,3,0.02)
WaveEffect2(BrickColor.new("Really black"),ref2.CFrame,5,5,5,2,3,2,0.05)
MagicRing(BrickColor.new("Really black"),cf(ref2.Position)*euler(1.57,0,0),5,5,5,4,4,4,0.05)
MagniDamage(ref2,25,20,50,math.random(10,30),"Knockdown",ref2)
--so("http://roblox.com/asset/?id=144844438",ref2,1,0.8) 
so("http://roblox.com/asset/?id=87784452",ref2,1,0.8) 
so("http://roblox.com/asset/?id=183763515",ref2,1,0.8) 
game:GetService("Debris"):AddItem(ref,2)
game:GetService("Debris"):AddItem(ref2,2)
wait(1)
n=2
for i=0,1,0.1 do
wait()
cf4=4+2*i*n
cf5=2*i*n
cf6=-2+2*i*n
cf7=-4-2*i*n
cf8=2*i*n
cf9=-2+2*i*n
cf11=-4+2-2*i*n
cf12=-2+2*i*n
RootJoint.C0=cf(0,-14.5+3-3*i*n,0)*euler(0,0,0)
Neck.C0=cf(0,1,0)*euler(-0.4+0.2*i*n,0,0)
RW.C0=cf(1+0.5*i*n,0.5*i*n,-0.5+0.5*i*n)*euler(0.5-0.5*i*n,0,-0.6+0.9*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1-0.5*i*n,0.5*i*n,-0.5+0.5*i*n)*euler(0.5-0.5*i*n,0,0.6-0.9*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-0.5-0.5*i*n,-0.5+0.5*i*n)*euler(-0.1+0.1*i*n,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.6+0.6*i*n,0,0)
LH.C1=cf(0,1,0)
n=n-0.1
end
wait(1)
Humanoid.WalkSpeed=25
attacking=false
elseif attack==2 then --Dark Stomp
attacking=true
Humanoid.WalkSpeed=0
local n=2
for i=0,1,0.1 do
wait()
cf11=-4+2*i*n
cf12=-2*i*n
--cf13=-2
--cf14=-4
--cf15=0
RootJoint.C0=cf(0,-14.5,0)*euler(0.2*i*n,0,0)
Neck.C0=cf(0,1,0)*euler(-0.2-0.4*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2*i*n,0,0.3)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i*n,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1+0.5*i*n,-0.5*i*n)*euler(0.2*i*n,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2*i*n,0,0)
LH.C1=cf(0,1,0)
n=n-0.1
end
so("http://www.roblox.com/asset/?id=169445046",RightLeg2,1,0.6) 
local n=2
for i=0,1,0.2 do
wait()
cf11=-2-2*i*n
RH.C0=cf(0.5,-0.5-0.5*i*n,-0.5)*euler(0.2+0.1*i*n,0,0)
RH.C1=cf(0,1,0)
n=n-0.2
end
MagicCylinder(BrickColor.new("Really black"),cf(RightLeg2.Position+vt(0,-4,0)),10,4,10,5,3,5,0.05)
local numb=-8
local basecf=RootPart.CFrame
for i=1,4 do
local cf2=basecf*cf(0,0,numb)
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf2
ref.Anchored=true
local TheHit=ref.Position+vt(0,-1,0)
local MouseLook=cf((ref.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(ref.Position,MouseLook.lookVector,999,Character)
local ref2=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref2.CFrame=cf(pos)
ref2.Anchored=true
MagicCircle(BrickColor.new("Really black"),ref2.CFrame,15,15,15,8,8,8,0.02)
MagicWaveThing(BrickColor.new("Really black"),ref2.CFrame,5,5,5,2,2,2,0.05)
MagniDamage(ref2,20,20,30,math.random(5,20),"Normal",RootPart)
so("http://www.roblox.com/asset/?id=161006093",ref2,1,0.6) 
game:GetService("Debris"):AddItem(ref,2)
game:GetService("Debris"):AddItem(ref2,2)
numb=numb-15
wait(0.4)
end
--wait(1)
local n=2
for i=0,1,0.1 do
wait()
cf12=-2+2*i*n
RootJoint.C0=cf(0,-14.5,0)*euler(0.2-0.2*i*n,0,0)
Neck.C0=cf(0,1,0)*euler(-0.6+0.4*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+0.2*i*n,0,0.3)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i*n,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1,-0.5+0.5*i*n)*euler(0.3-0.3*i*n,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2+0.2*i*n,0,0)
LH.C1=cf(0,1,0)
n=n-0.1
end
Humanoid.WalkSpeed=25
attacking=false
wait(1)
elseif attack==3 then
end
end
targetting=false
end
end
--Destroy body
DarkBody=false
HealtVal2.Value=Humanoid.Health
Head2.Anchored=true
Torso2.Anchored=true
LeftArm2.Anchored=true
RightArm2.Anchored=true
LeftLeg2.Anchored=true
RightLeg2.Anchored=true 
Neck2.Parent=nil
RW2.Parent=nil
LW2.Parent=nil
RH2.Parent=nil
LH2.Parent=nil
RootJoint2.Parent=nil
coroutine.resume(coroutine.create(function()
for i=0.5,1,0.05 do
wait()
Head2.Transparency=i
Torso2.Transparency=i
LeftArm2.Transparency=i
RightArm2.Transparency=i
LeftLeg2.Transparency=i
RightLeg2.Transparency=i
end
Head2.Parent=nil
Torso2.Parent=nil
LeftArm2.Parent=nil
RightArm2.Parent=nil
LeftLeg2.Parent=nil
RightLeg2.Parent=nil
end))
DarkLegEffect=true
coroutine.resume(coroutine.create(function(Leg1,Leg2) 
while DarkLegEffect==true do
wait(0.1)
MagicBlock(BrickColor.new("Really black"),Leg1.CFrame*cf(0,-1,0),5,5,5,0.5,0.5,0.5,0.1)
MagicBlock(BrickColor.new("Really black"),Leg2.CFrame*cf(0,-1,0),5,5,5,0.5,0.5,0.5,0.1)
end
end),RightLeg,LeftLeg)
Humanoid.MaxHealth=math.huge
Humanoid.Health=math.huge
coroutine.resume(coroutine.create(function()
        for i=1,20 do
                Humanoid.Health=Humanoid.MaxHealth
        end
        Humanoid:TakeDamage(1)
end))
RootJoint.C0=cf(0,0,0)
MagicBlock(BrickColor.new("Really black"),Torso.CFrame,15,15,15,6,6,6,0.1)
BPRef.CFrame=MainPosition
Torso.CFrame=BPRef.CFrame
BodPos.position=BPRef.Position
BodGy.Parent=Torso
MagicBlock(BrickColor.new("Really black"),Torso.CFrame,15,15,15,6,6,6,0.1)
BodGy.cframe=CF*euler(0,1.57,0)
BodPos.Parent=RootPart
BodPos.maxForce=vt(math.huge,math.huge,math.huge)
coroutine.resume(coroutine.create(function()
for i=0,40 do
wait()
BodPos.Parent=RootPart
end
end))
for i=0,1,0.1 do
wait()
RH.C0=cf(0.5,-1,0)*euler(-0.3*i,0,0.2*i)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.3*i,0,-0.2*i)
LH.C1=cf(0,1,0)
end
if Humanoid.Health>0 then
SummonCrystals()
end
wait(1)
end
DarkLegEffect=false