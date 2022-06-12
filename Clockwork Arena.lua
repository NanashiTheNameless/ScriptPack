--[[

Clockwork Arena made by Fenrier.

]] 

it=Instance.new

vt=Vector3.new

cf=CFrame.new

euler=CFrame.fromEulerAnglesXYZ

angles=CFrame.Angles

teledebounce=false

teledebounce2=false

c=game.Players:children()

--[[for i=1,#c do

if c[i].className=="Player" and c[i].Character:findFirstChild("Torso")~=nil then

c[i].Character.Torso.CFrame=c[i].Character.Torso.CFrame*cf(0,50,0)

end

end]]

 

if workspace:findFirstChild("Clockwork Arena",true) ~= nil then 

workspace:findFirstChild("Clockwork Arena",true).Parent = nil 

end 

 

 

function part(formfactor,parent,reflectance,transparency,brickcolor,material,name,size,cframe)

local fp = it("Part")

fp.formFactor = formfactor 

fp.Parent = parent

fp.Reflectance = reflectance

fp.Transparency = transparency

fp.CanCollide = true 

fp.Anchored = true

fp.Locked=true

fp.BrickColor = brickcolor

fp.Name = name

fp.Size = size

fp.Material = material

fp.CFrame = cframe

fp.BottomSurface="Smooth"

fp.TopSurface="Smooth"

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

 

function weld(parent,part0,part1,c0)

local weld = it("Weld") 

weld.Parent = parent

weld.Part0 = part0 

weld.Part1 = part1 

weld.C0 = c0

return weld

end

 

local modelzorz = Instance.new("Model") 

modelzorz.Parent = workspace

modelzorz.Name = "Clockwork Arena" 

script.Parent=modelzorz

CF=cf(0,0,0)

 

local prt1=part(3,modelzorz,0,0,BrickColor.new("Dark orange"),"Slate","Part1",vt(400,10,400),CF)

local prt1b=part(3,modelzorz,0,1,BrickColor.new("Dark orange"),"Slate","Part1",vt(0,0,0),CF*cf(0,20,0))

light = Instance.new("PointLight")

light.Brightness = .8

light.Range = 150

light.Color = Color3.new(255,255,255)

light.Parent=prt1b

numb=0 

numb2=0

for i=1,8 do

local prt2=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part2",vt(300,15,60),CF*euler(0,numb,0)*cf(0,-numb2,0)) 

numb=numb+0.3925

numb2=numb2+0.01

end

numb=0 

for i=1,16 do

local prt3=part(3,modelzorz,0,0,BrickColor.new("Tr. Red"),"Slate","Part3",vt(100,10,2),CF*euler(0,numb,0)*cf(80,3-0.01,0))

numb=numb+0.3925

end

numb=0

for i=1,4 do

local prt4=part(3,modelzorz,0,0,BrickColor.new("Tr. Red"),"Slate","Part4",vt(30,11,30),CF*euler(0,numb,0)*cf(80,2.5,0))

local prt4b=part(3,modelzorz,0,1,BrickColor.new("Tr. Red"),"Slate","Part4",vt(0,0,0),CF*euler(0,numb,0)*cf(80,2.5+20,0))

light = Instance.new("PointLight")

light.Brightness = .8

light.Range = 50

light.Color = Color3.new(50,50,0)

light.Parent=prt4b

numb2=0

for i=1,8 do

local prt5=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Part5",vt(10,5,5),prt4.CFrame*euler(0,numb2,0)*cf(8,3.5,0))

numb2=numb2+0.785

end

numb=numb+1.57

end

local prt6=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part6",vt(40,10,40),CF*cf(0,10,0))

numb2=0

for i=1,4 do

numb=0

numb3=0

for i=1,8 do

local prt6=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part6",vt(5,10,20+numb3),CF*euler(0,numb2,0)*cf(-20-numb,9.9-numb,0))

numb=numb+1

numb3=numb3+0.01

end

numb2=numb2+1.57

