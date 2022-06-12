--[[
Island Dimension made by Fenrier.
]] 
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
teledebounce=false
teledebounce2=false
 
if workspace.Base:findFirstChild("Tower Model",true) ~= nil then 
workspace.Base:findFirstChild("Tower Model",true).Parent = nil 
end 
 
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size,cframe)
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
modelzorz.Parent = workspace.Base
modelzorz.Name = "Tower Model" 
script.Parent=modelzorz
 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(2,100,20),cf(100,50,20)) 
local prt2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(2,100,20),cf(100,50,-20)) 
local prt3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(2,80,20),cf(100,60,0)) 
local prt4=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(2,100,60),cf(130,50,29)*euler(0,1.57,0)) 
local prt5=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(2,100,60),cf(130,50,-29)*euler(0,1.57,0)) 
local prt6=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(2,100,60),cf(160,50,0)) 
local prt7=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part7",vt(80,2,80),cf(130,100,0)) 
local prt8=part(3,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part8",vt(20,3,20),cf(150,100,0)) 
local prt9=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(3,3,79.99),cf(91.51,101,0)) 
local prt10=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part10",vt(3,3,79.99),cf(168.49,101,0)) 
local prt11=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part11",vt(3,3,79.99),cf(130,101,38.48)*euler(0,1.57,0)) 
local prt12=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part12",vt(3,3,79.99),cf(130,101,-38.48)*euler(0,1.57,0)) 
local prt13=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part13",vt(2,20,20),cf(100,110,20)) 
local prt14=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part14",vt(2,20,20),cf(100,110,-20)) 
local prt15=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part15",vt(2,20,20),cf(110,110,29)*euler(0,1.57,0)) 
local prt16=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part16",vt(2,20,20),cf(150,110,29)*euler(0,1.57,0)) 
local prt17=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part17",vt(2,20,20),cf(160,110,20)) 
local prt18=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part18",vt(2,20,20),cf(160,110,-20)) 
local prt19=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part19",vt(2,20,20),cf(110,110,-29)*euler(0,1.57,0)) 
local prt20=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part20",vt(2,20,20),cf(150,110,-29)*euler(0,1.57,0)) 
local prt21=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part21",vt(61.9,2,60),cf(130,120,0)) 
local prt22=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part22",vt(60,2,60),cf(130,128,0)) 
local prt23=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part23",vt(60,2,60),cf(1500,1500,1500)) 
local prt24=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part24",vt(2,100,60),prt23.CFrame*cf(-30,50,0)) 
local prt25=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part25",vt(2,100,60),prt23.CFrame*cf(30,50,0)) 
local prt26=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part26",vt(2,100,60),prt23.CFrame*cf(0,50,30)*euler(0,1.57,0)) 
local prt27=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part27",vt(2,100,60),prt23.CFrame*cf(0,50,-30)*euler(0,1.57,0)) 
local prt28=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part28",vt(20,100,20),prt23.CFrame*cf(0,50,0)) 
BasicCFrame=prt28.CFrame*cf(0,50,0)
local prt29=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part29",vt(199,2,62),BasicCFrame*cf(130.5,0,0)) 
prt29.Material="Grass"
local prt30=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part30",vt(199,2,62),BasicCFrame*cf(-130.5,0,0)) 
prt30.Material="Grass"
local prt31=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part31",vt(460,2,200),BasicCFrame*cf(0,0,131)) 
prt31.Material="Grass"
local prt32=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part32",vt(460,2,200),BasicCFrame*cf(0,0,-131)) 
prt32.Material="Grass"
local prt33=part(3,modelzorz,0,0,BrickColor.new("Reddish brown"),"Part33",vt(50,2.2,200),BasicCFrame*cf(0,0,-131)) 
local prt34=part(3,modelzorz,0,0,BrickColor.new("Reddish brown"),"Part34",vt(50,2.2,200),BasicCFrame*cf(0,0,131)) 
local prt35=part(3,modelzorz,0,0,BrickColor.new("Reddish brown"),"Part35",vt(35,2.2,62),BasicCFrame*cf(-7.5,0,0)) 
local prt35b=part(3,modelzorz,0,0,BrickColor.new("Reddish brown"),"Part35b",vt(15,2.2,31),BasicCFrame*cf(17.5,0,-15.5)) 
local prt36=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part36",vt(60,2,30),BasicCFrame*cf(0,-1,-15)) 
local prt37=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part37",vt(30,2,30),BasicCFrame*cf(-25,-1,15)*euler(0,1.57,0)) 
local prt38=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Part38",vt(220,100,62),BasicCFrame*cf(141,-51,0)) 
prt38.Material="Slate"
local prt39=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Part39",vt(220,100,62),BasicCFrame*cf(-141,-51,0)) 
prt39.Material="Slate"
local prt40=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Part40",vt(502,100,220),BasicCFrame*cf(0,-51,141)) 
prt40.Material="Slate"
local prt41=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Part41",vt(502,100,220),BasicCFrame*cf(0,-51,-141)) 
prt41.Material="Slate"
local prt42=part(3,modelzorz,0,0.5,BrickColor.new("Bright blue"),"Part42",vt(20,200,20),BasicCFrame*cf(0,100,225)) 
prt42.CanCollide=false
local prt43=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part43",vt(80,5,80),BasicCFrame*cf(0,200,225)) 
prt43.Material="Wood"
local prt44=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part44",vt(40,10,40),BasicCFrame*cf(0,200,225)) 
local prt45=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part45",vt(1,1,80),BasicCFrame*cf(39.5,208,225)*euler(math.rad(math.random(-2,1)+math.random()),math.rad(math.random(-2,1)+math.random()),math.rad(math.random(-2,1)+math.random()))) 
prt45.Material="Wood"
local prt46=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part46",vt(1,1,80),BasicCFrame*cf(-39.5,208,225)*euler(math.rad(math.random(-2,1)+math.random()),math.rad(math.random(-2,1)+math.random()),math.rad(math.random(-2,1)+math.random()))) 
prt46.Material="Wood"
local prt47=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part47",vt(1,80,1),BasicCFrame*cf(0,208,225-39.5)*euler(math.rad(math.random(-2,1)+math.random()),math.rad(math.random(-2,1)+math.random()),1.57+math.rad(math.random(-2,1)+math.random()))) 
prt47.Material="Wood"
local prt48=part(3,modelzorz,0,0.5,BrickColor.new("Bright blue"),"Part48",vt(20,20,20),prt43.CFrame*cf(0,5,0)) 
prt48.CanCollide=false
local prt49=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part49",vt(1,1,95),prt43.CFrame*cf(12,2,87))
prt49.Material="Wood"
local prt50=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part49",vt(1,1,95),prt43.CFrame*cf(-12,2,87)) 
prt50.Material="Wood"
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1,1,1))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1,1,1))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1,1,1))
local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1,1,1))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1,1,1))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(1,1,1))
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(1,1,1))
local msh8=mesh("BlockMesh",prt8,"","",vt(0,0,0),vt(1,1,1))
local msh9=mesh("BlockMesh",prt9,"","",vt(0,0,0),vt(1,1,1))
local msh10=mesh("BlockMesh",prt10,"","",vt(0,0,0),vt(1,1,1))
local msh11=mesh("BlockMesh",prt11,"","",vt(0,0,0),vt(1,1,1))
local msh12=mesh("BlockMesh",prt12,"","",vt(0,0,0),vt(1,1,1))
local msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(1,1,1))
local msh14=mesh("BlockMesh",prt14,"","",vt(0,0,0),vt(1,1,1))
local msh15=mesh("BlockMesh",prt15,"","",vt(0,0,0),vt(1,1,1))
local msh16=mesh("BlockMesh",prt16,"","",vt(0,0,0),vt(1,1,1))
local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(1,1,1))
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(1,1,1))
local msh19=mesh("BlockMesh",prt19,"","",vt(0,0,0),vt(1,1,1))
local msh20=mesh("BlockMesh",prt20,"","",vt(0,0,0),vt(1,1,1))
local msh21=mesh("BlockMesh",prt21,"","",vt(0,0,0),vt(1,1,1))
local msh22=mesh("SpecialMesh",prt22,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(45,10,45))
local msh23=mesh("BlockMesh",prt23,"","",vt(0,0,0),vt(1,1,1))
local msh24=mesh("BlockMesh",prt24,"","",vt(0,0,0),vt(1,1,1))
local msh25=mesh("BlockMesh",prt25,"","",vt(0,0,0),vt(1,1,1))
local msh26=mesh("BlockMesh",prt26,"","",vt(0,0,0),vt(1,1,1))
local msh27=mesh("BlockMesh",prt27,"","",vt(0,0,0),vt(1,1,1))
local msh28=mesh("CylinderMesh",prt28,"","",vt(0,0,0),vt(1,1,1))
local msh42=mesh("CylinderMesh",prt42,"","",vt(0,0,0),vt(1,1,1))
local msh48=mesh("SpecialMesh",prt48,"Sphere","",vt(0,0,0),vt(1,1,1))
 
