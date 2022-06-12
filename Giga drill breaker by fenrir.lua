--Giga Drill Breaker
--By Fen
--Things to improve: Send the person into the air
 
Player = game:GetService("Players").serun15
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Neck = Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RW,LW=Instance.new("Weld"),Instance.new("Weld")
RH,LH=Instance.new("Weld"),Instance.new("Weld")
cam=workspace.CurrentCamera
local attack=false
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp
end
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh)
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part1,part0,c0,c1)
local weld = it("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C0 = c0
weld.C1 = c1
return weld
end
 
if Character:findFirstChild("Shades",true) ~= nil then
Character:findFirstChild("Shades",true).Parent = nil
end
 
local scale=1.5
local ShadeCenter=it("Part")
ShadeCenter.CanCollide=false
ShadeCenter.CFrame=Torso.CFrame
ShadeCenter.Transparency=1
ShadeCenter.Parent=Character
ShadeCenter.Name="Shades"
ShadeCenter.formFactor=3
ShadeCenter.Size=vt()
ShadeCenter.TopSurface=0
ShadeCenter.BottomSurface=0
local shadeweld=weld(ShadeCenter,ShadeCenter,Head,cf(0,0.4,-0.65),cf(0,0,0))
--[[scale=3
shadeweld.Part0=Torso
shadeweld.C0=cf(1.2,0,-0.7)*euler(0,-1,0.5)]]
local Shade1=it("Part")
Shade1.CanCollide=false
Shade1.CFrame=Torso.CFrame
Shade1.Reflectance=0.4
Shade1.Transparency=0.05
Shade1.BrickColor=BrickColor.new("Really black")
Shade1.Parent=ShadeCenter
Shade1.formFactor=3
Shade1.Size=vt()
Shade1.TopSurface=0
Shade1.BottomSurface=0
Shade1Mesh=it("SpecialMesh",Shade1)
Shade1Mesh.MeshType="Wedge"
Shade1Mesh.Scale=Vector3.new(0.075*scale,2*scale,2.8*scale)
local w1=weld(Shade1,Shade1,ShadeCenter,cf(-1*0.3*scale,0,0),angles(math.rad(-45),math.rad(90*-1),0))
coroutine.resume(coroutine.create(function(Mesh,Weld)
while true do
wait()
Mesh.Scale=Vector3.new(0.075*scale,2*scale,2.8*scale)
Weld.C0=cf(-1*0.3*scale,0,0)
Weld.C1=angles(math.rad(-45),math.rad(90*-1),0)
end
end),Shade1Mesh,w1)
local Shade2=it("Part")
Shade2.CanCollide=false
Shade2.CFrame=Torso.CFrame
Shade2.Reflectance=0.4
Shade2.Transparency=0.05
Shade2.BrickColor=BrickColor.new("Really black")
Shade2.Parent=ShadeCenter
Shade2.formFactor=3
Shade2.Size=vt()
Shade2.TopSurface=0
Shade2.BottomSurface=0
Shade2Mesh=it("SpecialMesh",Shade2)
Shade2Mesh.MeshType="Wedge"
Shade2Mesh.Scale=Vector3.new(0.075*scale,2*scale,2.8*scale)
local w2=weld(Shade2,Shade2,ShadeCenter,cf(1*0.3*scale,0,0),angles(math.rad(-45),math.rad(90*1),0))
coroutine.resume(coroutine.create(function(Mesh,Weld)
while true do
wait()
Mesh.Scale=Vector3.new(0.075*scale,2*scale,2.8*scale)
Weld.C0=cf(1*0.3*scale,0,0)
Weld.C1=angles(math.rad(-45),math.rad(90*1),0)
end
end),Shade2Mesh,w2)
 
if Backpack:findFirstChild("DRILL")~=nil then
--Backpack:findFirstChild("DRILL").Parent=nil
end
if (script.Parent.className ~= "HopperBin") then
Tool = Instance.new("HopperBin")
Tool.Parent = Backpack
Tool.Name = "CERTAIN KILL"
script.Parent = Tool
end
Bin = script.Parent
 
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=171070086")
function GIGADRILLBREAKER()
cam.CameraType="Scriptable"
local partpos=part(3,Character,0,1,BrickColor.new("Black"),"PartPos",vt(0.5,0.5,0.5))
partpos.Anchored=true
partpos.CFrame=Torso.CFrame
game:GetService("Debris"):AddItem(partpos,30)
local sound=Instance.new("Sound")
sound.Parent=partpos
sound.Volume=1
sound.SoundId="http://www.roblox.com/asset/?id=171070086"
--171070086
local sound2=Instance.new("Sound")
sound2.Parent=Torso
sound2.Volume=1
sound2.SoundId="http://www.roblox.com/asset/?id=171070086"
local sound3=Instance.new("Sound")
sound3.Parent=workspace.CurrentCamera
sound3.Volume=1
sound3.SoundId="http://www.roblox.com/asset/?id=171070086"
sound:Play()
sound2:Play()
sound3:Play()
bodypos=Instance.new("BodyPosition")
bodypos.P=4000
bodypos.maxForce=Vector3.new(5000000,50000000,5000000)*5000
bodypos.position=Torso.Position+Vector3.new(0,0,0)
bodypos.Parent=Torso
local bodygy=Instance.new("BodyGyro") --gg nubs
bodygy.P=15000
bodygy.D=100
bodygy.maxTorque=Vector3.new(500000000,500000000,500000000)
bodygy.cframe=RootPart.CFrame*euler(0,0,0)
bodygy.Parent=RootPart
RSH=Torso["Right Shoulder"]
LSH=Torso["Left Shoulder"]
RHP=Torso["Right Hip"]
LHP=Torso["Left Hip"]
--
RSH.Parent=nil
LSH.Parent=nil
RHP.Parent=nil
LHP.Parent=nil
--
RW.Part0=Torso
RW.C0=cf(1.5,0.5,0)
RW.C1=cf(0,0.5,0)
RW.Part1=RightArm
RW.Parent=Torso
--
LW.Part0=Torso
LW.C0=cf(-1.5,0.5,0)
LW.C1=cf(0,0.5,0)
LW.Part1=LeftArm
LW.Parent=Torso
--_G.L = LW
--
RH.Part0=Torso
RH.C0=cf(0.5,-1,0)
RH.C1=cf(0,1,0)
RH.Part1=RightLeg
RH.Parent=Torso
--
LH.Part0=Torso
LH.C0=cf(-0.5,-1,0)
LH.C1=cf(0,1,0)
LH.Part1=LeftLeg
LH.Parent=Torso
--_G.L = LW
--
wait(.2)
shadeweld.Part0=RootPart
shadeweld.C0=cf(0,1.9,-0.65)*euler(0,0,0)
numb=2
for i=0,1,0.1 do
wait()
--cam.CoordinateFrame=Torso.CFrame
cam.CoordinateFrame=ShadeCenter.CFrame*euler(0,3.14,0)*cf(0,0,5)
scale=1.5+1*i
--shadeweld.C0=cf(0,0.4+2*i,-0.65)*euler(0,0,-0.1*i)
shadeweld.C0=cf(0,1.9+8*i*numb,-0.65)*euler(0,0,-0.2*i)
Torso.Neck.C0=necko
RootJoint.C0=RootCF
RW.C0=cf(1.5,0.5,0)
LW.C0=cf(-1.5,0.5,0)
RH.C0=cf(0.5,-1,0)
LH.C0=cf(-0.5,-1,0)
numb=numb-0.1
end
shadeweld.Part0=RightArm
shadeweld.C0=cf(0,6,0)*euler(3.14,0,-0.2)
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=ShadeCenter.CFrame*euler(0,0,0)*cf(0,0,5)
scale=2.5+0.5*i
--shadeweld.C0=cf(0,0.4+2*i,-0.65)*euler(0,0,-0.1*i)
--shadeweld.C0=cf(0,1.9+2-2*i,-0.65)*euler(0,0,-0.2)
shadeweld.C0=euler(-3.14*i,0,0)*cf(-1.5*i,8-7.5*i,0)*euler(3.14,0,-0.2)
Torso.Neck.C0=necko*euler(0,0,-0.2*i)
RootJoint.C0=RootCF*euler(0,0,0.2*i)
RW.C0=cf(1.5,0.5,0)*euler(3*i,0,0.2*i)
LW.C0=cf(-1.5,0.5,0)
RH.C0=cf(0.5,-1,0)
LH.C0=cf(-0.5,-1,0)
end
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1*i,3.14-0.1*i,0)*cf(0,0,9+2*i)
shadeweld.C0=euler(-3.14,0,0)*cf(-1.5,0.5,0)*euler(3.14,0,-0.2)
Torso.Neck.C0=necko*euler(0,0,-0.2+0.3*i)
RootJoint.C0=RootCF*euler(0.1*i,0,0.2-0.3*i)
RW.C0=cf(1.5,0.5,0)*euler(3-1.5*i,0,0.2+0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.3*i)
RH.C0=cf(0.5,-1,0)*euler(0.2*i,0,0.2*i)
LH.C0=cf(-0.5,-1,0)*euler(-0.1*i,0,-0.3*i)
end
n=2
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1,3.04,0)*cf(0,0,7)
Torso.Neck.C0=necko*euler(0,0,0.1+0.1*i*n)
RootJoint.C0=RootCF*euler(0.1+0.1*i*n,0,-0.1-0.1*i*n)
RW.C0=cf(1.5,0.5,0)*euler(1.5-0.2*i*n,0,0.4+0.2*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(0.2*i*n,0,-0.3-0.1*i*n)
RH.C0=cf(0.5,-1,0)*euler(0.2+0.1*i*n,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1-0.1*i*n,0,-0.3)
n=n-0.1
end
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2,3,0)*cf(0,0,5)
Torso.Neck.C0=necko*euler(0,0,0.2+0.7*i)
RootJoint.C0=RootCF*euler(0.2,0,-0.2-1*i)
RW.C0=cf(1.5,0.5,0)*euler(1.3,0,0.6+2*i)
LW.C0=cf(-1.5,0.5,0)*euler(0.2+1*i,0,-0.4-0.6*i)
RH.C0=cf(0.5,-1,0)*euler(0.3-0.2*i,0,0.2-0.3*i)
LH.C0=cf(-0.5,-1,0)*euler(-0.2,0,-0.3)
end
n=2
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2,3,0)*cf(0,0,5)
Torso.Neck.C0=necko*euler(0,0,0.9-0.4*i*n)
RootJoint.C0=RootCF*euler(0.2,0,-1.2+0.7*i*n)
RW.C0=cf(1.5,0.5,0)*euler(1.3+0.4*i*n,0,2.6-0.4*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-1-1*i*n)
RH.C0=cf(0.5,-1,0)*euler(0.1,0,-0.1+0.2*i*n)
LH.C0=cf(-0.5,-1,0)*euler(-0.2+0.1*i*n,0,-0.3+0.2*i*n)
n=n-0.1
end
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2,3,0)*cf(0,0,5)
Torso.Neck.C0=necko*euler(0,0,0.5-0.1*i)
RootJoint.C0=RootCF*euler(0.2-0.1*i,0.2*i,-0.5+0.1*i)
RW.C0=cf(1.5,0.5,0)*euler(1.7+2.7*i,-1.57*i,2.2-2*i)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-2+1*i)
RH.C0=cf(0.5,-1,0)*euler(0.1,0,0.1)
LH.C0=cf(-0.5,-1,0)*euler(-0.1,0,-0.1-0.2*i)
end
n=2
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2,3,0)*cf(0,0,5+1*i)
Torso.Neck.C0=necko*euler(-0.1*i*n,0,0.4-0.2*i*n)
RootJoint.C0=RootCF*euler(0.1+0.3*i*n,0.2+0.2*i*n,-0.4+0.2*i*n)
RW.C0=cf(1.5,0.5,0)*euler(4.4-1*i*n,-1.57,0.2)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-1)
RH.C0=cf(0.5,-1,0)*euler(0.1,0,0.1)
LH.C0=cf(-0.5,-1,0)*euler(-0.1+0.5*i*n,0,-0.3)
n=n-0.1
end
for i=0,1,0.2 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2-0.1*i,3-0.1*i,0)*cf(0,0,6+10*i)
Torso.Neck.C0=necko*euler(-0.1,0,0.2)
RootJoint.C0=RootCF*euler(0.4+0.2*i,0.4,-0.2)
RW.C0=cf(1.5,0.5,0)*euler(3.4-2.4*i,-1.57,0.2)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-1-0.2*i)
RH.C0=cf(0.5,-1,0)*euler(0.1-0.3*i,0,0.1+0.2*i)
LH.C0=cf(-0.5,-1,0)*euler(0.4+0.2*i,0,-0.3)
end
print("DO THROW")
local ref=part(3,Character,0,1,BrickColor.new("White"),"Reference",vt(0.5,0.5,0.5))
ref.Anchored=true
ref.CFrame=RootPart.CFrame*cf(0,0,-200)
game:GetService("Debris"):AddItem(ref,7)
canhit=false
local target=nil
bb=Instance.new("BodyPosition")
local gudbai=Instance.new("BodyGyro")
con1=ShadeCenter.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent:findFirstChild("Torso")~=nil and hit.Parent~=Character then
if canhit==false then
canhit=true
tors=hit.Parent.Torso
print(hit.Parent)
target=hit.Parent
bb.Parent=tors
bb.maxForce=Vector3.new(50000000000000000,50000000000000000,50000000000000000)
bb.position=ref.Position
end
elseif hit.Name~="Base" and canhit==false and hit.Name~="Reference" then
--hit.Anchored=false
--hit:BreakJoints()
--hit.Velocity=Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
end
end)
shadeweld.Part0=nil
--[[local bodypos2=Instance.new("BodyPosition")
bodypos2.P=4000
bodypos2.maxForce=Vector3.new(5000000,50000000,5000000)*5000
bodypos2.position=ref.Position
bodypos2.Parent=ShadeCenter]]
prop=Instance.new("RocketPropulsion")
prop.MaxSpeed=5000
prop.CartoonFactor=0
prop.MaxThrust=10000
prop.Parent=ShadeCenter
prop.Target=ref
prop.ThrustD=1.5
prop.TurnD=0
prop.TurnP=0
prop:Fire()
local gg=Instance.new("BodyGyro") --gg nubs
gg.P=15000
gg.D=100
gg.maxTorque=Vector3.new(500000000,500000000,500000000)
gg.cframe=RootPart.CFrame*euler(0,1.57,0)
gg.Parent=ShadeCenter
coroutine.resume(coroutine.create(function(Part,Gyro)
while Gyro.Parent~=nil do
wait()
Gyro.cframe=Gyro.cframe*euler(0,0,-1)
end
end),ShadeCenter,gg)
for i=0,1,0.2 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1-0.1*i,2.9+0.1*i,0)*cf(0,0,16+5*i)
Torso.Neck.C0=necko*euler(-0.1,0,0.2)
RootJoint.C0=RootCF*cf(0,0,-0.5*i)*euler(0.6+0.8*i,0.4+0.4*i,-0.2-0.2*i)
RootJoint.C1=RootCF*euler(0.7*i,0,-0.2*i)
RW.C0=cf(1.5,0.5,0)*euler(1,-1.57,0.2)
RW.C1=cf(0,0.5,0)*euler(0.5*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-1.2-0.2*i)
RH.C0=cf(0.5,-1,0)*euler(0.1-0.3,0,0.1+0.2)
LH.C0=cf(-0.5,-1,0)*euler(0.6+0.2*i,0,-0.3-0.1*i)
end
coroutine.resume(coroutine.create(function(Camera)
print(canhit)
print(attack)
while canhit==false and attack==true do
wait()
Camera.CoordinateFrame=ShadeCenter.CFrame*cf(0,0,7)
--Camera.CoordinateFrame=cf(ShadeCenter.Position)*cf(0,0,5)
end
for i=0,1,0.1 do
wait()
if tors~=nil then
Camera.CoordinateFrame=tors.CFrame*cf(0,0,7)
end
end
end),cam)
wait(1.5)
if target~=nil then
tors=target.Torso
partpos.CFrame=tors.CFrame
ShadesClone1=ShadeCenter:Clone()
ShadesClone1.Parent=workspace
local weld1=weld(ShadesClone1,ShadesClone1,tors,cf(0,0,0),cf(0,0,0))
ShadesClone2=ShadeCenter:Clone()
ShadesClone2.Parent=workspace
local weld2=weld(ShadesClone2,ShadesClone2,tors,cf(0,0,0),cf(0,0,0))
--[[bb2=Instance.new("BodyPosition")
bb2.Parent=ShadesClone
bb2.maxForce=Vector3.new(50000000000000000,50000000000000000,50000000000000000)
bb2.position=tors.Position+vt(math.random(-2,2),math.random(-2,2),math.random(-2,2))
coroutine.resume(coroutine.create(function(Part,Gyro)
end),ShadesClone,bb2)
local gg2=Instance.new("BodyGyro")
gg2.P=15000
gg2.D=100
gg2.maxTorque=Vector3.new(500000000,500000000,500000000)
gg2.cframe=tors.CFrame*euler(0,1.57,0)
gg2.Parent=ShadesClone
coroutine.resume(coroutine.create(function(Part,Gyro)
while Gyro.Parent~=nil do
wait()
print(Gyro.cframe)
Gyro.cframe=Gyro.cframe*euler(0,0,-0.5)
end
end),ShadesClone,gg2)]]
Shade1.Transparency=1
Shade2.Transparency=1
shadeweld.Part0=Head
shadeweld.C0=cf(0,0.4,-0.65)
prop.Parent=nil
gg.Parent=nil
scale=1.5
gudbai.P=15000
gudbai.D=100
gudbai.maxTorque=Vector3.new(500000000,500000000,500000000)
gudbai.cframe=cf(0,0,0)
gudbai.Parent=tors
camCF=tors.CFrame
for i=0,1,0.02 do
wait()
cam.CoordinateFrame=camCF*euler(-0.2*i,0,0)*cf(0,0,7)
weld1.C0=euler(0,0,0)*cf(20*i,0,0)
weld1.C1=euler(0,0,7*i)
weld2.C0=euler(0,0,0)*cf(-20*i,0,0)
weld2.C1=euler(0,0,7*i)
gudbai.cframe=cf(0,0,0)
Torso.Neck.C0=necko*euler(-0.1+0.1*i,0,0.2-0.2*i)
RootJoint.C0=RootCF*cf(0,0,-0.5+0.5*i)*euler(1.4-1.4*i,0.8-0.8*i,-0.4+0.4*i)
RootJoint.C1=RootCF*euler(0.7-0.7*i,0,-0.2+0.2*i)
RW.C0=cf(1.5,0.5,0)*euler(1-1*i,-1.57+1.57*i,0.2-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0.5-0.5*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.2-1.2*i,0,-1.4+1.4*i)
RH.C0=cf(0.5,-1,0)*euler(-0.2+0.2*i,0,0.4-0.4*i)
LH.C0=cf(-0.5,-1,0)*euler(0.8-0.8*i,0,-0.4+0.4*i)
end
for i=0,1,0.02 do
wait()
cam.CoordinateFrame=camCF*euler(-0.2+0.2*i,0,0)*cf(0,0,7+2*i)
weld1.C0=euler(0,0,0)*cf(20-15*i,0,0)
weld1.C1=euler(0,0,7+5*i)
weld2.C0=euler(0,0,0)*cf(-20+15*i,0,0)
weld2.C1=euler(0,0,7+5*i)
gudbai.cframe=cf(0,0,0)
end
for i=0,6.5,0.1 do
wait()
cam.CoordinateFrame=camCF*euler(0,1*i,0)*cf(0,0,9)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=ShadesClone1.CFrame
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(.25,1,.25))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0,0.8,0)
end
Part.Parent=nil
end),prt,msh)
weld1.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(math.random(-300,300)/100,math.random(-300,300)/100,math.random(-300,300)/100)
weld2.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(math.random(-300,300)/100,math.random(-300,300)/100,math.random(-300,300)/100)
gudbai.cframe=cf(0,0,0)
end
wait()
weld1.C0=cf(1.2,0,-0.7)*euler(0,-1,0.5)
--weld1.C0=cf(2,1,0)*euler(0,0,1.3)
--weld1.C0=cf(-2,0,0)*euler(0,1.57,0)
weld2.C0=cf(-1.2,0,-0.7)*euler(0,-1,-0.5)
gudbai.P=15000
gudbai.D=100
gudbai.maxTorque=Vector3.new(500000000,500000000,500000000)
gudbai.cframe=cf(0,0,0)
gudbai.Parent=tors
wait(1)
partpos.CFrame=tors.CFrame
--cam.CameraType="Custom"
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1*i,3.14,0)*cf(0,0,9+4*i)
Torso.Neck.C0=necko*euler(0.2*i,0,0)
RootJoint.C0=RootCF*cf(0,0,-0.3*i)*euler(0.3*i,0,0)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(2.8*i,0,0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(2.8*i,0,-0.2*i)
RH.C0=cf(0.5,-1+0.2*i,-0.1*i)*euler(0.1*i,0,0.2*i)
LH.C0=cf(-0.5,-1+0.2*i,-0.1*i)*euler(0.1*i,0,-0.2*i)
end
n=2
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1+0.2*i,3.14-0.24*i,0)*cf(0,0,13)
Torso.Neck.C0=necko*euler(0.2,0,0)
RootJoint.C0=RootCF*cf(0,0,-0.3)*euler(0.3+0.1*i*n,0,0)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(2.8+0.1*i*n,0,0.2-0.3*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(2.8+0.1*i*n,0,-0.2+0.3*i*n)
RH.C0=cf(0.5,-1+0.2,-0.1)*euler(0.1+0.1*i*n,0,0.2)
LH.C0=cf(-0.5,-1+0.2,-0.1)*euler(0.1+0.1*i*n,0,-0.2)
n=n-0.1
end
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1,2.9+0.3*i,0)*cf(0,0,13-2*i)
Torso.Neck.C0=necko*euler(0.2-0.3*i,0,0)
RootJoint.C0=RootCF*cf(0,0,-0.3+0.3*i)*euler(0.4-0.5*i,0,0)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(2.9-3*i,0,-0.1+0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(2.9,0,0.1-0.3*i)
RH.C0=cf(0.5,-0.8-0.2*i,-0.1+0.1*i)*euler(0.2-0.3*i,0,0.2)
LH.C0=cf(-0.5,-0.8-0.2*i,-0.1+0.1*i)*euler(0.2-0.3*i,0,-0.2)
end
n=2
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1,3.2+0.1*i,0)*cf(0,0,13)
Torso.Neck.C0=necko*euler(-0.1,0,0)
RootJoint.C0=RootCF*cf(0,0,0)*euler(-0.1,0,0)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.1,0,0.1)
LW.C0=cf(-1.5,0.5-0.2*i*n,0)*euler(2.9+0.1*i*n,0,-0.2-0.1*i*n)
RH.C0=cf(0.5,-1,0)*euler(-0.1,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1,0,-0.2)
n=n-0.1
end
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1,3.3,0)*cf(0,0,13)
Torso.Neck.C0=necko*euler(-0.1,0,-0.3*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(-0.1,0,0.3*i)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.1+3.2*i,0,0.1)
LW.C0=cf(-1.5,0.3+0.2,0)*euler(3-3.2*i,0,-0.3+0.2*i)
RH.C0=cf(0.5,-1,0)*euler(-0.1,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1,0,-0.2)
end
-- u gon get fuck'd
drill=Instance.new("Model")
drill.Parent=Character
drill.Name="Drill"
local drillp=part(3,drill,0,0,BrickColor.new("Medium stone grey"),"Drill Part",vt(0.5,0.5,0.5))
drillmsh=mesh("SpecialMesh",drillp,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(.5,1,.5))
local drillweld=weld(drillp,drillp,RightArm,cf(0,-1,0)*euler(3.14,0,0),cf(0,0,0))
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1+0.2*i,3.3-0.2*i,0)*cf(0,0,13-3*i)
Torso.Neck.C0=necko*euler(-0.1-0.1*i,0,-0.3)
RootJoint.C0=RootCF*cf(0,0,0)*euler(-0.1,0,0.3)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.1+0.1*i,0,0.1-0.1*i)
LW.C0=cf(-1.5,0.3+0.2,0)*euler(-0.2,0,-0.1)
RH.C0=cf(0.5,-1,0)*euler(-0.1,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1,0,-0.2)
end
wait(0.5)
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.3,3.1,0)*cf(0,0,10-1*i)
drillmsh.Scale=vt(.5,1+8*i,.5)
drillweld.C0=cf(0,-1-7*i,0)*euler(3.14,0,0)
end
wait(0.4)
for i=0,1,0.2 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.3-0.4*i,3.1,0)*cf(0,0,9+7*i)
drillmsh.Scale=vt(.5+6.5*i,9,.5+6.5*i)
drillweld.C0=cf(0,-8,0)*euler(3.14,0,0)
end
local drillpcir=part(3,drill,0,0,BrickColor.new("Medium stone grey"),"Drill Circle",vt(0.5,0.5,0.5))
drillmshc=mesh("CylinderMesh",drillpcir,"","",vt(0,0,0),vt(18,1,18))
local drillweldc=weld(drillpcir,drillpcir,drillp,cf(0,-7,0)*euler(0,0,0),cf(0,0,0))
coroutine.resume(coroutine.create(function(Part)
numb1=-7
numb2=0
numb3=4.7
for i=1,24 do
local drillp2=part(3,drill,0,0,BrickColor.new("Black"),"Drill Part2",vt(0.5,0.5,0.5))
drillmsh2=mesh("BlockMesh",drillp2,"","",vt(0,0,0),vt(1,1,1))
local drillweld2=weld(drillp2,drillp2,Part,euler(0,numb2,0)*cf(numb3,numb1,0),cf(0,0,0))
local drillp3=part(3,drill,0,0,BrickColor.new("Black"),"Drill Part3",vt(0.5,0.5,0.5))
drillmsh3=mesh("BlockMesh",drillp3,"","",vt(0,0,0),vt(1,1,1))
local drillweld3=weld(drillp3,drillp3,Part,euler(0,1.57,0)*euler(0,numb2,0)*cf(numb3,numb1,0),cf(0,0,0))
local drillp4=part(3,drill,0,0,BrickColor.new("Black"),"Drill Part4",vt(0.5,0.5,0.5))
drillmsh4=mesh("BlockMesh",drillp4,"","",vt(0,0,0),vt(1,1,1))
local drillweld4=weld(drillp4,drillp4,Part,euler(0,3.14,0)*euler(0,numb2,0)*cf(numb3,numb1,0),cf(0,0,0))
local drillp5=part(3,drill,0,0,BrickColor.new("Black"),"Drill Part5",vt(0.5,0.5,0.5))
drillmsh5=mesh("BlockMesh",drillp5,"","",vt(0,0,0),vt(1,1,1))
local drillweld5=weld(drillp5,drillp5,Part,euler(0,4.71,0)*euler(0,numb2,0)*cf(numb3,numb1,0),cf(0,0,0))
numb1=numb1+0.6
numb2=numb2+(0.785)/4
numb3=numb3-0.2
wait()
end
end),drillp)
wait(1)
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1-0.4*i,3.1,0)*cf(0,0,16-7*i)
Torso.Neck.C0=necko*euler(-0.2+0.2*i,0,-0.3+0.2*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(-0.1+0.1*i,0,0.3-0.2*i)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(3.2-1.5*i,0,0.2-1.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2-0.2*i,0,-0.1)
RH.C0=cf(0.5,-1,0)*euler(-0.1+0.1*i,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1+0.1*i,0,-0.2)
end
for i=0,1,0.02 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.5+0.6*i,3.1-3.7*i,0)*cf(-3*i,0,9+1*i)
Torso.Neck.C0=necko*euler(0,0,-0.1+1.67*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.1-1.67*i)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1-1.5*i,0.5,-0.5-0.5*i)*euler(1.7-0.2*i,0,-1-0.57*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,3.14*i,-0.1)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
end
Torso.Neck.C0=necko*euler(0,0,1.57)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.-1.57)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1-1.5,0.5,-1)*euler(1.5,0,-1.57)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,3.14,0.1)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
doing=true
coroutine.resume(coroutine.create(function(Model,Weld)
i=0
num=0
while Model.Parent~=nil and doing==true do
wait()
Weld.C0=cf(0,-8,0)*euler(3.14,i,0)
i=i+0.5
if i%1==0 then
local prt=part(3,workspace,0,0,BrickColor.new("Cyan"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=RootPart.CFrame
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(num,num,num))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(num,num,num)
end
Part.Parent=nil
end),prt,msh)
end
if num<=0.8 then
num=num+0.05
end
end
end),drill,drillweld)
wait(2.5)
bodypos.Parent=nil
for i=1,5,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1,-0.6,0)*cf(-3,0,10)
partpos.CFrame=tors.CFrame
RootPart.CFrame=RootPart.CFrame*cf(0,0,-i)
if i>=4.85 and i<=4.90 then
print("ded")
coroutine.resume(coroutine.create(function()
for i=1,10 do
local prt=part(3,workspace,0,0,BrickColor.new("Black"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=tors.CFrame
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(2,2,2))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(1,1,1)
end
Part.Parent=nil
end),prt,msh)
wait()
end
end))
end
end
doing=false
print("end")
bodypos.P=4000
bodypos.maxForce=Vector3.new(5000000,50000000,5000000)*5000
bodypos.position=Torso.Position+Vector3.new(0,0,0)
bodypos.Parent=Torso
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1,3.4,0)*cf(0,0,15)
wait(2)
for i=0,1,0.05 do
wait()
Torso.Neck.C0=necko*euler(0,0,1.57-1.77*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.-1.57+1.77*i)
RW.C0=cf(1-1.5+1*i,0.5,-1+0.5*i)*euler(1.5+0.4*i,0,-1.57+0.57*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,3.14-3.14*i,0.1)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
end
for _,v in pairs(drill:children()) do
if v.Name~="Drill Part" then
v.Parent=nil
end
end
for i=0,1,0.2 do
wait()
drillmsh.Scale=vt(7-6.5*i,9,7-6.5*i)
Torso.Neck.C0=necko*euler(0,0,-0.2+0.6*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.2-0.6*i)
RW.C0=cf(1-0.5+1*i,0.5,-0.5+0.5*i)*euler(1.9-1.4*i,0,-1+2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,0.1-0.2*i)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
end
n=2
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0,0,0.4+0.1*i*n)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,-0.4-0.1*i*n)
RW.C0=cf(1.5,0.5,0)*euler(0.5-0.1*i*n,0,1+0.1*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.1)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
n=n-0.2
end
wait(0.2)
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.1*i,0,0.5+0.1*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,-0.5-0.2*i)
RW.C0=cf(1.5-0.5*i,0.5,0.5*i)*euler(0.4,0,1-0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.1-0.2*i)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
drillmsh.Scale=vt(.5,9-8*i,.5)
drillweld.C0=cf(0,-8+7*i,0)*euler(3.14,0,0)
end
n=2
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.1+0.1*i*n,0,0.6+0.1*i*n)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,-0.7-0.1*i*n)
RW.C0=cf(1.5-0.5,0.5,0.5)*euler(0.4-0.1*i*n,0,0.8+0.1*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.3-0.1*i*n)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
n=n-0.2
end
drill.Parent=nil
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.2,0.2*i,0.7)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,-0.9)
RW.C0=cf(1.5-0.5+0.5*i,0.5,0.5-0.5*i)*euler(0.3,0,0.9-0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.4+0.1*i)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
end
--[[sound:Stop()
sound2:Stop()
sound3:Stop()
DONTLOSEYOURWAAAAAAAY=Instance.new("Sound")
DONTLOSEYOURWAAAAAAAY.Parent=tors
DONTLOSEYOURWAAAAAAAY.Volume=1
DONTLOSEYOURWAAAAAAAY.SoundId="http://www.roblox.com/asset/?id=138109980"
DONTLOSEYOURWAAAAAAAY:Play()
DONTLOSEYOURWAAAAAAAY=Instance.new("Sound")
DONTLOSEYOURWAAAAAAAY.Parent=Torso
DONTLOSEYOURWAAAAAAAY.Volume=1
DONTLOSEYOURWAAAAAAAY.SoundId="http://www.roblox.com/asset/?id=138109980"
DONTLOSEYOURWAAAAAAAY:Play()]]
wait(2.2)
--very ded
POS=tors.Position
boomCF=tors.CFrame
e=Instance.new("Explosion")
e.BlastRadius=30
e.Position=POS
e.BlastPressure=e.BlastPressure*2.5
e.Parent=workspace
local prt=part(3,workspace,0,0,BrickColor.new("Bright red"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=boomCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(10,10,10))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.01 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(1.5,1.5,1.5)
end
Part.Parent=nil
end),prt,msh)
for i=1,10 do
wait()
local prt=part(3,workspace,0,0,BrickColor.new("Bright red"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=boomCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(10,10,10))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.02 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(1.5,1.5,1.5)
end
Part.Parent=nil
end),prt,msh)
end
wait(1.5)
e=Instance.new("Explosion")
e.BlastRadius=30
e.Position=POS
e.BlastPressure=e.BlastPressure*2.5
e.Parent=workspace
local prt=part(3,workspace,0,0,BrickColor.new("Bright yellow"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=boomCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(10,10,10))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.01 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i/2
Mesh.Scale=Mesh.Scale+vt(3,3,3)
end
Part.Parent=nil
end),prt,msh)
for i=1,10 do
wait(0.1)
local prt=part(3,workspace,0,0,BrickColor.new("Bright red"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=boomCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(10,10,10))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.01 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(1,1,1)
end
Part.Parent=nil
end),prt,msh)
end
--wait(1.5)
wait(1.5)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=ShadeCenter.CFrame
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(.5,1,.5))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.7,0.1)
end
Part.Parent=nil
end),prt,msh)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=ShadeCenter.CFrame*euler(1.57,0,0)
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(.5,1,.5))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.7,0.1)
end
Part.Parent=nil
end),prt,msh)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=ShadeCenter.CFrame*euler(0,0,1.57)
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(.5,1,.5))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.7,0.1)
end
Part.Parent=nil
end),prt,msh)
Shade1.Transparency=0.05
Shade2.Transparency=0.05
wait(1)
sound:Stop()
wait()
sound2:Stop()
sound3:Stop()
wait(1)
ShadesClone1.Parent=nil
ShadesClone2.Parent=nil
end
wait()
print(target)
con1:disconnect()
bb.Parent=nil
gudbai.Parent=nil
wait(.5)
sound:Stop()
wait()
sound2:Stop()
sound3:Stop()
--bodypos2.Parent=nil
bodypos.Parent=nil
bodygy.Parent=nil
prop.Parent=nil
gg.Parent=nil
scale=1.5
Torso.Neck.C0=necko
RootJoint.C0=RootCF
RootJoint.C1=RootCF
shadeweld.Part0=Head
shadeweld.C0=cf(0,0.4,-0.65)
prop.Parent=nil
gg.Parent=nil
scale=1.5
RW.Parent=nil
LW.Parent=nil
RSH.Parent=Torso
LSH.Parent=Torso
RHP.Parent=Torso
LHP.Parent=Torso
end
 
function ob1d()
if attack==true then return end
attack=true
print("DRILLBREEEEEAK")
GIGADRILLBREAKER()
attack=false
cam.CameraType="Custom"
end
 
function s(mouse)
mouse.Button1Down:connect(function() ob1d() end)
end
 
Bin.Selected:connect(s)