end

numb=0

numb2=0

for i=1,8 do

local prt7=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Part7",vt(15,5,10),CF*euler(0,numb,0)*cf(10,13-numb2,0))

numb=numb+0.785

numb2=numb2+0.01

end

numb=0

for i=1,16 do

if i~=1 and i~=5 and i~=9 and i~=13 then

local prt8=part(3,modelzorz,0,0,BrickColor.new("Earth yellow"),"Slate","Part8",vt(30,12,70),CF*euler(0,numb,0)*cf(-180,10,0))

local prt9=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part9",vt(20,13,60),prt8.CFrame)

numb2=0

for i=1,6 do

local prt9b=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part9b",vt(5,31,5),prt8.CFrame*cf(0,0,30+numb2)*euler(0,0,1.57))

local prt9c=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part9c",vt(3,32,3),prt9b.CFrame)

light = Instance.new("PointLight")

light.Brightness = .8

light.Range = 30

light.Color = Color3.new(255,255,255)

light.Parent=prt9c

numb2=numb2-10

end

end

numb=numb+0.3925

end

numb=1.57

for i=1,3 do

local prt10=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part10",vt(20,13,80),CF*euler(0,numb,0)*cf(-185,10,0))

local prt11=part(3,modelzorz,0,0,BrickColor.new("Earth yellow"),"Slate","Part10",vt(10,14,70),prt10.CFrame)

numb2=0

for i=1,6 do

local prt12=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part12",vt(2,11,80),prt10.CFrame*cf(11-numb2,numb2,0))

numb2=numb2-2

end

numb=numb+1.57

end

numb=0

numb2=0

for i=1,39 do

if i>=3 then

local prt13=part(3,modelzorz,0,0,BrickColor.new("Earth yellow"),"Slate","Part13",vt(30,10,40),CF*euler(0,numb,0)*cf(-195,20+numb2,0))

local prt14=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part14",vt(20,11,30),prt13.CFrame)

end

numb2=numb2+0.009

numb=numb+0.157

end

numb=0

for i=1,40 do

local prt15=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part15",vt(30,10,40),CF*euler(0,numb,0)*cf(-220,30.5+numb2,0))

numb3=0

local prt9b=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part9b",vt(5,35,5),prt15.CFrame*cf(0,0,0)*euler(0,0,1.57))

local prt9c=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part9c",vt(3,36,3),prt9b.CFrame)

light = Instance.new("PointLight")

light.Brightness = .8

light.Range = 30

light.Color = Color3.new(255,255,255)

light.Parent=prt9c

local prt16=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part16",vt(29.9,11,39.9),prt15.CFrame)

local prt17=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part17",vt(10,3,10),prt15.CFrame*cf(0,6,0))

local prt18=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Part18",vt(5,5,5),prt15.CFrame)

prt18.Shape="Cylinder"

prt18.CFrame=prt17.CFrame*cf(0,3,0)*euler(0,0,1.57)

local prt19=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part19",vt(10,3,10),prt18.CFrame*euler(0,0,-1.57)*cf(0,3,0))

local prt20=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part20",vt(30,10,40),prt19.CFrame*cf(0,6,0))

local prt21=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part21",vt(29.9,11,39.9),prt20.CFrame)

local prt22=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part22",vt(150,20,40),prt21.CFrame*cf(50,12,0))

local prt23=part(3,modelzorz,0,0,BrickColor.new("Earth yellow"),"Slate","Part23",vt(50,50,90),prt22.CFrame*cf(49,30,0)*euler(0,0,0.5))

local prt24=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Slate","Part24",vt(80,20,20),prt23.CFrame*cf(40,10,0))

local prt25=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part25",vt(5,40,20),prt24.CFrame*cf(20,0,0))

local prt26=part(3,modelzorz,0,0.8,BrickColor.new("Bright blue"),"Plastic","Part26",vt(1,80,20),prt24.CFrame*cf(60,0,0)*euler(0,0,1.07))