local basestairprt=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Base Stair Part1",vt(61.9,2,60),cf(130,2,0)) 
local basestairmsh=mesh("BlockMesh",basestairprt,"","",vt(0,0,0),vt(1,1,1))
local basestairprt2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Base Stair Part2",vt(20,100,20),cf(130,50,0)) 
local basestairmsh2=mesh("CylinderMesh",basestairprt2,"","",vt(0,0,0),vt(1,1,1))
 
local teleprt=part(3,modelzorz,0,1,BrickColor.new("Black"),"Teleport Part",vt(61,10,59),cf(130,95,0)) 
teleprt.CanCollide=false
local teleprt2=part(3,modelzorz,0,1,BrickColor.new("Black"),"Teleport Part2",vt(61,10,59),prt23.CFrame*cf(0,6,0)) 
teleprt2.CanCollide=false
local teleprt3=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Teleport Part3",vt(1000,10,1000),BasicCFrame*cf(0,-300,0)) 
teleprt3.CanCollide=false
 
local skyboxprt=part(3,modelzorz,0,0,BrickColor.new("Black"),"Skybox",vt(1,1,1),BasicCFrame) 
local skyboxmsh=mesh("SpecialMesh",skyboxprt,"FileMesh","http://www.roblox.com/asset/?id=1527559",vt(0,0,0),vt(-1000,-1000,-1000))
skyboxmsh.TextureId="http://www.roblox.com/asset/?id=24824960"
coroutine.resume(coroutine.create(function() 
while true do
wait()
skyboxprt.CFrame=skyboxprt.CFrame*angles(math.pi/math.random(4000,6000),math.pi/math.random(4000,6000),math.pi/math.random(4000,6000))
end
end))
for i=1,8 do
local tree1=part(3,modelzorz,0,0,BrickColor.new("Brown"),"Tree1",vt(3,20,3),BasicCFrame*cf(math.random(30,200),10,math.random(-200,200))) 
local treemsh1=mesh("CylinderMesh",tree1,"","",vt(0,0,0),vt(1,1,1))
local tree2=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Tree2",vt(15,15,15),tree1.CFrame*cf(0,30,0)) 
tree2.Shape=0
tree2.Material="Grass"
tree2.CFrame=tree1.CFrame*cf(0,10,0)
local grass=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Grass",vt(1,1,1),BasicCFrame*cf(math.random(30,200),2.5,math.random(-200,200))) 
local grassmsh=mesh("SpecialMesh",grass,"FileMesh","http://www.roblox.com/asset/?id=1091940",vt(0,0,0),vt(2,2,2))
grassmsh.TextureId="http://www.roblox.com/asset/?id=1091942"
end
for i=1,8 do
local tree1=part(3,modelzorz,0,0,BrickColor.new("Brown"),"Tree1",vt(3,20,3),BasicCFrame*cf(math.random(-200,-30),10,math.random(-200,200))) 
local treemsh1=mesh("CylinderMesh",tree1,"","",vt(0,0,0),vt(1,1,1))
local tree2=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Tree2",vt(15,15,15),tree1.CFrame*cf(0,30,0)) 
tree2.Shape=0
tree2.Material="Grass"
tree2.CFrame=tree1.CFrame*cf(0,10,0)
local grass=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Grass",vt(1,1,1),BasicCFrame*cf(math.random(-200,-30),2.5,math.random(-200,200))) 
local grassmsh=mesh("SpecialMesh",grass,"FileMesh","http://www.roblox.com/asset/?id=1091940",vt(0,0,0),vt(2,2,2))
grassmsh.TextureId="http://www.roblox.com/asset/?id=1091942"
end
 
