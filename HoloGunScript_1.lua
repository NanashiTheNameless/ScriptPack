Player = game:GetService("Players").LocalPlayer 
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
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
attack = false 
attacktype = 1 
attackdebounce = false 
MMouse=nil
combo=0
Mode="Choose"
Aiming=false
DroneTarget=Torso.Position
Drone1=nil
Drone2=nil
Drone3=nil
Bullets=10
BowAim=false
SnipAim=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
if Character:findFirstChild("Techno Gauntlet",true) ~= nil then 
Character:findFirstChild("Techno Gauntlet",true).Parent = nil 
end 
 
 
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
 
local cone=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Cone",vt(1,1,1))
local conemsh=mesh("SpecialMesh",cone,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.5,0.5,0.5))
local screen1=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen1",vt(1,1,1))
local screen1msh=mesh("BlockMesh",screen1,"","",vt(0,0,0),vt(0.1,0.8,0.9))
local screen2=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen2",vt(1,1,1))
local screen2msh=mesh("BlockMesh",screen2,"","",vt(0,0,0),vt(0.1,0.8,0.9))
local screen3=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen3",vt(1,1,1))
local screen3msh=mesh("BlockMesh",screen3,"","",vt(0,0,0),vt(0.1,0.8,0.9))
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(.2,.2,255)
light1.Range=10
light1.Parent=screen1
light2=light1:Clone()
light2.Parent=screen2
light3=light1:Clone()
light3.Parent=screen3
 
if Character:findFirstChild("Drone",true) ~= nil then 
Character:findFirstChild("Drone",true).Parent = nil 
end 
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Techno Gauntlet" 
 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part6",vt(1,1,1))
local prt7=part(3,modelzorz,0,0,Torso.BrickColor,"Part7",vt(1,1,1))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local prt9=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part9",vt(1,1,1))
local prt10=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
 
msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1.1,0.6,1.1))
msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.2,0.7,1.05))
msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1.05,0.7,0.2))
msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1.4,1.6,0.2))
msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1.4,1.6,0.2))
msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.6,0.1,0.6))
msh7=mesh("SpecialMesh",prt7,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(0.6,0.1,0.6))
msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.3,0.1,0.3))
msh10=mesh("CylinderMesh",prt10,"","",vt(0,0,0),vt(0.2,0.1,0.2))
 
local wld1=weld(prt1,prt1,RightArm,euler(0,0,0)*cf(0,0.3,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0.4,0))
local wld3=weld(prt3,prt3,prt1,euler(0,0,0)*cf(0,0.4,0))
local wld4=weld(prt4,prt4,prt1,euler(0,0.785,0)*cf(0,-0.51,0))
local wld5=weld(prt5,prt5,prt1,euler(0,-0.785,0)*cf(0,-0.51,0))
local wld6=weld(prt6,prt6,prt1,euler(0,0,0)*cf(0,-1.3,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,0,0))
local wld8=weld(prt8,prt8,prt1,euler(0,0,-1.57)*cf(-0.55,0,0))
local wld9=weld(prt9,prt9,prt8,euler(0,0,0)*cf(0,0.05,0))
local wld10=weld(prt10,prt10,prt9,euler(0,0,0)*cf(0,0.01,0))
 
numb2=0
for i=1,4 do
numb=0.3
for i=1,3 do
local prtclaw=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Partclaw",vt(1,1,1))
mshclaw=mesh("SpecialMesh",prtclaw,"Wedge","",vt(0,0,0),vt(0.1,0.3,0.1))
local wldclaw=weld(prtclaw,prtclaw,prt1,euler(1.57,-1.57,-1.57)*cf(-0.55,0.3,numb)*euler(0,numb2,0))
numb=numb-0.3
end
numb2=numb2+1.57
end
 
numb=0
for i=1,5 do
local prtgear=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Partgear",vt(1,1,1))
mshgear=mesh("BlockMesh",prtgear,"","",vt(0,0,0),vt(0.4,0.09,0.07))
local wldgear=weld(prtgear,prtgear,prt9,euler(0,numb,0)*cf(0,0,0))
numb=numb+0.628
end
 
local gun = Instance.new("Model") 
gun.Parent = modelzorz
gun.Name = "Blitz" 
gun.Parent=nil
 