numb=numb+0.157

end

numb=0

for i=1,6 do

local prt27=part(3,modelzorz,0,0,BrickColor.new("Nougat"),"Plastic","Part27",vt(13,50,13),CF*euler(0,numb,0)*cf(120,25,0))

local msh27=mesh("CylinderMesh",prt27,"","",vt(0,0,0),vt(1,1,1))

local prt28=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Part28",vt(15,15,15),CF*euler(0,numb,0)*cf(120,10,0))

local prt29=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part29",vt(10,16,10),prt28.CFrame*euler(1.57,0.785,0))

local prt30=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part30",vt(10,16,10),prt28.CFrame*euler(0.785,0,1.57))

numb2=0

for i=1,6 do

local prt31=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Part31",vt(15,50,1),prt27.CFrame*euler(0,numb2,0))

numb2=numb2+0.785

end

local prt32=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Part32",vt(15,15,15),CF*euler(0,numb,0)*cf(120,47.5,0))

local prt33=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part33",vt(10,16,10),prt32.CFrame*euler(1.57,0.785,0))

local prt34=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part34",vt(10,16,10),prt32.CFrame*euler(0.785,0,1.57))

local spawn = Instance.new("SpawnLocation") 

light = Instance.new("PointLight")

light.Brightness = .8

light.Range = 100

light.Parent=spawn

spawn.Parent = modelzorz

spawn.CanCollide = false 

spawn.Anchored = true 

spawn.Transparency = 1

spawn.CFrame=CF*euler(0,numb,0)*cf(140,0,0)

numb=numb+1.04666666

end

local prt35=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part35",vt(60,30,40),CF*cf(-180,15,30))

local prt35a=part(3,modelzorz,0,0,BrickColor.new("Earth yellow"),"Slate","Part35a",vt(10,20,5),CF*cf(-150,15,15))

local prt36=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Slate","Part36",vt(60,30,40),CF*cf(-180,15,-30))

local prt3ba=part(3,modelzorz,0,0,BrickColor.new("Earth yellow"),"Slate","Part3ba",vt(10,20,5),CF*cf(-150,15,-15))

 

local Torso1=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Torso",vt(2,2,1),CF*cf(-155,33,-15)*euler(0,1.57,0))

local LArm1=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Left Arm",vt(1,2,1),Torso1.CFrame*cf(0.8,0,0.5+0.2)*euler(-1,0,-1))

local RArm1=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Reft Arm",vt(1,2,1),Torso1.CFrame*cf(-0.8,0,0.5+0.2)*euler(-1,0,1))

local LLeg1=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Left Leg",vt(1,2,1),Torso1.CFrame*cf(0.5,-2,0))

local RLeg1=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Right Leg",vt(1,2,1),Torso1.CFrame*cf(-0.5,-2,0))

local Head1=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Head",vt(1,1,1),Torso1.CFrame*cf(0,1.5,0))

 

local Torso2=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Torso",vt(2,2,1),CF*cf(-155,33,15)*euler(0,1.57,0))

local LArm2=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Left Arm",vt(1,2,1),Torso2.CFrame*cf(0.8,0,0.5+0.2)*euler(-1,0,-1))

local RArm2=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Reft Arm",vt(1,2,1),Torso2.CFrame*cf(-0.8,0,0.5+0.2)*euler(-1,0,1))

local LLeg2=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Left Leg",vt(1,2,1),Torso2.CFrame*cf(0.5,-2,0))

local RLeg2=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Right Leg",vt(1,2,1),Torso2.CFrame*cf(-0.5,-2,0))

local Head2=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Slate","Head",vt(1,1,1),Torso2.CFrame*cf(0,1.5,0))

 

print("Fenrier's Clockwork Arena loaded.")

--workspace.Fenrier.Torso.CFrame=teleprt2.CFrame*cf(0,150,0)

-- mediafire

--[[ 

Copyrighted (C) Fenrier 2013

]] 