con1=teleprt.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and teledebounce==false and hit.Parent:FindFirstChild("Torso")~=nil then
print("Teleported")
teledebounce=true
hit.Parent.Torso.CFrame=prt23.CFrame*cf(0,5,20)
wait(2)
teledebounce=false
end
end) 
con2=teleprt2.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and teledebounce==false and hit.Parent:FindFirstChild("Torso")~=nil then
print("Teleported")
teledebounce=true
hit.Parent.Torso.CFrame=teleprt.CFrame*cf(0,-5,15)
wait(2)
teledebounce=false
end
end) 
con3=prt42.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and teledebounce2==false and hit.Parent:FindFirstChild("Torso")~=nil then
print("Teleported to Statue Island.")
teledebounce2=true
Torso=hit.Parent.Torso
Torso.Anchored=true
Torso.CFrame=prt42.CFrame*cf(0,-95,0)
wait(2)
numb2=0
for i=0,20 do
wait(0)
Torso.CFrame=prt42.CFrame*cf(0,-95+numb2,0)
numb2=numb2+10
end
Torso.Anchored=false
Torso.Velocity=vt(0,200,0)
wait(2)
teledebounce2=false
end
end) 
con4=prt48.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and teledebounce2==false and hit.Parent:FindFirstChild("Torso")~=nil then
print("Teleported out Statue Island.")
teledebounce2=true
Torso=hit.Parent.Torso
Torso.Anchored=true
Torso.CFrame=prt48.CFrame*cf(0,3,0)
wait(2)
numb2=0
for i=0,20 do
wait(0)
Torso.CFrame=prt48.CFrame*cf(0,3-numb2,0)
numb2=numb2+10
end
Torso.Anchored=false
wait(2)
teledebounce2=false
end
end) 
con5=teleprt3.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
print("Fallen Teleport")
hit.Parent.Torso.CFrame=teleprt3.CFrame*cf(-1500,-1000,-1500)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
hit.Parent.Humanoid.PlatformStand=true
end
end) 
 