local gprt1=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local gprt2=part(3,gun,0,0,BrickColor.new("Black"),"Part2",vt(1,1,1))
local gprt3=part(3,gun,0,0,BrickColor.new("Black"),"Part3",vt(1,1,1))
local gprt4=part(3,gun,0,0,BrickColor.new("Black"),"Part4",vt(1,1,1))
local gprt5=part(3,gun,0,0,BrickColor.new("Black"),"Part5",vt(1,1,1))
local gprt6=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local gprt7=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part7",vt(1,1,1))
local gprt8=part(3,gun,0,0,BrickColor.new("Black"),"Part8",vt(1,1,1))
local gprt9=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(1,1,1))
local gprt10=part(3,gun,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
local gprt11=part(3,gun,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local gprt12=part(3,gun,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local gprt13=part(3,gun,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
local gprt14=part(3,gun,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
local gprt15=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part15",vt(1,1,1))
local gprt16=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part16",vt(1,1,1))
local gprt17=part(3,gun,0,0,BrickColor.new("Really black"),"Part17",vt(1,1,1))
local gprt18=part(3,gun,0,0,BrickColor.new("Black"),"Part18",vt(1,1,1))
local gprt19=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part19",vt(1,1,1))
local gprt20=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part20",vt(1,1,1))
local gprt21=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part21",vt(1,1,1))
local gprt22=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part22",vt(1,1,1))
 
gmsh1=mesh("BlockMesh",gprt1,"","",vt(0,0,0),vt(0.2,0.7,0.2))
gmsh2=mesh("BlockMesh",gprt2,"","",vt(0,0,0),vt(0.25,0.2,0.25))
gmsh3=mesh("BlockMesh",gprt3,"","",vt(0,0,0),vt(0.25,0.2,0.25))
gmsh4=mesh("BlockMesh",gprt4,"","",vt(0,0,0),vt(0.5,0.5,0.7))
gmsh5=mesh("CylinderMesh",gprt5,"","",vt(0,0,0),vt(0.5,0.49,0.5))
gmsh6=mesh("CylinderMesh",gprt6,"","",vt(0,0,0),vt(0.1,0.5,0.1))
gmsh7=mesh("BlockMesh",gprt7,"","",vt(0,0,0),vt(0.55,0.3,0.3))
gmsh8=mesh("CylinderMesh",gprt8,"","",vt(0,0,0),vt(0.7,0.7,0.7))
gmsh9=mesh("CylinderMesh",gprt9,"","",vt(0,0,0),vt(0.4,0.71,0.4))
gmsh10=mesh("BlockMesh",gprt10,"","",vt(0,0,0),vt(0.3,0.4,0.3))
gmsh11=mesh("BlockMesh",gprt11,"","",vt(0,0,0),vt(0.2,2.5,0.5))
gmsh12=mesh("CylinderMesh",gprt12,"","",vt(0,0,0),vt(0.3,0.51,0.3))
gmsh13=mesh("BlockMesh",gprt13,"","",vt(0,0,0),vt(0.2,0.3,0.5))
gmsh14=mesh("CylinderMesh",gprt14,"","",vt(0,0,0),vt(0.3,0.2,0.3))
gmsh15=mesh("CylinderMesh",gprt15,"","",vt(0,0,0),vt(0.2,0.35,0.2))
gmsh16=mesh("CylinderMesh",gprt16,"","",vt(0,0,0),vt(0.2,0.21,0.2))
gmsh17=mesh("CylinderMesh",gprt17,"","",vt(0,0,0),vt(0.15,0.22,0.15))
gmsh18=mesh("CylinderMesh",gprt18,"","",vt(0,0,0),vt(0.6,0.2,0.6))
gmsh19=mesh("CylinderMesh",gprt19,"","",vt(0,0,0),vt(0.7,0.2,0.7))
gmsh20=mesh("CylinderMesh",gprt20,"","",vt(0,0,0),vt(0.6,1.5,0.6))
gmsh21=mesh("CylinderMesh",gprt21,"","",vt(0,0,0),vt(0.69,0.5,0.69))
gmsh22=mesh("CylinderMesh",gprt22,"","",vt(0,0,0),vt(0.69,0.31,0.69))
 
local GunWelds={}
local gwld1=weld(gprt1,gprt1,Torso,euler(0.5,1.57,0)*cf(1,-0.5,1.8))
local gwld2=weld(gprt2,gprt2,gprt1,euler(0,0,0)*cf(0,0.3,0))
local gwld3=weld(gprt3,gprt3,gprt1,euler(0,0,0)*cf(0,-0.3,0))
local gwld4=weld(gprt4,gprt4,gprt3,euler(-0.5,0,0)*cf(0,-0.1,-0.1))
local gwld5=weld(gprt5,gprt5,gprt4,euler(0,0,1.57)*cf(0,0,-0.35))
local gwld6=weld(gprt6,gprt6,gprt5,cf(0,0,-0.1))
local gwld7=weld(gprt7,gprt7,gprt4,cf(0,0,-0.1))
local gwld8=weld(gprt8,gprt8,gprt4,euler(0,0,1.57)*cf(0,0,0.4))
local gwld9=weld(gprt9,gprt9,gprt8,cf(0,0,0))
local gwld10=weld(gprt10,gprt10,gprt8,euler(1.57,0,0)*cf(0,0,0.4)*euler(0,0.7,0))
local gwld11=weld(gprt11,gprt11,gprt8,euler(1.57,0,0)*cf(0.3,0,0.9))
local gwld12=weld(gprt12,gprt12,gprt11,euler(-1.57,0,0)*cf(0,-1.3,0))
local gwld13=weld(gprt13,gprt13,gprt12,cf(0,0,0.3)*euler(0,1.57,0))
local gwld14=weld(gprt14,gprt14,gprt13,cf(0.05,0,0.25))
local gwld15=weld(gprt15,gprt15,gprt14,cf(0,0,0))
local gwld16=weld(gprt16,gprt16,gprt13,euler(0,0,1.57)*cf(0,0,-0.1))
local gwld17=weld(gprt17,gprt17,gprt16,cf(0,0,0))
local gwld18=weld(gprt18,gprt18,gprt8,euler(1.57,0,0)*cf(-0.1,0,0.4))
local gwld19=weld(gprt19,gprt19,gprt18,cf(-0.05,-0.15,0))
local gwld20=weld(gprt20,gprt20,gprt19,cf(0,-0.8,0))
local gwld21=weld(gprt21,gprt21,gprt20,cf(0,0.5,0))
local gwld22=weld(gprt22,gprt22,gprt20,cf(0,-0.6,0))
table.insert(GunWelds,gwld1)
table.insert(GunWelds,gwld2)
table.insert(GunWelds,gwld3)
table.insert(GunWelds,gwld4)
table.insert(GunWelds,gwld5)
table.insert(GunWelds,gwld6)
table.insert(GunWelds,gwld7)
table.insert(GunWelds,gwld8)
table.insert(GunWelds,gwld9)
table.insert(GunWelds,gwld10)
table.insert(GunWelds,gwld11)
table.insert(GunWelds,gwld12)
table.insert(GunWelds,gwld13)
table.insert(GunWelds,gwld14)
table.insert(GunWelds,gwld15)
table.insert(GunWelds,gwld16)
table.insert(GunWelds,gwld17)
table.insert(GunWelds,gwld18)
table.insert(GunWelds,gwld19)
table.insert(GunWelds,gwld20)
table.insert(GunWelds,gwld21)
table.insert(GunWelds,gwld22)
 
numb=1.57
for i=1,10 do
local gprt23=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part23",vt(1,1,1))
gmsh23=mesh("CylinderMesh",gprt23,"","",vt(0,0,0),vt(0.15,0.7,0.15))
local gwld23=weld(gprt23,gprt23,gprt20,cf(0,-0.1,-0.25)*euler(0,numb,0))
table.insert(GunWelds,gwld23)
local gprt24=part(3,gun,0,0,BrickColor.new("Really black"),"Part24",vt(1,1,1))
gmsh24=mesh("CylinderMesh",gprt24,"","",vt(0,0,0),vt(0.14,1.52,0.14))
local gwld24=weld(gprt24,gprt24,gprt20,cf(0,0,-0.25)*euler(0,numb,0))
table.insert(GunWelds,gwld24)
numb=numb+0.628
end
 
local sword=Instance.new("Model") 
sword.Parent=modelzorz
sword.Name="Daku" 
sword.Parent=nil
 
local sprt1=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local sprt2=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part2",vt(1,1,1))
local sprt3=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local sprt4=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part4",vt(1,1,1))
local sprt5=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part5",vt(1,1,1))
local sprt6=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part6",vt(1,1,1))
local sprt7=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part7",vt(1,1,1))
local sprt8=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part8",vt(1,1,1))
local sprt9=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part9",vt(1,1,1))
local sprt10=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part10",vt(1,1,1))
local sprt11=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part11",vt(1,1,1))
local sprt12=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part12",vt(1,1,1))
local sprt13=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part13",vt(1,1,1))
local sprt14=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part14",vt(1,1,1))
local sprt15=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part15",vt(1,1,1))
local sprt16=part(3,sword,0,1,BrickColor.new("Black"),"Hitbox",vt(1,7,1.5))
local sprt17=part(3,sword,0,0,BrickColor.new("Bright yellow"),"Top",vt(1,1,1))
local sprt18=part(3,sword,0,1,BrickColor.new("Black"),"Mid",vt(0.1,0.1,0.1))
local sprt19=part(3,sword,0,0,BrickColor.new("Bright yellow"),"Bottom",vt(1,1,1))
 
smsh1=mesh("BlockMesh",sprt1,"","",vt(0,0,0),vt(0.2,1,0.2))
smsh2=mesh("SpecialMesh",sprt2,"Head","",vt(0,0,0),vt(0.4,0.3,0.4))
smsh3=mesh("BlockMesh",sprt3,"","",vt(0,0,0),vt(0.25,0.5,0.25))
smsh4=mesh("SpecialMesh",sprt4,"Head","",vt(0,0,0),vt(0.5,0.3,0.5))
smsh5=mesh("CylinderMesh",sprt5,"","",vt(0,0,0),vt(0.5,0.2,0.5))
smsh6=mesh("BlockMesh",sprt6,"","",vt(0,0,0),vt(0.5,0.2,0.35))
smsh7=mesh("BlockMesh",sprt7,"","",vt(0,0,0),vt(0.2,0.19,0.2))
smsh8=mesh("BlockMesh",sprt8,"","",vt(0,0,0),vt(0.8,0.15,0.5))
smsh9=mesh("SpecialMesh",sprt9,"Head","",vt(0,0,0),vt(0.4,0.3,0.4))
smsh10=mesh("BlockMesh",sprt10,"","",vt(0,0,0),vt(0.25,0.5,0.25))
smsh11=mesh("SpecialMesh",sprt11,"Head","",vt(0,0,0),vt(0.5,0.3,0.5))
smsh12=mesh("CylinderMesh",sprt12,"","",vt(0,0,0),vt(0.5,0.2,0.5))
smsh13=mesh("BlockMesh",sprt13,"","",vt(0,0,0),vt(0.5,0.2,0.35))
smsh14=mesh("BlockMesh",sprt14,"","",vt(0,0,0),vt(0.2,0.19,0.2))
smsh15=mesh("BlockMesh",sprt15,"","",vt(0,0,0),vt(0.8,0.15,0.5))
smsh17=mesh("CylinderMesh",sprt17,"","",vt(0,0,0),vt(0.1,0.05,0.1))
smsh19=mesh("CylinderMesh",sprt19,"","",vt(0,0,0),vt(0.1,0.05,0.1))
 
local SwordWelds={}
local swld1=weld(sprt1,sprt1,Torso,euler(0,0,1.57)*cf(0,-4,0))
local swld2=weld(sprt2,sprt2,sprt1,euler(0,0,0)*cf(0,-0.4,0))
local swld3=weld(sprt3,sprt3,sprt2,euler(0,0,0)*cf(0,-0.3,0))
local swld4=weld(sprt4,sprt4,sprt3,euler(0,0,0)*cf(0,-0.3,0))
local swld5=weld(sprt5,sprt5,sprt4,euler(0,0,0)*cf(0,-0.15,0))
local swld6=weld(sprt6,sprt6,sprt5,euler(0,0,1.57)*cf(0,-0.2,0))
local swld7=weld(sprt7,sprt7,sprt6,euler(0,0.785,0)*cf(0,0,-0.17))
local swld8=weld(sprt8,sprt8,sprt5,euler(0,0,1.57)*cf(0,-0.4,0))
local swld9=weld(sprt9,sprt9,sprt1,euler(3.14,3.14,0)*cf(0,0.4,0))
local swld10=weld(sprt10,sprt10,sprt9,euler(0,0,0)*cf(0,-0.3,0))
local swld11=weld(sprt11,sprt11,sprt10,euler(0,0,0)*cf(0,-0.3,0))
local swld12=weld(sprt12,sprt12,sprt11,euler(0,0,0)*cf(0,-0.15,0))
local swld13=weld(sprt13,sprt13,sprt12,euler(0,0,1.57)*cf(0,-0.2,0))
local swld14=weld(sprt14,sprt14,sprt13,euler(0,0.785,0)*cf(0,0,-0.17))
local swld15=weld(sprt15,sprt15,sprt12,euler(0,0,1.57)*cf(0,-0.4,0))
local swld16=weld(sprt16,sprt16,sprt1,cf(0,0,-0.3))
local swld17=weld(sprt17,sprt17,sprt1,euler(0.55,0,0)*cf(0,3.7,-0.79))
local swld18=weld(sprt18,sprt18,sprt1,cf(0,0,-0.8))
local swld19=weld(sprt19,sprt19,sprt1,euler(-0.55,0,0)*cf(0,-3.7,-0.79))
table.insert(SwordWelds,swld1)
table.insert(SwordWelds,swld2)
table.insert(SwordWelds,swld3)
table.insert(SwordWelds,swld4)
table.insert(SwordWelds,swld5)
table.insert(SwordWelds,swld6)
table.insert(SwordWelds,swld7)
table.insert(SwordWelds,swld8)
table.insert(SwordWelds,swld9)
table.insert(SwordWelds,swld10)
table.insert(SwordWelds,swld11)
table.insert(SwordWelds,swld12)
table.insert(SwordWelds,swld13)
table.insert(SwordWelds,swld14)
table.insert(SwordWelds,swld15)
table.insert(SwordWelds,swld16)
table.insert(SwordWelds,swld17)
table.insert(SwordWelds,swld18)
table.insert(SwordWelds,swld19)
 
numb=0
numb2=0
bend=0
for i=1,8 do
local sprtblade1=part(3,sword,0.3,0,BrickColor.new("White"),"Partblade1",vt(1,1,1))
smshblade1=mesh("SpecialMesh",sprtblade1,"Wedge","",vt(0,0,0),vt(0.1+numb2,0.7,0.7))
local swldblade1=weld(sprtblade1,sprtblade1,sprt5,euler(0,0,0)*cf(0,-0.3-numb,0.1+bend)*euler(-bend,0,0))
table.insert(SwordWelds,swldblade1)
local sprtblade2=part(3,sword,0.3,0,BrickColor.new("White"),"Partblade2",vt(1,1,1))
smshblade2=mesh("SpecialMesh",sprtblade2,"Wedge","",vt(0,0,0),vt(0.1+numb2,0.7,0.7))
local swldblade2=weld(sprtblade2,sprtblade2,sprt12,euler(0,0,0)*cf(0,-0.3-numb,0.1+bend)*euler(-bend,0,0))
table.insert(SwordWelds,swldblade2)
numb=numb+0.3
numb2=numb2-0.01
bend=bend+0.05
end
 
local sniper=Instance.new("Model") 
sniper.Parent=modelzorz
sniper.Name="Hand Sniper" 
sniper.Parent=nil
 
local snprt1=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local snprt2=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local snprt3=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local snprt4=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local snprt5=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local snprt6=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local snprt7=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part7",vt(1,1,1))
local snprt8=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local snprt9=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(1,1,1))
local snprt10=part(3,sniper,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
local snprt11=part(3,sniper,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local snprt12=part(3,sniper,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local snprt13=part(3,sniper,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
local snprt14=part(3,sniper,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
local snprt15=part(3,sniper,0,0,BrickColor.new("Really black"),"Part15",vt(1,1,1))
local snprt16=part(3,sniper,0,0,BrickColor.new("Black"),"Part16",vt(1,1,1))
local snprt17=part(3,sniper,0,0,BrickColor.new("Black"),"Part17",vt(1,1,1))
local snprt18=part(3,sniper,0,0,BrickColor.new("Black"),"Part18",vt(1,1,1))
local snprt19=part(3,sniper,0,0,BrickColor.new("Black"),"Part19",vt(1,1,1))
local snprt20=part(3,sniper,0,0,BrickColor.new("Black"),"Part20",vt(1,1,1))
local snprt21=part(3,sniper,0,0,BrickColor.new("Black"),"Part21",vt(1,1,1))
local snprt22=part(3,sniper,0,0,BrickColor.new("Black"),"Part22",vt(1,1,1))
local snprt23=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part23",vt(1,1,1))
local snprt24=part(3,sniper,0,0,BrickColor.new("Medium stone grey"),"Part24",vt(1,1,1))
local snprt25=part(3,sniper,0,0,BrickColor.new("Black"),"Part25",vt(1,1,1))
local snprt26=part(3,sniper,0,0,BrickColor.new("Black"),"Part26",vt(1,1,1))
local snprt27=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part27",vt(1,1,1))
local snprt28=part(3,sniper,0,0,BrickColor.new("Black"),"Part28",vt(1,1,1))
local snprt29=part(3,sniper,0,0,BrickColor.new("Black"),"Part29",vt(1,1,1))
 
snmsh1=mesh("BlockMesh",snprt1,"","",vt(0,0,0),vt(0.2,1,0.2))
snmsh2=mesh("BlockMesh",snprt2,"","",vt(0,0,0),vt(0.201,0.5,0.5))
snmsh3=mesh("BlockMesh",snprt3,"","",vt(0,0,0),vt(0.2,0.3,0.3))
snmsh4=mesh("BlockMesh",snprt4,"","",vt(0,0,0),vt(0.199,0.6,0.7))
snmsh5=mesh("BlockMesh",snprt5,"","",vt(0,0,0),vt(0.198,0.9,0.3))
snmsh6=mesh("BlockMesh",snprt6,"","",vt(0,0,0),vt(0.202,3.5,0.3))
snmsh7=mesh("BlockMesh",snprt7,"","",vt(0,0,0),vt(0.1,0.5,0.1))
snmsh8=mesh("BlockMesh",snprt8,"","",vt(0,0,0),vt(0.1,0.6,0.1))
snmsh9=mesh("BlockMesh",snprt9,"","",vt(0,0,0),vt(0.201,1.7,0.2))
snmsh10=mesh("BlockMesh",snprt10,"","",vt(0,0,0),vt(0.15,0.4,0.4))
snmsh11=mesh("BlockMesh",snprt11,"","",vt(0,0,0),vt(0.201,0.8,0.2))
snmsh12=mesh("CylinderMesh",snprt12,"","",vt(0,0,0),vt(0.2,4,0.2))
snmsh13=mesh("CylinderMesh",snprt13,"","",vt(0,0,0),vt(0.4,0.2,0.4))
snmsh14=mesh("CylinderMesh",snprt14,"","",vt(0,0,0),vt(0.22,0.3,0.22))
snmsh15=mesh("CylinderMesh",snprt15,"","",vt(0,0,0),vt(0.15,0.301,0.15))
snmsh16=mesh("BlockMesh",snprt16,"","",vt(0,0,0),vt(0.1,0.7,0.1))
snmsh17=mesh("BlockMesh",snprt17,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh18=mesh("BlockMesh",snprt18,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh19=mesh("BlockMesh",snprt19,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh20=mesh("BlockMesh",snprt20,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh21=mesh("CylinderMesh",snprt21,"","",vt(0,0,0),vt(0.2,0.099,0.2))
snmsh22=mesh("CylinderMesh",snprt22,"","",vt(0,0,0),vt(0.2,0.099,0.2))
snmsh23=mesh("CylinderMesh",snprt23,"","",vt(0,0,0),vt(0.199,1,0.199))
snmsh24=mesh("CylinderMesh",snprt24,"","",vt(0,0,0),vt(0.15,1.01,0.15))
snmsh25=mesh("BlockMesh",snprt25,"","",vt(0,0,0),vt(0.3,0.5,0.2))
snmsh26=mesh("CylinderMesh",snprt26,"","",vt(0,0,0),vt(0.05,0.3,0.05))
snmsh27=mesh("SpecialMesh",snprt27,"Sphere","",vt(0,0,0),vt(0.1,0.1,0.1))
snmsh28=mesh("BlockMesh",snprt28,"","",vt(0,0,0),vt(0.05,0.3,0.05))
snmsh29=mesh("CylinderMesh",snprt29,"","",vt(0,0,0),vt(0.15,0.4,0.15))
 
local SniperWelds={}
local snwld1=weld(snprt1,snprt1,Torso,euler(0.5,0,0)*cf(0,-4,0))
local snwld2=weld(snprt2,snprt2,snprt1,euler(-0.5,0,0)*cf(0,0.5,-0.2))
local snwld3=weld(snprt3,snprt3,snprt2,euler(-0.785,0,0)*cf(0,-0.1,-0.2))
local snwld4=weld(snprt4,snprt4,snprt3,euler(0.785,0,0)*cf(0,-0.4,0))
local snwld5=weld(snprt5,snprt5,snprt4,cf(0,0,-0.3))
local snwld6=weld(snprt6,snprt6,snprt1,euler(1.07,0,0)*cf(0,-0.5,0.2))
local snwld7=weld(snprt7,snprt7,snprt6,euler(0,0,0)*cf(0,0.2,0.5))
local snwld8=weld(snprt8,snprt8,snprt6,euler(1.57,0,0)*cf(0,-0.1,0.25))
local snwld9=weld(snprt9,snprt9,snprt6,euler(0,0,0)*cf(0,-0.9,0.25))
local snwld10=weld(snprt10,snprt10,snprt9,euler(0,0,0)*cf(0,0.5,0.2))
local snwld11=weld(snprt11,snprt11,snprt6,euler(0,0,0)*cf(0,0.2,-0.2))
local snwld12=weld(snprt12,snprt12,snprt11,euler(0,0,0)*cf(0,-2,0))
local snwld13=weld(snprt13,snprt13,snprt12,euler(0,0,0)*cf(0,-1.8,0))
local snwld14=weld(snprt14,snprt14,snprt12,euler(0,0,0)*cf(0,-2,0))
local snwld15=weld(snprt15,snprt15,snprt14,euler(0,0,0)*cf(0,0,0))
local snwld16=weld(snprt16,snprt16,snprt11,euler(0,0,0)*cf(0,0,-0.1))
local snwld17=weld(snprt17,snprt17,snprt16,euler(1.57,0,0)*cf(0.05,0.2,-0.1))
local snwld18=weld(snprt18,snprt18,snprt16,euler(1.57,0,0)*cf(-0.05,0.2,-0.1))
local snwld19=weld(snprt19,snprt19,snprt16,euler(1.57,0,0)*cf(-0.05,-0.2,-0.1))
local snwld20=weld(snprt20,snprt20,snprt16,euler(1.57,0,0)*cf(0.05,-0.2,-0.1))
local snwld21=weld(snprt21,snprt21,snprt16,euler(0,0,0)*cf(0,0.2,-0.2))
local snwld22=weld(snprt22,snprt22,snprt16,euler(0,0,0)*cf(0,-0.2,-0.2))
local snwld23=weld(snprt23,snprt23,snprt16,euler(0,0,0)*cf(0,0,-0.2))
local snwld24=weld(snprt24,snprt24,snprt23,euler(0,0,0)*cf(0,0,0))
local snwld25=weld(snprt25,snprt25,snprt6,euler(0,0,0)*cf(0,-0.5,0))
local snwld26=weld(snprt26,snprt26,snprt25,cf(0,-0.3,0)*euler(0.5,0.7,1.57))
local snwld27=weld(snprt27,snprt27,snprt26,cf(0,-0.1,0))
local snwld28=weld(snprt28,snprt28,snprt6,euler(1.57-0.5,0,0)*cf(0,0.2,0.2))
local snwld29=weld(snprt29,snprt29,snprt9,euler(0,0.2,1.57)*cf(0,-0.8,0.1))
table.insert(SniperWelds,snwld1)
table.insert(SniperWelds,snwld2)
table.insert(SniperWelds,snwld3)
table.insert(SniperWelds,snwld4)
table.insert(SniperWelds,snwld5)
table.insert(SniperWelds,snwld6)
table.insert(SniperWelds,snwld7)
table.insert(SniperWelds,snwld8)
table.insert(SniperWelds,snwld9)
table.insert(SniperWelds,snwld10)
table.insert(SniperWelds,snwld11)
table.insert(SniperWelds,snwld12)
table.insert(SniperWelds,snwld13)
table.insert(SniperWelds,snwld14)
table.insert(SniperWelds,snwld15)
table.insert(SniperWelds,snwld16)
table.insert(SniperWelds,snwld17)
table.insert(SniperWelds,snwld18)
table.insert(SniperWelds,snwld19)
table.insert(SniperWelds,snwld20)
table.insert(SniperWelds,snwld21)
table.insert(SniperWelds,snwld22)
table.insert(SniperWelds,snwld23)
table.insert(SniperWelds,snwld24)
table.insert(SniperWelds,snwld25)
table.insert(SniperWelds,snwld26)
table.insert(SniperWelds,snwld27)
table.insert(SniperWelds,snwld28)
table.insert(SniperWelds,snwld29)
 
numb=-0.15
numb2=0.1
for i=1,2 do
local snprt30=part(3,sniper,0,0,BrickColor.new("Black"),"Part30",vt(1,1,1))
local snprt31=part(3,sniper,0,0,BrickColor.new("Black"),"Part31",vt(1,1,1))
local snprt32=part(3,sniper,0,0,BrickColor.new("Black"),"Part32",vt(1,1,1))
local snprt33=part(3,sniper,0,0,BrickColor.new("Black"),"Part33",vt(1,1,1))
local snprt34=part(3,sniper,0,0,BrickColor.new("Black"),"Part34",vt(1,1,1))
local snprt35=part(3,sniper,0,0,BrickColor.new("Black"),"Part35",vt(1,1,1))
local snprt36=part(3,sniper,0,0,BrickColor.new("Black"),"Part36",vt(1,1,1))
local snprt37=part(3,sniper,0,0,BrickColor.new("Black"),"Part37",vt(1,1,1))
snmsh30=mesh("CylinderMesh",snprt30,"","",vt(0,0,0),vt(0.2,0.1,0.2))
snmsh31=mesh("CylinderMesh",snprt31,"","",vt(0,0,0),vt(0.1,0.5,0.1))
snmsh32=mesh("CylinderMesh",snprt32,"","",vt(0,0,0),vt(0.15,0.1,0.15))
snmsh33=mesh("CylinderMesh",snprt33,"","",vt(0,0,0),vt(0.125,0.3,0.125))
snmsh34=mesh("CylinderMesh",snprt34,"","",vt(0,0,0),vt(0.15,0.2,0.15))
snmsh35=mesh("CylinderMesh",snprt35,"","",vt(0,0,0),vt(0.08,0.8,0.08))
snmsh36=mesh("CylinderMesh",snprt36,"","",vt(0,0,0),vt(0.15,0.2,0.15))
snmsh37=mesh("CylinderMesh",snprt37,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local snwld30=weld(snprt30,snprt30,snprt29,euler(0,0,0)*cf(0,numb,0))
local snwld31=weld(snprt31,snprt31,snprt30,euler(0,0,1.57+numb2)*cf(0.25,0,0))
local snwld32=weld(snprt32,snprt32,snprt31,cf(0,0.25,0))
local snwld33=weld(snprt33,snprt33,snprt32,cf(0,0.15,0))
local snwld34=weld(snprt34,snprt34,snprt33,cf(0,0.1,0))
local snwld35=weld(snprt35,snprt35,snprt34,cf(0,0.4,0))
local snwld36=weld(snprt36,snprt36,snprt35,cf(0,0.4,0))
local snwld37=weld(snprt37,snprt37,snprt36,cf(0,0.1,0))
table.insert(SniperWelds,snwld30)
table.insert(SniperWelds,snwld31)
table.insert(SniperWelds,snwld32)
table.insert(SniperWelds,snwld33)
table.insert(SniperWelds,snwld34)
table.insert(SniperWelds,snwld35)
table.insert(SniperWelds,snwld36)
table.insert(SniperWelds,snwld37)
numb=numb+0.3
numb2=numb2-0.2
end
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Techno Gauntlet" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local Bg = it("BodyGyro") 
Bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
Bg.P = 20e+003 
Bg.Parent = nil 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
wait(6) 
sou:Remove() 
end))
end
 
function CreateDrone()
local drone=Instance.new("Model")
drone.Parent=modelzorz
drone.Name="Drone"
 
local dprt1=part(3,drone,0,1,BrickColor.new("White"),"DPart1",vt(1,1,1))
dprt1.CanCollide=true
local dprt6=part(3,drone,0,1,BrickColor.new("Bright red"),"DPart6",vt(1,1,1))
local dprt7=part(3,drone,0,1,BrickColor.new("Black"),"DPart7",vt(1,1,1))
 
local dmsh1=mesh("SpecialMesh",dprt1,"Sphere","",vt(0,0,0),vt(1,1,1))
local dmsh6=mesh("CylinderMesh",dprt6,"","",vt(0,0,0),vt(0.5,0.2,0.5))
local dmsh7=mesh("CylinderMesh",dprt7,"","",vt(0,0,0),vt(0.4,0.21,0.4))
 
--local dwld1=weld(dprt1,dprt1,Torso,euler(0,0,0)*cf(0,-5,0))
local dwld6=weld(dprt6,dprt6,dprt1,euler(1.57,0,0)*cf(0,0,0.4))
local dwld7=weld(dprt7,dprt7,dprt6,cf(0,0,0))
 
numb=0
for i=1,4 do
local dprt2=part(3,drone,0,1,BrickColor.new("Medium stone grey"),"DPart2",vt(1,1,1))
local dmsh2=mesh("BlockMesh",dprt2,"","",vt(0,0,0),vt(0.5,0.5,0.8))
local dwld2=weld(dprt2,dprt2,dprt1,cf(0,-0.5,0)*euler(0,0,numb))
numb=numb+1.57
end
numb=0
for i=1,4 do
local dprt3=part(3,drone,0,1,BrickColor.new("Dark stone grey"),"DPart3",vt(1,1,1))
local dmsh3=mesh("BlockMesh",dprt3,"","",vt(0,0,0),vt(0.5,0.5,0.79))
local dwld3=weld(dprt3,dprt3,dprt1,cf(0,-0.3,0)*euler(0,0,0.785+numb))
numb=numb+1.57
end
numb=0
for i=1,4 do
local dprt4=part(3,drone,0,1,BrickColor.new("Dark stone grey"),"DPart4",vt(1,1,1))
local dmsh4=mesh("BlockMesh",dprt4,"","",vt(0,0,0),vt(0.2,0.8,0.2))
local dwld4=weld(dprt4,dprt4,dprt1,cf(0,0.8,0)*euler(0.785,numb,0))
local dprt5=part(3,drone,0,1,BrickColor.new("Bright blue"),"DPart5",vt(1,1,1))
local dmsh5=mesh("SpecialMesh",dprt5,"Sphere","",vt(0,0,0),vt(0.4,0.4,0.4))
local dwld5=weld(dprt5,dprt5,dprt4,cf(0,0.5,0)*euler(0,0,0))
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(0,0,255)
light1.Range=10
light1.Parent=dprt5
numb=numb+1.57
end
return drone,dprt1
end
 
function hideanim() 
equipped=false
if Mode=="Drones" then
Mode="Choose"
end
wait(0.1) 
cone.Parent=nil
screen1.Parent=nil
screen2.Parent=nil
screen3.Parent=nil
Neck.C0=necko*euler(0,0,0)
wld9.C0=euler(0,0,0)*cf(0,0.05,0)
Bg.Parent=nil
end 
 
function equipanim() 
equipped=true
if Mode=="Choose" then
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.3*i,0,-0.2*i)
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.5*i) * euler(1*i,0,-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.07*i,0)
LW.C0=cf(-1.5+0.3*i, 0.5, -0.3*i) * euler(1.5*i,0,1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
wld9.C0=euler(0,-1.57*i,0)*cf(0,0.05,0)
Neck.C0=necko*euler(0.3+0.1*i,0,-0.2-0.1*i)
RW.C0=cf(1, 0.3, -0.5) * euler(1-0.2*i,0,-1+0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.07-0.1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.5-0.2*i,0,1.2-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
coroutine.resume(coroutine.create(function() 
cone.Parent=modelzorz
cone.Transparency=1
local conewld=weld(cone,cone,prt9,euler(0,0,0)*cf(0,0.2,0))
screen1.Parent=modelzorz
screen1.Transparency=1
local screen1wld=weld(screen1,screen1,cone,euler(0,0.8,0)*cf(0,1,0))
screen2.Parent=modelzorz
screen2.Transparency=1
local screen2wld=weld(screen2,screen2,screen1,cf(0,0,1)*euler(0,0.3,0))
screen3.Parent=modelzorz
screen3.Transparency=1
local screen3wld=weld(screen3,screen3,screen1,cf(0,0,-1)*euler(0,-0.3,0))
 
for i=1,0.5,-0.05 do
wait()
cone.Transparency=i
screen1.Transparency=i
screen2.Transparency=i
screen3.Transparency=i
end
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
while Mode=="Choose" do
wait(0.06)
Cone.Transparency=0.5
Screen1.Transparency=0.5
Screen2.Transparency=0.5
Screen3.Transparency=0.5
light1.Brightness=.7
light2.Brightness=.7
light3.Brightness=.7
wait(0.06)
Cone.Transparency=0.6
Screen1.Transparency=0.6
Screen2.Transparency=0.6
Screen3.Transparency=0.6
light1.Brightness=.8
light2.Brightness=.8
light3.Brightness=.8
end
end),cone,screen1,screen2,screen3)
end))
for i=0,1,0.1 do
wait()
wld9.C0=euler(0,-1.57,0)*cf(0,0.05,0)
Neck.C0=necko*euler(0.4-0.7*i,0,-0.3)
RW.C0=cf(1, 0.3, -0.5-0.3*i) * euler(0.8+0.77*i,0,-1+0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.17+0.67*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.3+1*i,0,0.7)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Neck.C0=necko*euler(-0.3,0,-0.3)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3,0,0.7)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end 
 
function Drones()
Mode="Drones"
attack=true
Humanoid.WalkSpeed=0
coroutine.resume(coroutine.create(function() 
while Mode=="Drones" do
wait()
if Aiming==false then
DroneTarget=Torso.Position
end
end
end))
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local drone1,droneprt1=CreateDrone()
local dwld1=weld(droneprt1,droneprt1,Torso,euler(0,0,0)*cf(2,0,5))
local drone2,droneprt2=CreateDrone()
local dwld12=weld(droneprt2,droneprt2,Torso,euler(0,0,0)*cf(0,0,5))
local drone3,droneprt3=CreateDrone()
local dwld13=weld(droneprt3,droneprt3,Torso,euler(0,0,0)*cf(-2,0,5))
wait()
dwld1:Remove()
dwld12:Remove()
dwld13:Remove()
local pos=it("BodyPosition",droneprt1)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition) 
while droneprt1.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt1)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro) 
while droneprt1.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt1.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
local pos=it("BodyPosition",droneprt2)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition) 
while droneprt2.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt2)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro) 
while droneprt2.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt2.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
local pos=it("BodyPosition",droneprt3)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition) 
while droneprt3.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt3)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro) 
while droneprt3.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt3.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
droneprt1.Anchored=true
for _,v in pairs(drone1:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone1:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
droneprt2.Anchored=true
for _,v in pairs(drone2:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone2:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
droneprt3.Anchored=true
for _,v in pairs(drone3:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone3:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
wait(2)
droneprt1.Anchored=false
droneprt2.Anchored=false
droneprt3.Anchored=false
Humanoid.WalkSpeed=16
wait()
effect.Parent=nil
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-0.77*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.5-1.5*i,0,0.2-0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
return drone1, drone2, drone3
end
 
function Gun()
attack=true
Mode="Gun"
gwld1.Part1=LeftArm
gwld1.C0=euler(1.57+0.5,0,-1.57)*cf(0,1,0)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
gun.Parent=modelzorz
for e=1,#GunWelds do
GunWelds[e].Parent=modelzorz
end
for _,v in pairs(gun:children()) do
if v.className=="Part" then
v.Transparency=1
end
end
for _,v in pairs(gun:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=gun:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
gwld1.Part1=LeftArm
gwld1.C0=euler(1.57+0.5,0,-1.57)*cf(0,1,0)
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57+1.57*i)*cf(0,1,0)
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.5-1*i,0,0.2+0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
attack=false
end
 
function Sword()
attack=true
Mode="Sword"
swld1.Part1=LeftArm
swld1.C0=euler(0,0,-1.57)*cf(0,1,0)
swld1.C1=euler(0,0,0)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
sword.Parent=modelzorz
for e=1,#SwordWelds do
SwordWelds[e].Parent=modelzorz
end
for _,v in pairs(sword:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
end
end
for _,v in pairs(sword:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=sword:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
swld1.C0=euler(0,-1.57*i,1.57-3.14*i)*cf(0,1,0)
swld1.C1=euler(0,1.57*i,0)
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.5-1.5*i,0,0.2-0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function Sniper()
attack=true
Mode="Sniper"
snwld1.Part1=LeftArm
snwld1.C0=euler(0.5,0,0)*cf(0,1.6,-2)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
sniper.Parent=modelzorz
for e=1,#SniperWelds do
SniperWelds[e].Parent=modelzorz
end
for _,v in pairs(sniper:children()) do
if v.className=="Part" then
v.Transparency=1
end
end
for _,v in pairs(sniper:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=sniper:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
gwld1.Part1=LeftArm
snwld1.C0=euler(0.5,0,0)*cf(0,1.6,-2)
snwld1.C1=cf(0,0,0)
for i=0,1,0.1 do
wait()
snwld1.C0=euler(0.5+1.57*i,0,0)*cf(0,1.6-0.6*i,-2+2*i)
RW.C0=cf(1, 0.3, -0.8+0.3*i) * euler(1.27-0.37*i,0,-1.3+1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+2.3*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-0.5*i,0,0.2+0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function Shoot()
attack=true
Humanoid.WalkSpeed=2
Bg.Parent=Head
Bg.cframe=Head.CFrame
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(0.5+1.07*i,0,0.6-1.385*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
spread=1
range=50
rangepower=70
while hold==true and Bullets~=0 do
for i=1,5 do
wait(0.05)
Bullets=Bullets-1
so("http://roblox.com/asset/?id=10209257",gprt16,0.5,1+math.random()) 
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
light = Instance.new("PointLight")
light.Brightness = .8
light.Color = Color3.new(100,50,0)
light.Range = 10
local shellb1 = Instance.new("Part")
light.Parent = shellb1
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((gprt16.CFrame * CFrame.new(0,-gprt16.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
light.Brightness = light.Brightness - .1
shellb1.CFrame = shellb1.CFrame + Head.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
end))
shoottrail(MMouse.Hit.p,gprt16,5,1,1)
LW.C1=cf(0, 0.5, 0) * euler(-0.2,0,0)
wait(0.05)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end
spread=0
range=500
rangepower=50
if Bullets==0 then
for i=0,1,0.2 do
wait(0)
gwld13.C0=cf(0,0,0.3)*euler(0,1.57-1.57*i,0)
end
wait(0.2)
Humanoid.WalkSpeed=16
Bg.Parent=nil
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57*i)*cf(0,1,0)
Neck.C0=necko*euler(0.3*i,0,0.785-0.785*i)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1.2*i,0,0.2-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2+0.2*i, 0.5, -0.3-0.2*i) * euler(1.57-0.57*i,0,-0.785+0.785*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
gwld20.C0=cf(0.3*i,-0.8-0.2*i,0)*euler(0,0,1.57*i)
RW.C0=cf(1, 0.5, -0.5) * euler(1.2-0.3*i,0,-0.2-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0.3+0.2*i,0,-0.5*i)
RW.C0=cf(1+0.5*i, 0.5, -0.5+0.5*i) * euler(0.9-1.3*i,0,-0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local ammo=Instance.new("Model")
ammo.Parent=modelzorz
ammo.Name="Ammo"
local aprt1=part(3,ammo,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local amsh1=mesh("CylinderMesh",aprt1,"","",vt(0,0,0),vt(0.7,0.2,0.7))
local awld1=weld(aprt1,aprt1,RightArm,cf(0,1,0))
numb=0
for i=1,10 do
local aprt2=part(3,ammo,0,0,BrickColor.new("Bright yellow"),"Part2",vt(1,1,1))
local amsh2=mesh("CylinderMesh",aprt2,"","",vt(0,0,0),vt(0.2,0.3,0.2))
local awld2=weld(aprt2,aprt2,aprt1,cf(0.2,0.1,0)*euler(0,numb,0))
numb=numb+0.628
end
for i=0,1,0.2 do
wait()
awld1.C0=euler(1.57,0,0)*cf(0,1+0.1*i,0)
Neck.C0=necko*euler(0.5-0.2*i,0,-0.5+0.5*i)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(-0.4+1.5*i,0,-0.3-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
ammo.Parent=nil
for i=0,1,0.2 do
wait()
gwld20.C0=cf(0.3-0.3*i,-0.8-0.2+0.2*i,0)*euler(0,0,1.57-1.57*i)
Neck.C0=necko*euler(0.3-0.1*i,0,-0.2*i)
RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.1+0.1*i,0,-0.4+0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57+1.57*i)*cf(0,1,0)
gwld13.C0=cf(0,0,0.3)*euler(0,1.57*i,0)
Neck.C0=necko*euler(0.2-0.2*i,0,-0.2+0.2*i)
RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(1.2-1.2*i,0,0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-0.2*i, 0.5, -0.5+0.2*i) * euler(1-0.5*i,0,0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
Bullets=10
else
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785-0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-1.57*i,0,-0.785+1.385*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
Neck.C0=necko
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(0.5,0,0.6)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
Bg.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function slash1()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.4*i,0,-0.4-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1*i,0)
end
Bg.Parent=Head
Bg.cframe=Head.CFrame
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
swld1.C0=euler(0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(-0.4+2.4*i,0,-0.6+1.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1,0)
end
for i=0,1,0.1 do
wait()
--[[Neck.C0=necko*euler(0,0,0.785*i)
swld1.C0=euler(0.5*i,-1.57,-1.57)*cf(0,1,0)]]
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(2,0,0.8+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1,0)
end
con1:disconnect()
wait()
attack=false
end
 
function slash2()
attack=true
CF=Head.CFrame
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.5) 
for i=0,1,0.2 do
wait()
swld1.C0=euler(0.5-0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-0.5*i, 0.5, -0.5+0.5*i) * euler(2-0.43*i,0,1-2.57*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1+.57*i,0)
Bg.cframe=CF*euler(0,3.14*i,0)
end
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.5) 
for i=0,1,0.2 do
wait()
swld1.C0=euler(-0.5*i,-1.57,-1.57)*cf(0,1,0)
Bg.cframe=CF*euler(0,3.14+3.14*i,0)
end
con1:disconnect()
wait()
attack=false
end
 
function slash3()
attack=true
Bg.Parent=nil
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785-0.785*i)
swld1.C0=euler(-0.5+0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57+.43*i,0,-1.57+1*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-2.07*i,0)
end
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,0.9) 
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0.3*i,0,-0.2*i)
swld1.C0=euler(-0.3*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5*i,0,0.2+0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+1.5*i, 0.5-0.2*i, -1*i) * euler(2-1.5*i,0,-.57+1.07*i)
LW.C1=cf(0, 0.5, 0) * euler(0,-.5,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5,0,0.4)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(0, 0.3, -1) * euler(.5-.2*i,0,.5)
LW.C1=cf(0, 0.5, 0) * euler(0,-.5,0)
end
con1:disconnect()
wait()
attack=false
end
 
function BowShoot()
attack=true
BowAim=true
HeadNumb=0
Humanoid.WalkSpeed=2
coroutine.resume(coroutine.create(function(FenNeck) 
while BowAim==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
Bg.cframe = cf(Head.Position,pos4) * euler(0,3.14-HeadNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
Bg.Parent = Torso
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
FenNeck.C1=necko2*euler(-offset,0,0)
end
end),Neck)
for i=0,1,0.1 do
wait()
HeadNumb=1.57*i
swld1.C0=euler(0,-1.57+0.3*i,-1.57)*cf(0,1,0)
Neck.C0=necko*euler(0,0,HeadNumb)
RW.C0=cf(1.5-2.5*i, 0.5, -1*i) * euler(1.57*i,0,0.2-1.97*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57*i,0,-0.4-0.87*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
 
local string1=part(3,sword,0,1,BrickColor.new("Bright yellow"),"String1",vt(0.5,1,0.5))
local stringmsh1=mesh("CylinderMesh",string1,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld1=weld(string1,string1,prt17,euler(0,0,0)*cf(0,0,0))
local string2=part(3,sword,0,1,BrickColor.new("Bright yellow"),"String2",vt(0.5,1,0.5))
local stringmsh2=mesh("CylinderMesh",string2,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld2=weld(string2,string2,prt19,euler(0,0,0)*cf(0,0,0))
table.insert(SwordWelds,stringwld1)
table.insert(SwordWelds,stringwld1)
coroutine.resume(coroutine.create(function(String1,String2)
for i=0,1,0.1 do
wait()
String1.Transparency=String1.Transparency-0.05
String2.Transparency=String2.Transparency-0.05
end
end),string1,string2)
 
local strmdl = "Arrow"
coroutine.resume(coroutine.create(function()
arrowdebounce=false
repeat
wait(0)
coroutine.resume(coroutine.create(function()
if arrowdebounce==false then
so("http://www.roblox.com/asset/?id=10756118",sprt18,1,1) 
Lightning(sprt17.Position,sprt18.Position,3,0.2,"Bright yellow",0.00001,0.4)
Lightning(sprt19.Position,sprt18.Position,3,0.2,"Bright yellow",0.00001,0.4)
arrowdebounce=true
wait(0.1)
arrowdebounce=false
end
end))
local top = sprt17.CFrame
local bottom = sprt19.CFrame
local oristrpos
if strmdl == "Bow" then
oristrpos = CFrame.new((top.p+bottom.p)/2)
elseif strmdl == "Arrow" then
oristrpos = sprt18.CFrame
end
local mg1 = (top.p - oristrpos.p).magnitude
local mg2 = (bottom.p - oristrpos.p).magnitude
stringmsh1.Scale=vt(0.1,mg1,0.1)
basecf=sprt17.CFrame
cff=CFrame.new(sprt17.CFrame*angles(1.57,0,0).p,sprt18.Position)*angles(math.rad(90),0,0)*cf(0,-mg1/2,0)
hit2=string1
hit=sprt18
stringwld1.Parent=string1
stringwld1.Part0=hit2
stringwld1.Part1=hit
HitPos=cff.p
local CJ = CFrame.new(HitPos)
local C0=cff:inverse() *CJ 
local C1=hit.CFrame:inverse() * CJ 
stringwld1.C0=C0
stringwld1.C1=C1
 
stringmsh2.Scale=vt(0.1,mg2,0.1)
cff2=CFrame.new(sprt18.CFrame*angles(1.57,0,0).p,sprt19.Position)*angles(math.rad(90),0,0)*cf(0,-mg2/2,0)
hit3=string2
hit2=sprt18
stringwld2.Parent=string2
stringwld2.Part0=hit3
stringwld2.Part1=hit2
HitPos2=cff2.p
local CJ2 = CFrame.new(HitPos2)
local C02=cff2:inverse() *CJ 
local C12=hit2.CFrame:inverse() * CJ 
stringwld2.C0=C02
stringwld2.C1=C12
until string1.Parent==nil
end))
swld18.Part1=RightArm
swld18.C0=cf(0,1,0)
local arrow=part(3,sword,0,1,BrickColor.new("Bright yellow"),"Arrow",vt(1,1,1))
local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
arrowmsh.VertexColor=vt(1,1,1)
local arrowwld=weld(arrow,arrow,sprt18,euler(-1.57,0,0)*cf(0,1,0))
for i=0,1,0.1 do
wait()
arrow.Transparency=arrow.Transparency-0.05
arrowwld.C0=euler(-1.57,0,0)*cf(0,1,0)*euler(0,0,0.15*i)
RW.C0=cf(1.5-2.5+2*i, 0.5, -1) * euler(1.57,0,-1.77+0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
while BowAim==true do
wait(0)
end
so("http://www.roblox.com/asset/?id=16211041",prt18,1,1) 
spread=0
range=500
rangepower=100
shoottrail(MMouse.Hit.p,arrow,30,10,2)
Humanoid.WalkSpeed=0
arrow.Parent=nil
swld18.Part0=sprt18
swld18.Part1=sprt1
swld18.C0=cf(0,0,-0.8)
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(-0.2*i,0,HeadNumb)
RW.C0=cf(1, 0.5, -1) * euler(1.57,0,-1.57)
RW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.2-0.1*i,0,HeadNumb)
RW.C0=cf(1, 0.5, -1) * euler(1.57,0,-1.57)
RW.C1=cf(0, 0.5, 0) * euler(-0.4-0.1*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(-0.4-0.1*i,0,0)
end
string1.Parent=nil
string2.Parent=nil
BowAim=false
Humanoid.WalkSpeed=16
Bg.Parent=nil
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,HeadNumb-HeadNumb*i)
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(1.57-1.57*i,0,-1.57+1.77*i)
RW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-1.57*i,0,-1.27+1.07*i)
LW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0,0)
end
spread=0
range=500
rangepower=50
Neck.C1=necko2
Neck.C0=necko
attack=false
end
 
function Aim()
attack=true
Humanoid.WalkSpeed=5
Bg.Parent=Torso
Bg.cframe=Head.CFrame
CF=Torso.CFrame
for i=0,1,0.1 do
wait()
Bg.cframe=CF*euler(0,0.785*i,0)
Neck.C0=necko*euler(0,0,-0.785*i)
Neck.C1=necko2*euler(0,-0.5*i,0)
RW.C0=cf(1+0.2*i, 0.3, -0.5-0.2*i) * euler(0.9+0.6*i,0,-0.3+0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.3+0.27*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.07+0.5*i,0,0.7+0.085*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function UnAim()
attack=true
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
Bg.cframe=CF*euler(0,0.785-0.785*i,0)
Neck.C0=necko*euler(0,0,-0.785+0.785*i)
Neck.C1=necko2*euler(0,-0.5+0.5*i,0)
RW.C0=cf(1.2-0.2*i, 0.3, -0.7+0.2*i) * euler(1.5-0.6*i,0,-0.2-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57-0.27*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-0.5*i,0,0.785-0.085*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Bg.Parent=nil
attack=false
end
 
function SniperShoot()
attack=true
spread=0
range=1000
rangepower=100
shoottrail(MMouse.Hit.p,snprt15,20,20,0.5)
coroutine.resume(coroutine.create(function()
for z = 1 ,4 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
light = Instance.new("PointLight")
light.Brightness = .8
light.Color = Color3.new(100,50,0)
light.Range = 10
local shellb1 = Instance.new("Part")
light.Parent = shellb1
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((snprt15.CFrame * CFrame.new(0,-snprt15.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
HCF=Head.CFrame.lookVector
for i = 0 , 1 , 0.02 do
wait()
light.Brightness = light.Brightness - .02
shellb1.CFrame = shellb1.CFrame + HCF*incre
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
end))
so("http://roblox.com/asset/?id=10209875",snprt15,1,0.8) 
for i=0,1,0.3 do
wait()
Neck.C0=necko*euler(-0.3*i,0,-0.785)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.5+0.3*i,0,-0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785)
LW.C1=cf(0, 0.5, 0) * euler(-0.3*i,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(-0.3-0.1*i,0,-0.785)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.5+0.3+0.1*i,0,-0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785)
LW.C1=cf(0, 0.5, 0) * euler(-0.3-0.1*i,0,0)
end
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.4+0.6*i,0,-0.785+0.785*i)
Neck.C1=necko2*euler(0,-0.5+0.5*i,0)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.9-0.6*i,0,-0.2-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785-0.185*i)
LW.C1=cf(0, 0.5, 0) * euler(-0.4+0.8*i,0,0)
end
so("http://roblox.com/asset/?id=10209881",snprt15,1,1) 
local ammo=part(3,workspace,0,0,BrickColor.new("Bright yellow"),"Ammo",vt(1,1,1))
ammo.CanCollide=true
ammomsh=mesh("CylinderMesh",ammo,"","",vt(0,0,0),vt(0.15,0.2,0.15))
local cfrf = snprt25.CFrame * CFrame.fromEulerAnglesXYZ(0,1.57,0)
local cfr = cfrf + cfrf.lookVector * -0.5
ammo.CFrame = cfr
ammo.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
ammo.Velocity = cfr.lookVector * 20
coroutine.resume(coroutine.create(function(Part) 
wait(10)
Part.Parent=nil
end),ammo)
for i=0,1,0.2 do
wait()
snwld26.C1=euler(0,0,1*i)
RW.C0=cf(1.2, 0.3, -0.7-0.4*i) * euler(1.3,0,-0.6+0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
for i=0,1,0.2 do
wait()
snwld26.C1=euler(0,0,1-1*i)
RW.C0=cf(1.2, 0.3, -0.7-0.4+0.4*i) * euler(1.3,0,-0.6+0.3-0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.2-0.2*i,0,-0.785*i)
Neck.C1=necko2*euler(0,-0.5*i,0)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.3+0.2*i,0,-0.6+0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.6+0.185*i)
LW.C1=cf(0, 0.5, 0) * euler(0.4-0.4*i,0,0)
end
spread=0
range=500
rangepower=50
attack=false
end
 
function RemoveDrones()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.5*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+2.64*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
print("FoundDrone")
for _,s in pairs(v:children()) do
if s.className=="Part" then
s.Anchored=true
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,v)
end
end
end
end
wait(1)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.5+0.5*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(3.14-3.14*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function RemoveDrones2()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3-0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.4*i,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(2.3+0.84*i,0,0.7-0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
print("FoundDrone")
for _,s in pairs(v:children()) do
if s.className=="Part" then
s.Anchored=true
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,v)
end
end
end
end
wait(1)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.6+0.3*i,0,-0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.17+0.4*i,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.5+0.3*i, 0.5, -0.3*i) * euler(3.14-0.84*i,0,0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function RemoveGun()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.8*i) * euler(1.27*i,0,0.2-1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.2*i) * euler(0.5+1.07*i,0,0.6-0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
for _,s in pairs(gun:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,gun)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1+0.1*i) * euler(1.57-1.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
attack=false
end
 
function RemoveSword()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.8*i) * euler(1.27*i,0,0.2-1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1*i) * euler(1.57*i,0,-0.4+0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
for _,s in pairs(sword:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,sword)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1+0.1*i) * euler(1.57-1.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
attack=false
end
 
function RemoveSniper()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.4*i,0,0)
snwld1.C0=euler(2.07+0.3*i,0,0)*cf(0,1,0)
RW.C0=cf(1, 0.3, -0.5-0.3*i) * euler(0.9+0.37*i,0,-0.3-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.3-1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.07,0,0.7-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,s in pairs(sniper:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,sniper)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.4-0.4*i,0,0)
RW.C0=cf(1+0.5*i, 0.3, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0.3-0.3*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.07-1.07*i,0,0.5-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
function Lightning(p0,p1,tym,ofs,col,th,tra)
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do 
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(.2,255,.2)
light1.Range=8
light1.Parent=li
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,.2)
end
end
 
spread=0
range=500
rangepower=50
function shoottrail(ShootPosition,baseprt,Damage,Knockback,Size)
coroutine.resume(coroutine.create(function() 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-ShootPosition).magnitude/100
local dir = CFrame.new((baseprt.Position+ShootPosition)/2,ShootPosition+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,modelzorz)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Bright yellow")
effectsg.Reflectance = 0.4
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(2,mg*5,2)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(Size-Size*i,mg*5,Size-Size*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait() wait() 
rangepos = rangepos - 10
dir = dir
if Mode~="Sniper" then
dir = dir * CFrame.Angles(math.rad(-1),0,0)
end
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
critical=false
if SnipAim==true then
if hit.Name=="Head" then
coroutine.resume(coroutine.create(function(HeadPart)
for i=0,0.5,0.1 do
wait()
HeadPart.Velocity=vt(0,60,0) 
end
end),hit)
print("CRITICAL")
critical=true
p=it("Part")
p.Parent=workspace
p.CanCollide=false
p.Transparency=1
p.CFrame=hit.CFrame
p.Anchored=true
local GUI = it("BillboardGui") 
GUI.Adornee = p
GUI.Parent = p
GUI.Active = true 
GUI.Enabled = true 
GUI.Size = UDim2.new(1, 0, 1, 0) 
GUI.StudsOffset = vt(0, 4, 0) 
local Chat = it("TextLabel") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.Position = UDim2.new(0.599999964, 0, 0, 0) 
Chat.Visible = true 
Chat.Text = "Critical!" 
coroutine.resume(coroutine.create(function(Part) 
for i=0,4,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.05,0)
end
Part.Parent=nil
end),p) 
for i=0,7 do
        Blood=it("Part")
        Blood.Name="Blood"
        Blood.TopSurface="Smooth"
        Blood.BottomSurface="Smooth"
        Blood.formFactor="Plate"
        Blood.BrickColor=BrickColor:Red()
        Blood.Size=vt(1,.4,1)
        Blood.Velocity=vt(math.random(-4,4),math.random(5,25),math.random(-4,4))
        Blood.CFrame=hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        Blood.Parent=workspace 
        Blood.Velocity=vt(math.random(-20,20),math.random(20,50),math.random(-20,20)) 
        Blood.CanCollide=false
        coroutine.resume(coroutine.create(function(blod) 
        wait(0.1)
        blod.CanCollide=true
        wait(5) 
        blod.Parent = nil 
        end),Blood) 
end
end
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
end
if critical==true then
CRIT=true
Damagefunc1(hit,Damage*math.random(3,8),Knockback)
else
Damagefunc1(hit,Damage,Knockback)
end
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
if SnipAim==true then
if hit.Parent.className == "Hat" then 
hatCF=hit.CFrame
coroutine.resume(coroutine.create(function(hat)
hat.Handle:BreakJoints()
hat.Handle.CFrame=hatCF
hat.Handle.CanCollide=true
hat.Handle.Velocity=vt(math.random(-10,10),40,math.random(-10,10)) 
wait(3)
hatCF=hat.Handle.CFrame
hat.Parent=workspace
for i=0,4,0.2 do
wait()
hat.Handle.CFrame=hatCF
hat.Handle.Velocity=vt(math.random(-5,5),20,math.random(-5,5)) 
end
end),hit.Parent)
--[[hit:BreakJoints() 
hit.CFrame=CF
hit.Velocity = vt(math.random(-5,5),20,math.random(-5,5)) ]]
print("BREAKHAT")
end
end
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc1(hit.Parent.Parent.Torso,Damage,Knockback)
attackdebounce=false
--ADmg(hum,hit)
end
end
end))
end
 
function findNearestTorso(pos)
    local list = game:service("Workspace"):children()
    local torso = nil
    local dist = 50
    local temp = nil
    local human = nil
    local temp2 = nil
    for x = 1, #list do
        temp2 = list[x]
        if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "Fenrier") then
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
    return torso
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end 
 
Damagefunc1=function(hit,Damage,Knockback)
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
    if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.2) 
    attackdebounce = false 
    end)) 
    Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
--            hs(hit,1.2) 
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game:service("Players").LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        Damage=Damage+math.random(0,10)
--        h:TakeDamage(Damage)
        blocked=false
        block=hit.Parent:findFirstChild("Block")
        if block~=nil then
        print("herp")
        if block.Value>0 then
        blocked=true
        block.Value=block.Value-1
        print(block.Value)
        end
        end
        if blocked==false then
--        h:TakeDamage(Damage)
        h.Health=h.Health-Damage
        showDamage(hit.Parent,Damage,.5)
        else
        h:TakeDamage(1)
        showDamage(hit.Parent,1,.5)
        end
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
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
end
 
showDamage=function(Char,Dealt,du)
    m=Instance.new("Model")
    m.Name=tostring(Dealt)
    h=Instance.new("Humanoid")
    h.Health=0
    h.MaxHealth=0
    h.Parent=m
    c=Instance.new("Part")
    c.Transparency=0
    c.BrickColor=BrickColor:Red()
    if CRIT==true then
        c.BrickColor=BrickColor.new("Really red")
    end
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
    c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
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
 
function ob1d(mouse) 
if attack == true then return end 
hold=true
if Mode=="Drones" and Aiming==true then
print("Attack drones")
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Drone1debounce=false
Drone2debounce=false
Drone3debounce=false
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
coroutine.resume(coroutine.create(function(Drone) 
while hold==true do
so("http://roblox.com/asset/?id=10209257",Drone.DPart1,0.5,1.5) 
shoottrail(MMouse.Hit.p,Drone.DPart1,5,0,1)
wait(math.random(0,2)+math.random())
end
end),v)
end
end
while hold==true do
wait()
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
elseif Aiming==false then
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" and v:findFirstChild("CanShoot")~=nil then
coroutine.resume(coroutine.create(function(Drone) 
while hold==true do
if v.CanShoot.Value==true then
print("Shoot")
so("http://roblox.com/asset/?id=10209257",Drone.DPart1,0.5,1.5) 
shoottrail(Drone.DPart6.Position,Drone.DPart1,5,0,1)
elseif v.CanShoot.Value==false then
print("NoShoot")
end
wait(math.random(0,2)+math.random())
end
end),v)
end
end
end
if Mode=="Gun" then
print("Shoot")
Shoot()
end
if Mode=="Sword" then
slash1()
if hold==true then
slash2()
end
if hold==true then
slash3()
end
wait(0.5)
Bg.Parent=nil
Neck.C0=necko*euler(0,0,0)
swld1.C0=euler(0,-1.57,-1.57)*cf(0,1,0)
swld1.C1=euler(0,1.57,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.4)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
if Mode=="Sniper" and SnipAim==true then
SniperShoot()
end
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
function key(key) 
if attack == true then return end 
if Mode=="Drones" then
if key=="z" then
RemoveDrones()
Mode="Choose"
equipanim() 
return 
end
if key=="f" then
if Aiming==false then
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+2.64*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3.14-1.57*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Aiming=true
coroutine.resume(coroutine.create(function() 
while Aiming==true do
wait()
DroneTarget=MMouse.Hit.p
end
end))
wait(0.5)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
elseif Aiming==true then
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(.5+1.07*i,0,-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1.57*i,0,-0.2+1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Aiming=false
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
Valuee=Instance.new("BoolValue")
Valuee.Parent=v
Valuee.Name="CanShoot"
print("Found Drone")
coroutine.resume(coroutine.create(function(DDrone,Val,Gyro) 
--coroutine.resume(coroutine.create(function() 
while Aiming==false do
wait()
local target = findNearestTorso(DDrone.DPart1.Position)
if target~=nil then
Val.Value=true
Gyro.cframe=cf(DDrone.DPart1.Position, target.Position)
else
Val.Value=false
Gyro.cframe=cf(DDrone.DPart1.Position, Torso.Position)
end
end
Val.Parent=nil
end),v,Valuee,v.DPart1.DroneGyro)
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+.5*i, 0.5, -0.5+0.5*i) * euler(1.57-1.07*i,0,-1+1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-.5*i, 0.5, -0.5+0.5*i) * euler(1.57-1.57*i,0,1-1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
end
end
if Mode=="Gun" then
if key=="x" then
RemoveGun()
Mode="Choose"
equipanim() 
return 
end
end
if Mode=="Sword" then
if key=="c" then
RemoveSword()
Mode="Choose"
equipanim() 
return 
end
if key=="f" then
BowShoot()
end
end
if Mode=="Sniper" then
if key=="v" then
if SnipAim==true then
SnipAim=false
UnAim()
end
RemoveSniper()
Mode="Choose"
equipanim()
return
end
if key=="f" then
if SnipAim==false then
SnipAim=true
Aim()
else
SnipAim=false
UnAim()
end
end
end
if Mode=="Choose" then
if key=="f" then
RemoveDrones2()
end
if key=="z" then
Drone1,Drone2,Drone3=Drones()
end
if key=="x" then
Gun()
end
if key=="c" then
Sword()
end
if key=="v" then
Sniper()
end
end
end 
 
function key2(key) 
if key=="f" then
BowAim=false
end
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
MMouse = mouse 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
--
equipanim() 
end 
 
function ds(mouse) 
hideanim() 
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("TechGunLoaded")
 
-- lego