for i=0,50 do
prtsize=math.random(1,20)
local prt=part(3,modelzorz,0,0,BrickColor.new("Earth green"),"Brick",vt(prtsize,prtsize,prtsize),BasicCFrame*cf(math.random(-500,500),math.random(-500,500),math.random(-500,500))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))) 
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(1,1,1))
coroutine.resume(coroutine.create(function(Part) 
randomnumb=math.random(1,10)+math.random()
wait(randomnumb)
while Part.Parent~=nil do
for i=0,1,0.005 do
wait()
Part.Position=Part.Position+vt(0,-0.2,0)
end
for i=0,1,0.005 do
wait()
Part.Position=Part.Position+vt(0,0.2,0)
end
end
end),prt)
end
 
for i=0,15 do
prtsize=math.random(0,3)+math.random()
local prt=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Brick",vt(prtsize,prtsize,prtsize),BasicCFrame*cf(math.random(-50,50),math.random(5,170),math.random(200,250))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)))
prt.Material="Grass"
coroutine.resume(coroutine.create(function(Part) 
randomnumb=math.random(1,10)+math.random()
wait(randomnumb)
while Part.Parent~=nil do
for i=0,1,0.005 do
wait()
Part.Position=Part.Position+vt(0,-0.2,0)
end
for i=0,1,0.005 do
wait()
Part.Position=Part.Position+vt(0,0.2,0)
end
end
end),prt)
end
 
count=0
for i=1,15 do
local prt=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part",vt(1,3,1),BasicCFrame*cf(39.5-count,205,225-39.5)*euler(math.rad(math.random(-30,29)+math.random()),math.rad(math.random(-30,29)+math.random()),math.rad(math.random(-30,29)+math.random()))) 
prt.Material="Wood"
local prt=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part",vt(1,3,1),BasicCFrame*cf(39.5,205,225-39.5+count)*euler(math.rad(math.random(-30,29)+math.random()),math.rad(math.random(-30,29)+math.random()),math.rad(math.random(-30,29)+math.random()))) 
prt.Material="Wood"
local prt=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part",vt(1,3,1),BasicCFrame*cf(-39.5,205,225-39.5+count)*euler(math.rad(math.random(-30,29)+math.random()),math.rad(math.random(-30,29)+math.random()),math.rad(math.random(-30,29)+math.random()))) 
prt.Material="Wood"
count=count+5.64
end
 
count=0
for i=1,15 do
local prt48=part(3,modelzorz,0,0,BrickColor.new("Dusty Rose"),"Part48",vt(20,1,5),prt43.CFrame*cf(0,2,42+count)*euler(math.rad(math.random(-10,9)+math.random()),math.rad(math.random(-10,9)+math.random()),math.rad(math.random(-10,9)+math.random()))) 
prt48.Material="Wood"
count=count+6
end
 
count=-0.25
for i=0,164 do
local prt=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Stair",vt(2,3,20),basestairprt.CFrame*euler(0,count,0)*cf(0,0.5+(count*12),19)) 
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(1,1,1))
light = Instance.new("PointLight")
light.Brightness = .8
light.Range = 100
light.Parent=prt
count=count+0.05
end
count=0
for i=0,160 do
local prt=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Stair2",vt(2,3,20),prt23.CFrame*euler(0,count,0)*cf(0,0.5+(count*12),19)) 
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(1,1,1))
light = Instance.new("PointLight")
light.Brightness = .8
light.Range = 100
light.Parent=prt
count=count+0.05
end
count=0
for i=0,15 do
local prt=part(3,modelzorz,0,1-count,BrickColor.new("Black"),"Shade",vt(61,1,59),cf(130,70+(count*40),0)) 
prt.CanCollide=false
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(1,1,1))
count=count+0.05
end
count=0
for i=0,15 do
local prt=part(3,modelzorz,0,count,BrickColor.new("Black"),"Shade2",vt(61,1,59),prt23.CFrame*cf(0,count*40,0)) 
prt.CanCollide=false
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(1,1,1))
count=count+0.05
end
count=0
for i=0,15 do
local prt=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Stand",vt(2.99,3,3),cf(91.51,104,38.48-count)) 
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(1,1,1))
count=count+5.13
end
count=0
for i=0,15 do
local prt=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Stand",vt(2.99,3,3),cf(168.49,104,38.48-count)) 
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(1,1,1))
count=count+5.13
end
count=5.13
for i=0,13 do
local prt=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Stand",vt(2.99,3,3),cf(91.51+count,104,38.48)) 
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(1,1,1))
count=count+5.13
end
count=5.13
for i=0,13 do
local prt=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Stand",vt(2.99,3,3),cf(91.51+count,104,-38.48)) 
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(1,1,1))
count=count+5.13
end
print("Fenrier's Tower Dimension loaded.")
--workspace.Fenrier.Torso.CFrame=teleprt2.CFrame*cf(0,150,0)
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2013
]] 
 