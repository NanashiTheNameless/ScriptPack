
--[[
Made by Fenrier.
]] 
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Neck=Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack=false 
attackdebounce=false 
MMouse=nil
combo=0
mana=0
heatcooldown=false
aimrailgun=false
aimcannon=false
RailgunTarget=RootPart
CannonTarget=RootPart
changetarget=false
local circle=0
bladeattack=false
local con1=nil
local con2=nil
local con3=nil
--player 
player=nil 
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
Asset="http://www.roblox.com/asset/?id="
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Railgun",true) ~= nil then 
Character:findFirstChild("Railgun",true).Parent = nil 
end 
if Character:findFirstChild("Plasma Cannon",true) ~= nil then 
Character:findFirstChild("Plasma Cannon",true).Parent = nil 
end 
if Character:findFirstChild("Vanguard Blades",true) ~= nil then 
Character:findFirstChild("Vanguard Blades",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil 
end 
 
 
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
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
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
 
local Color1=BrickColor.new("White")
local Color2=BrickColor.new("Bright blue")
local Color3=BrickColor.new("Really black")
 
local model1=Instance.new("Model") 
model1.Parent=Character 
model1.Name="Railgun" 
Railgun={}
RailgunWelds={}
local model2=Instance.new("Model") 
model2.Parent=Character 
model2.Name="Plasma Cannon" 
Plasma={}
PlasmaWelds={}
local model3=Instance.new("Model") 
model3.Parent=Character 
model3.Name="Vanguard Blades" 
 
prt1=part(3,model1,0,0,Color1,"Part1",vt()) 
prt2=part(3,model1,0,0,Color2,"Part2",vt())
prt3=part(3,model1,0,0,Color2,"Part3",vt())
prt4=part(3,model1,0,0,Color2,"Part4",vt())
prt5=part(3,model1,0,0,Color2,"Part5",vt())
prt6=part(3,model1,0,0,Color2,"Part6",vt())
prt7=part(3,model1,0,0,Color1,"Part7",vt())
prt8=part(3,model1,0,0,Color3,"Part8",vt())
prt9=part(3,model1,0,0,Color1,"Part9",vt())
prt10=part(3,model1,0,0,Color1,"Part10",vt())
prt11=part(3,model1,0,0,Color1,"Part11",vt())
prt12=part(3,model1,0,0,Color1,"Part12",vt())
prt13=part(3,model1,0,0,Color1,"Part13",vt())
prt14=part(3,model1,0,0,Color1,"Part14",vt())
prt15=part(3,model1,0,0,Color1,"Part15",vt())
prt16=part(3,model1,0,0,Color1,"Part16",vt())
prt17=part(3,model1,0,0,Color1,"Part17",vt())
prt18=part(3,model1,0,0,Color2,"Part18",vt())
prt19=part(3,model1,0,0,Color2,"Part19",vt())
prt20=part(3,model1,0.2,0,Color1,"Part20",vt())
prt21=part(3,model1,0.2,0,Color1,"Part21",vt())
prt22=part(3,model1,0.5,0,Color1,"Part22",vt())
prt23=part(3,model1,0.5,0,Color1,"Part23",vt())
prt24=part(3,model1,0,0,Color2,"Part24",vt())
prt25=part(3,model1,0,0,Color2,"Part25",vt())
prt26=part(3,model1,0.2,0,Color1,"Part26",vt())
prt27=part(3,model1,0.2,0,Color1,"Part27",vt())
prt28=part(3,model1,0.5,0,Color1,"Part28",vt())
prt29=part(3,model1,0.5,0,Color1,"Part29",vt())
prt30=part(3,model1,0,0,Color2,"Part30",vt())
prt31=part(3,model1,0,0,Color2,"Part31",vt())
prt32=part(3,model1,0.2,0,Color1,"Part32",vt())
prt33=part(3,model1,0.2,0,Color1,"Part33",vt())
prt34=part(3,model1,0.5,0,Color1,"Part34",vt())
prt35=part(3,model1,0.5,0,Color1,"Part35",vt())
for _,c in pairs(model1:children()) do
table.insert(Railgun,c)
end
--
aprt1=part(3,model2,0,0,Color1,"aPart1",vt())
aprt2=part(3,model2,0,0,Color2,"aPart2",vt())
aprt3=part(3,model2,0,0,Color2,"aPart3",vt())
aprt4=part(3,model2,0,0,Color2,"aPart4",vt())
aprt5=part(3,model2,0,0,Color2,"aPart5",vt())
aprt6=part(3,model2,0,0,Color2,"aPart6",vt())
aprt7=part(3,model2,0,0,Color2,"aPart7",vt())
aprt8=part(3,model2,0,0,Color1,"aPart8",vt())
aprt9=part(3,model2,0,0,Color1,"aPart9",vt())
aprt10=part(3,model2,0,0,Color3,"aPart10",vt())
aprt11=part(3,model2,0,0,Color3,"aPart11",vt())
aprt12=part(3,model2,0,0,Color1,"aPart12",vt())
aprt13=part(3,model2,0,0,Color1,"aPart13",vt())
aprt14=part(3,model2,0,0,Color1,"aPart14",vt())
aprt15=part(3,model2,0,0,Color1,"aPart15",vt())
aprt16=part(3,model2,0,0,Color1,"aPart16",vt())
aprt17=part(3,model2,0,0,Color1,"aPart17",vt())
aprt18=part(3,model2,0,0,Color1,"aPart18",vt())
aprt19=part(3,model2,0,0,Color2,"aPart19",vt())
aprt20=part(3,model2,0,0,Color2,"aPart20",vt())
aprt21=part(3,model2,0.2,0,Color1,"aPart21",vt())
aprt22=part(3,model2,0.2,0,Color1,"aPart22",vt())
aprt23=part(3,model2,0.5,0,Color1,"aPart23",vt())
aprt24=part(3,model2,0.5,0,Color1,"aPart24",vt())
aprt25=part(3,model2,0,0,Color2,"aPart25",vt())
aprt26=part(3,model2,0,0,Color2,"aPart26",vt())
aprt27=part(3,model2,0.2,0,Color1,"aPart27",vt())
aprt28=part(3,model2,0.2,0,Color1,"aPart28",vt())
aprt29=part(3,model2,0.5,0,Color1,"aPart29",vt())
aprt30=part(3,model2,0.5,0,Color1,"aPart30",vt())
aprt31=part(3,model2,0,0,Color2,"aPart31",vt())
aprt32=part(3,model2,0,0,Color2,"aPart32",vt())
aprt33=part(3,model2,0.2,0,Color1,"aPart33",vt())
aprt34=part(3,model2,0.2,0,Color1,"aPart34",vt())
aprt35=part(3,model2,0.5,0,Color1,"aPart35",vt())
aprt36=part(3,model2,0.5,0,Color1,"aPart36",vt())
aprt37=part(3,model2,0,0,Color2,"aPart37",vt())
aprt38=part(3,model1,0,0,Color1,"aPart38",vt())
aprt39=part(3,model1,0,0,Color1,"aPart39",vt())
for _,c in pairs(model2:children()) do
table.insert(Plasma,c)
end
--
bref=part(3,model3,0,1,Color3,"bRef",vt())
bprt1=part(3,model3,0,1,Color1,"bPart1",vt())
bprt2=part(3,model3,0,0,Color1,"bPart2",vt())
bprt3=part(3,model3,0,0,Color2,"bPart3",vt())
bprt4=part(3,model3,0.8,0,Color1,"bPart4",vt())
bprt5=part(3,model3,0.8,0,Color1,"bPart5",vt())
bprt6=part(3,model3,0.8,0,Color1,"bPart6",vt())
bprt7=part(3,model3,0,1,Color1,"bPart7",vt())
bprt8=part(3,model3,0,0,Color1,"bPart8",vt())
bprt9=part(3,model3,0,0,Color2,"bPart9",vt())
bprt10=part(3,model3,0.8,0,Color1,"bPart10",vt())
bprt11=part(3,model3,0.8,0,Color1,"bPart11",vt())
bprt12=part(3,model3,0.8,0,Color1,"bPart12",vt())
bprt13=part(3,model3,0,1,Color1,"bPart13",vt())
bprt14=part(3,model3,0,0,Color1,"bPart14",vt())
bprt15=part(3,model3,0,0,Color2,"bPart15",vt())
bprt16=part(3,model3,0.8,0,Color1,"bPart16",vt())
bprt17=part(3,model3,0.8,0,Color1,"bPart17",vt())
bprt18=part(3,model3,0.8,0,Color1,"bPart18",vt())
 
msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1,1,1))
msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1.3,2.5,10))
msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1.49,2.5,5))
msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1.51,2.5,3))
msh5=mesh("CylinderMesh",prt5,"","",vt(0,0,0),vt(2.5,1,2.5))
msh6=mesh("CylinderMesh",prt6,"","",vt(0,0,0),vt(1.5,16,1.5))
msh7=mesh("CylinderMesh",prt7,"","",vt(0,0,0),vt(1.6,1,1.6))
msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(1.4,1.01,1.4))
msh9=mesh("BlockMesh",prt9,"","",vt(0,0,0),vt(1.4,14,2))
msh10=mesh("SpecialMesh",prt10,"Wedge","",vt(0,0,0),vt(1.3,4,3))
msh11=mesh("SpecialMesh",prt11,"Wedge","",vt(0,0,0),vt(1.3,2,3))
msh12=mesh("SpecialMesh",prt12,"Wedge","",vt(0,0,0),vt(1.7,3,3.5))
msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(1.5,1.5,1.5))
msh14=mesh("BlockMesh",prt14,"","",vt(0,0,0),vt(1.6,4.5,2))
msh15=mesh("BlockMesh",prt15,"","",vt(0,0,0),vt(1.6,3.6,2))
msh16=mesh("SpecialMesh",prt16,"Wedge","",vt(0,0,0),vt(0.5,3,3.5))
msh17=mesh("SpecialMesh",prt17,"Wedge","",vt(0,0,0),vt(0.5,2,4))
msh19=mesh("SpecialMesh",prt19,"Sphere","",vt(0,0,0),vt(1.5,1.5,1.5))
msh20=mesh("SpecialMesh",prt20,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh21=mesh("SpecialMesh",prt21,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh22=mesh("SpecialMesh",prt22,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh23=mesh("SpecialMesh",prt23,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh25=mesh("SpecialMesh",prt25,"Sphere","",vt(0,0,0),vt(1.5,1.5,1.5))
msh26=mesh("SpecialMesh",prt26,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh27=mesh("SpecialMesh",prt27,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh28=mesh("SpecialMesh",prt28,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh29=mesh("SpecialMesh",prt29,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh31=mesh("SpecialMesh",prt31,"Sphere","",vt(0,0,0),vt(1.5,1.5,1.5))
msh32=mesh("SpecialMesh",prt32,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh33=mesh("SpecialMesh",prt33,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh34=mesh("SpecialMesh",prt34,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh35=mesh("SpecialMesh",prt35,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
--
msh1=mesh("BlockMesh",aprt1,"","",vt(0,0,0),vt(1,1,1))
msh2=mesh("BlockMesh",aprt2,"","",vt(0,0,0),vt(2,1.3,5))
msh3=mesh("SpecialMesh",aprt3,"Wedge","",vt(0,0,0),vt(2,2,1))
msh4=mesh("BlockMesh",aprt4,"","",vt(0,0,0),vt(2,2,6))
msh5=mesh("BlockMesh",aprt5,"","",vt(0,0,0),vt(2,2,2))
msh6=mesh("CylinderMesh",aprt6,"","",vt(0,0,0),vt(2,5,2))
msh7=mesh("CylinderMesh",aprt7,"","",vt(0,0,0),vt(2,5,2))
msh8=mesh("CylinderMesh",aprt8,"","",vt(0,0,0),vt(2.1,1,2.1))
msh9=mesh("CylinderMesh",aprt9,"","",vt(0,0,0),vt(2.1,1,2.1))
msh10=mesh("CylinderMesh",aprt10,"","",vt(0,0,0),vt(1.9,1.01,1.9))
msh11=mesh("CylinderMesh",aprt11,"","",vt(0,0,0),vt(1.9,1.01,1.9))
msh12=mesh("CylinderMesh",aprt12,"","",vt(0,0,0),vt(2.2,5.5,2.2))
msh13=mesh("SpecialMesh",aprt13,"Wedge","",vt(0,0,0),vt(1.7,3,3.5))
msh14=mesh("BlockMesh",aprt14,"","",vt(0,0,0),vt(1.5,1.5,1.5))
msh15=mesh("BlockMesh",aprt15,"","",vt(0,0,0),vt(1.6,4.5,2))
msh16=mesh("BlockMesh",aprt16,"","",vt(0,0,0),vt(1.6,3.6,2))
msh17=mesh("SpecialMesh",aprt17,"Wedge","",vt(0,0,0),vt(0.5,3,3.5))
msh18=mesh("SpecialMesh",aprt18,"Wedge","",vt(0,0,0),vt(0.5,2,4))
msh20=mesh("SpecialMesh",aprt20,"Sphere","",vt(0,0,0),vt(1.5,1.5,1.5))
msh21=mesh("SpecialMesh",aprt21,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh22=mesh("SpecialMesh",aprt22,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh23=mesh("SpecialMesh",aprt23,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh24=mesh("SpecialMesh",aprt24,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh26=mesh("SpecialMesh",aprt26,"Sphere","",vt(0,0,0),vt(1.5,1.5,1.5))
msh27=mesh("SpecialMesh",aprt27,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh28=mesh("SpecialMesh",aprt28,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh29=mesh("SpecialMesh",aprt29,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh30=mesh("SpecialMesh",aprt30,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh32=mesh("SpecialMesh",aprt32,"Sphere","",vt(0,0,0),vt(1.5,1.5,1.5))
msh33=mesh("SpecialMesh",aprt33,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh34=mesh("SpecialMesh",aprt34,"Wedge","",vt(0,0,0),vt(0.2,8,0.5))
msh35=mesh("SpecialMesh",aprt35,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh36=mesh("SpecialMesh",aprt36,"Wedge","",vt(0,0,0),vt(0.3,7,0.7))
msh37=mesh("BlockMesh",aprt37,"","",vt(0,0,0),vt(1.51,2.5,3))
msh38=mesh("SpecialMesh",aprt38,"Wedge","",vt(0,0,0),vt(1.3,4,3))
msh39=mesh("SpecialMesh",aprt39,"Wedge","",vt(0,0,0),vt(1.3,2,3))
--
msh2=mesh("CylinderMesh",bprt2,"","",vt(0,0,0),vt(3,1,3))
msh3=mesh("CylinderMesh",bprt3,"","",vt(0,0,0),vt(2.5,1.01,2.5))
msh4=mesh("BlockMesh",bprt4,"","",vt(0,0,0),vt(7,0.5,1.5))
msh5=mesh("SpecialMesh",bprt5,"Wedge","",vt(0,0,0),vt(0.5,1.5,10))
msh6=mesh("SpecialMesh",bprt6,"Wedge","",vt(0,0,0),vt(0.3,3,4))
msh8=mesh("CylinderMesh",bprt8,"","",vt(0,0,0),vt(3,1,3))
msh9=mesh("CylinderMesh",bprt9,"","",vt(0,0,0),vt(2.5,1.01,2.5))
msh10=mesh("BlockMesh",bprt10,"","",vt(0,0,0),vt(7,0.5,1.5))
msh11=mesh("SpecialMesh",bprt11,"Wedge","",vt(0,0,0),vt(0.5,1.5,10))
msh12=mesh("SpecialMesh",bprt12,"Wedge","",vt(0,0,0),vt(0.3,3,4))
msh14=mesh("CylinderMesh",bprt14,"","",vt(0,0,0),vt(3,1,3))
msh15=mesh("CylinderMesh",bprt15,"","",vt(0,0,0),vt(2.5,1.01,2.5))
msh16=mesh("BlockMesh",bprt16,"","",vt(0,0,0),vt(7,0.5,1.5))
msh17=mesh("SpecialMesh",bprt17,"Wedge","",vt(0,0,0),vt(0.5,1.5,10))
msh18=mesh("SpecialMesh",bprt18,"Wedge","",vt(0,0,0),vt(0.3,3,4))
 
--wld1=weld(prt1,prt1,Torso,euler(0.5,-3.14,0)*cf(2,-2,-2))
wld1=weld(prt1,prt1,Torso,euler(2.4,0,0)*cf(2,-2,-2))
wld2=weld(prt1,prt2,prt1,euler(0,0,0)*cf(0,0,0))
wld3=weld(prt1,prt3,prt2,euler(-0.3,0,0)*cf(0,0.05,-1))
wld4=weld(prt1,prt4,prt2,euler(-0.5,0,0)*cf(0,0.1,-0.3))
wld5=weld(prt1,prt5,prt4,euler(1.57+0.5,0,0)*cf(0,-0.2,0))
wld6=weld(prt1,prt6,prt2,euler(1.57,0,0)*cf(0,-0.11,1.1))
wld7=weld(prt1,prt7,prt6,euler(0,0,0)*cf(0,-1.6,0))
wld8=weld(prt1,prt8,prt7,euler(0,0,0)*cf(0,0,0))
wld9=weld(prt1,prt9,prt6,euler(0,0,0)*cf(0,-0.3,0.2))
wld10=weld(prt1,prt10,prt9,euler(0,0,0)*cf(0,1.2,0.4))
wld11=weld(prt1,prt11,prt10,euler(0,0,3.14)*cf(0,0.6,0))
wld12=weld(prt1,prt12,prt5,euler(3.14,0,0)*cf(0,-0.2,-0.55))
wld13=weld(prt1,prt13,prt12,euler(0.785,0,0)*cf(0,0.2,-0.4))
wld14=weld(prt1,prt14,prt12,euler(0,0,0)*cf(0,-0.4,-0.2))
wld15=weld(prt1,prt15,prt14,euler(-0.8,0,0)*cf(0,-0.55,-0.2))
wld16=weld(prt1,prt16,prt14,euler(0,0,3.14)*cf(0,-0.15,0.5))
wld17=weld(prt1,prt17,prt16,euler(0,0,3.14)*cf(0,0.5,-0.3))
wld18=weld(prt1,prt18,prt2,euler(0,0,0)*cf(0.2,0,0)) --1
wld19=weld(prt1,prt19,prt18,euler(0,0,0.5)*cf(0,0,0))
wld20=weld(prt1,prt20,prt19,euler(3.14,3.14,0)*cf(0,0.8,0.05))
wld21=weld(prt1,prt21,prt19,euler(3.14,0,0)*cf(0,0.8,-0.05))
wld22=weld(prt1,prt22,prt20,euler(0,0,0)*cf(0,-0.5,0.02))
wld23=weld(prt1,prt23,prt21,euler(0,0,0)*cf(0,-0.5,0.02))
wld24=weld(prt1,prt24,prt2,euler(0,0,0)*cf(0.2,-0.1,-0.3)) --2
wld25=weld(prt1,prt25,prt24,euler(0.3,0,0.6)*cf(0,0,0))
wld26=weld(prt1,prt26,prt25,euler(3.14,3.14,0)*cf(0,0.8,0.05))
wld27=weld(prt1,prt27,prt25,euler(3.14,0,0)*cf(0,0.8,-0.05))
wld28=weld(prt1,prt28,prt26,euler(0,0,0)*cf(0,-0.5,0.02))
wld29=weld(prt1,prt29,prt27,euler(0,0,0)*cf(0,-0.5,0.02))
wld30=weld(prt1,prt30,prt2,euler(0,0,0)*cf(0.2,-0.2,-0.6)) --3
wld31=weld(prt1,prt31,prt30,euler(0.6,0,0.7)*cf(0,0,0))
wld32=weld(prt1,prt32,prt31,euler(3.14,3.14,0)*cf(0,0.8,0.05))
wld33=weld(prt1,prt33,prt31,euler(3.14,0,0)*cf(0,0.8,-0.05))
wld34=weld(prt1,prt34,prt32,euler(0,0,0)*cf(0,-0.5,0.02))
wld35=weld(prt1,prt35,prt33,euler(0,0,0)*cf(0,-0.5,0.02))
for _,c in pairs(prt1:children()) do
if c.className=="Weld" then
table.insert(RailgunWelds,c)
end
end
--
--awld1=weld(aprt1,aprt1,Torso,euler(0.5,3.14,0)*cf(-2,-2,-2))
awld1=weld(aprt1,aprt1,Torso,euler(2.4,0,0)*cf(-2,-2,-2))
awld2=weld(aprt1,aprt2,aprt1,euler(0,0,0)*cf(0,0,0))
awld3=weld(aprt1,aprt3,aprt2,euler(0,3.14,0)*cf(0,-0.3,-0.4))
awld4=weld(aprt1,aprt4,aprt2,euler(0,0,0)*cf(0,-0.3,0.3))
awld5=weld(aprt1,aprt5,aprt4,euler(0,0,0)*cf(0,-0.3,0.2))
awld6=weld(aprt1,aprt6,aprt4,euler(1.57,0,0)*cf(0,-0.02,0.7))
awld7=weld(aprt1,aprt7,aprt4,euler(1.57,0,0)*cf(0,0.02,0.7))
awld8=weld(aprt1,aprt8,aprt6,euler(0,0,0)*cf(0,-0.5,0))
awld9=weld(aprt1,aprt9,aprt7,euler(0,0,0)*cf(0,-0.5,0))
awld10=weld(aprt1,aprt10,aprt8,euler(0,0,0)*cf(0,0,0))
awld11=weld(aprt1,aprt11,aprt9,euler(0,0,0)*cf(0,0,0))
awld12=weld(aprt1,aprt12,aprt4,euler(1.57,0,0)*cf(0,0.2,0.75))
awld13=weld(aprt1,aprt13,aprt5,euler(-1.57,0,0)*cf(0,-0.3,0))
awld14=weld(aprt1,aprt14,aprt13,euler(0.785,0,0)*cf(0,0.2,-0.4))
awld15=weld(aprt1,aprt15,aprt13,euler(0,0,0)*cf(0,-0.4,-0.2))
awld16=weld(aprt1,aprt16,aprt15,euler(-0.8,0,0)*cf(0,-0.55,-0.2))
awld17=weld(aprt1,aprt17,aprt15,euler(0,0,3.14)*cf(0,-0.15,0.5))
awld18=weld(aprt1,aprt18,aprt17,euler(0,0,3.14)*cf(0,0.5,-0.3))
awld19=weld(aprt1,aprt19,aprt2,euler(0,0,0)*cf(-0.2,-0.2,0.7)) --1
awld20=weld(aprt1,aprt20,aprt19,euler(0,0,-0.5)*cf(0,0,0))
awld21=weld(aprt1,aprt21,aprt20,euler(3.14,3.14,0)*cf(0,0.8,0.05))
awld22=weld(aprt1,aprt22,aprt20,euler(3.14,0,0)*cf(0,0.8,-0.05))
awld23=weld(aprt1,aprt23,aprt21,euler(0,0,0)*cf(0,-0.5,0.02))
awld24=weld(aprt1,aprt24,aprt22,euler(0,0,0)*cf(0,-0.5,0.02))
awld25=weld(aprt1,aprt25,aprt2,euler(0,0,0)*cf(-0.2,-0.3,0.4)) --2
awld26=weld(aprt1,aprt26,aprt25,euler(0.3,0,-0.6)*cf(0,0,0))
awld27=weld(aprt1,aprt27,aprt26,euler(3.14,3.14,0)*cf(0,0.8,0.05))
awld28=weld(aprt1,aprt28,aprt26,euler(3.14,0,0)*cf(0,0.8,-0.05))
awld29=weld(aprt1,aprt29,aprt27,euler(0,0,0)*cf(0,-0.5,0.02))
awld30=weld(aprt1,aprt30,aprt28,euler(0,0,0)*cf(0,-0.5,0.02))
awld31=weld(aprt1,aprt31,aprt2,euler(0,0,0)*cf(-0.2,-0.4,0.1)) --3
awld32=weld(aprt1,aprt32,aprt31,euler(0.6,0,-0.7)*cf(0,0,0))
awld33=weld(aprt1,aprt33,aprt32,euler(3.14,3.14,0)*cf(0,0.8,0.05))
awld34=weld(aprt1,aprt34,aprt32,euler(3.14,0,0)*cf(0,0.8,-0.05))
awld35=weld(aprt1,aprt35,aprt33,euler(0,0,0)*cf(0,-0.5,0.02))
awld36=weld(aprt1,aprt36,aprt34,euler(0,0,0)*cf(0,-0.5,0.02))
awld37=weld(aprt1,aprt37,aprt2,euler(-0.5,0,0)*cf(0,-0.05,-0.1))
awld38=weld(aprt1,aprt38,aprt37,euler(-1.57,3.14,0)*cf(0,0.2,0.15))
awld39=weld(aprt1,aprt339,aprt39,euler(0,0,3.14)*cf(0,0.6,0))
for _,c in pairs(aprt1:children()) do
if c.className=="Weld" then
table.insert(PlasmaWelds,c)
end
end
--
brefwld=weld(bref,bref,Torso,euler(0,0,0)*cf(0,0,0))
bwld1=weld(bprt1,bprt1,bref,euler(0,0,0)*cf(1,-0.6,-2)) --1
bwld2=weld(bprt1,bprt2,bprt1,euler(0,0.5,1.57+0.4)*cf(0,0,0))
bwld3=weld(bprt1,bprt3,bprt2,euler(0,0,0)*cf(0,0,0))
bwld4=weld(bprt1,bprt4,bprt2,euler(0,0,0)*cf(-0.8,0,0))
bwld5=weld(bprt1,bprt5,bprt2,euler(-1.57,0,1.57)*cf(-0.8,0,-0.35))
bwld6=weld(bprt1,bprt6,bprt4,euler(-1.57,0,1.57)*cf(-1.1,0,-0.15))
bwld7=weld(bprt1,bprt7,bref,euler(0,0,0)*cf(0,-0.6,-2)) --2
bwld8=weld(bprt1,bprt8,bprt7,euler(0,0.5,1.57)*cf(0,0,0))
bwld9=weld(bprt1,bprt9,bprt8,euler(0,0,0)*cf(0,0,0))
bwld10=weld(bprt1,bprt10,bprt8,euler(0,0,0)*cf(-0.8,0,0))
bwld11=weld(bprt1,bprt11,bprt8,euler(-1.57,0,1.57)*cf(-0.8,0,-0.35))
bwld12=weld(bprt1,bprt12,bprt10,euler(-1.57,0,1.57)*cf(-1.1,0,-0.15))
bwld13=weld(bprt1,bprt13,bref,euler(0,0,0)*cf(-1,-0.6,-2)) --3
bwld14=weld(bprt1,bprt14,bprt13,euler(0,0.5,1.57-0.4)*cf(0,0,0))
bwld15=weld(bprt1,bprt15,bprt14,euler(0,0,0)*cf(0,0,0))
bwld16=weld(bprt1,bprt16,bprt14,euler(0,0,0)*cf(-0.8,0,0))
bwld17=weld(bprt1,bprt17,bprt14,euler(-1.57,0,1.57)*cf(-0.8,0,-0.35))
bwld18=weld(bprt1,bprt18,bprt16,euler(-1.57,0,1.57)*cf(-1.1,0,-0.15))
 
local hitbox1=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
local hitbox2=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
local hitbox3=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
 
if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Vanguard Gauntlets" 
script.Parent=Tool 
end 
Bin=script.Parent 
--Bin=Tool
 
local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")
 
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
 
function hideanim() 
equipped=false
n=2
for i=0,1,0.05 do
swait()
--[[Torso.Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5-0.5*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.5+0.5*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)]]
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.4)
wld1.C0=clerp(wld1.C0,euler(2.4,0,0)*cf(2,-2,-2),.4)
awld1.C0=clerp(awld1.C0,euler(2.4,0,0)*cf(-2,-2,-2),.4)
bwld1.C0=clerp(bwld1.C0,euler(0,0,0)*cf(1,-0.6,-2),.4)
bwld7.C0=clerp(bwld7.C0,euler(0,0,0)*cf(0,-0.6,-2),.4)
bwld13.C0=clerp(bwld13.C0,euler(0,0,0)*cf(-1,-0.6,-2),.4)
bwld2.C0=clerp(bwld2.C0,euler(0,0.5,1.57+0.4)*cf(0,0,0),.4)
bwld8.C0=clerp(bwld8.C0,euler(0,0.5,1.57)*cf(0,0,0),.4)
bwld14.C0=clerp(bwld14.C0,euler(0,0.5,1.57-0.4)*cf(0,0,0),.4)
brefwld.C0=clerp(brefwld.C0,euler(0,0,0)*cf(0,0,0),.4)
n=n-0.1
end
Torso.Neck.C0=necko
Torso.Neck.C1=necko2
RootJoint.C0=RootCF
RW.C0=cf(1.5,0.5,0)*euler(0,0,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0
RH.C1=RHC1
LH.C0=LHC0
LH.C1=LHC1
end 
 
function equipanim() 
equipped=true
circle=0
n=2
for i=0,1,0.1 do
swait()
--[[Torso.Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.5*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)]]
 
wld1.C0=clerp(wld1.C0,euler(-0.2,0,0)*cf(3,-1,-0.2),.4)
awld1.C0=clerp(awld1.C0,euler(-0.2,0,0)*cf(-3,-1,-0.2),.4)
bwld1.C0=clerp(bwld1.C0,euler(0,0,0)*cf(2,-0.6,-2),.4)
bwld7.C0=clerp(bwld7.C0,euler(0,0,0)*cf(0,-0.6,-2),.4)
bwld13.C0=clerp(bwld13.C0,euler(0,0,0)*cf(-2,-0.6,-2),.4)
bwld2.C0=clerp(bwld2.C0,euler(3.14,-2,1.57-0.4)*cf(0,0,0),.4)
bwld8.C0=clerp(bwld8.C0,euler(3.14,-2,1.57)*cf(0,0,0),.4)
bwld14.C0=clerp(bwld14.C0,euler(3.14,-2,1.57+0.4)*cf(0,0,0),.4)
brefwld.C0=clerp(brefwld.C0,euler(0,0,0)*cf(0,-2,0),.4)
n=n-0.1
end
--[[Torso.Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)]]
end 
 
function AimRailGun()
for i=0,1,0.1 do
swait()
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,0),.4)
end
coroutine.resume(coroutine.create(function(Weld)
while aimrailgun==true do
wait()
--[[local pos=Vector3.new(MMouse.Hit.p.x,MMouse.Hit.p.y,MMouse.Hit.p.z)
offset=(RootPart.Position.y-MMouse.Hit.p.y)/60
offset2=(RootPart.Position.x-MMouse.Hit.p.x)/60
mag=(RootPart.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
offset2=offset2/mag ]]
--[[cff=cf(prt2.CFrame.p,MMouse.Hit.p)
local HitPos=cff.p 
local CJ=cf(HitPos) 
local C0=cff:inverse() *CJ 
local C1=prt2.CFrame:inverse() * CJ 
wld1.Part1=RootPart]]
--[[Weld.C0=euler(0,0,0)*cf(3,-1,-0.2)
wld2.C0=CFrame.Angles(math.asin(MMouse.Hit.p.x),math.rad(0),math.atan2(MMouse.Hit.p.z,MMouse.Hit.p.x))]]
local mpos = prt1.CFrame*euler(0,0,0)--*CFrame.new(3,-1,-0.2) -- thx doogle <3
local cff = CFrame.new(mpos.p,MMouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
local x,y,z = prt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
wld1.Part1=RailgunTarget
wld1.C0=euler(0,0,0)*cf(3,-1,-0.2)
wld2.Part0=prt1
wld2.Part1=prt2
wld2.C0=clerp(wld2.C0,CFrame.Angles(x,y,z)*euler(-1.57,0,0),.3)
end
end),wld1)
end
 
function UnAimRailGun()
for i=0,1,0.1 do
swait()
--LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.5),.4)
--[[wld2.Part0=prt2
wld2.Part1=prt1]]
wld1.Part1=RailgunTarget.Parent.Torso
wld1.C0=clerp(wld1.C0,euler(-0.2,0,0)*cf(3,-1,-0.2),.5)
wld2.C0=clerp(wld2.C0,euler(0,0,0)*cf(0,0,0),.5)
--wld1.C0=euler(-0.2,-0.3,0)*cf(3,-1,-0.2)
end
attack=false
end
 
function AimCannon()
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,0),.4)
end
coroutine.resume(coroutine.create(function(Weld)
while aimcannon==true do
wait()
--[[local pos=Vector3.new(MMouse.Hit.p.x,MMouse.Hit.p.y,MMouse.Hit.p.z)
offset=(RootPart.Position.y-MMouse.Hit.p.y)/60
offset2=(RootPart.Position.x-MMouse.Hit.p.x)/60
mag=(RootPart.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
offset2=offset2/mag ]]
--[[cff=cf(prt2.CFrame.p,MMouse.Hit.p)
local HitPos=cff.p 
local CJ=cf(HitPos) 
local C0=cff:inverse() *CJ 
local C1=prt2.CFrame:inverse() * CJ 
wld1.Part1=RootPart]]
--[[Weld.C0=euler(0,0,0)*cf(3,-1,-0.2)
wld2.C0=CFrame.Angles(math.asin(MMouse.Hit.p.x),math.rad(0),math.atan2(MMouse.Hit.p.z,MMouse.Hit.p.x))]]
local mpos = aprt1.CFrame*euler(0,0,0)--*CFrame.new(3,-1,-0.2) -- thx doogle <3
local cff = CFrame.new(mpos.p,MMouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
local x,y,z = aprt1.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
awld1.Part1=CannonTarget
awld1.C0=euler(0,0,0)*cf(-3,-1,-0.2)
awld2.Part0=aprt1
awld2.Part1=aprt2
awld2.C0=clerp(awld2.C0,CFrame.Angles(x,y,z)*euler(-1.57,0,0),.3)
end
end),wld1)
end
 
function UnAimCannon()
for i=0,1,0.1 do
swait()
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.5),.4)
--[[awld2.Part0=aprt2
awld2.Part1=aprt1]]
awld1.Part1=CannonTarget.Parent.Torso
awld1.C0=clerp(awld1.C0,euler(-0.2,0,0)*cf(-3,-1,-0.2),.5)
awld2.C0=clerp(awld2.C0,euler(0,0,0)*cf(0,0,0),.5)
--awld1.C0=euler(-0.2,0.3,0)*cf(-3,-1,-0.2)
end
end
 
function ShootRailGun()
so(Asset.."169380505",prt8,.5,1) 
local MouseLook=cf((prt8.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
local hit,pos = rayCast(prt8.Position,MouseLook.lookVector,999,RailgunTarget.Parent)
local mag=(prt8.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Cyan"),CFrame.new((prt8.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,1.2,0,1.2,0.1)
if hit~=nil then
ref=part(3,workspace,0,1,Color3,"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
so(Asset.."153092334",ref,.5,1.5) 
so(Asset.."169380505",ref,.5,1.5) 
MagicCircle(BrickColor.new("Cyan"),cf(pos),10,10,10,1,1,1,0.07)
Damagefunc(hit,10,15,0,"Normal",RootPart,0)
end
end
 
function ShootCannon()
so(Asset.."161006069",hit,.5,1) 
local MainPos=aprt8.Position
local MainPos2=MMouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
--[[local mag=(MainPos-pos).magnitude 
MagicCylinder(BrickColor.new("Bright blue"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,0.5,0,0.5,0.05)]]
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,CannonTarget.Parent)
local mag=(MainPos-pos).magnitude 
MagicCylinder2(BrickColor.new("Bright blue"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
Damagefunc(hit,20,30,0,"Normal",RootPart,.2)
ref=part(3,workspace,0,1,Color3,"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
so(Asset.."169445602",ref,1,0.8) 
so(Asset.."153092334",ref,1,0.8) 
MagicBlock(BrickColor.new("Bright blue"),cf(pos),20,20,20,5,5,5,0.05)
game:GetService("Debris"):AddItem(ref,1)
MagniDamage(ref,15,10,20,0,"Normal")
end
until num<=0
end))
end
 
function ChangeTargetPose()
for i=0,1,0.05 do
swait()
wld1.C0=clerp(wld1.C0,euler(-0.2,0,-0.3)*cf(4,-1,-0.2),.4)
awld1.C0=clerp(awld1.C0,euler(-0.2,0,0.3)*cf(-4,-1,-0.2),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,1.57),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-1.57),.3)
end
end
 
function ChangeRailgunTarget()
Targ=MMouse.Target
if Targ~=nil and Targ.Parent:findFirstChild("Humanoid")~=nil and Targ.Parent:findFirstChild("Torso")~=nil and Targ.Parent:findFirstChild("HumanoidRootPart")~=nil then
RailgunTarget=Targ.Parent.HumanoidRootPart
wld1.Part1=RailgunTarget.Parent.Torso
local Dur=RailgunTarget
local Hum=RailgunTarget.Parent.Humanoid
local WalkSpeed=16
if Hum.WalkSpeed>16 then
WalkSpeed=WalkSpeed*1.2
else
WalkSpeed=Hum.WalkSpeed*1.2
end
coroutine.resume(coroutine.create(function(Model)
while RailgunTarget==Model do
if Hum.WalkSpeed>5 then
Hum.WalkSpeed=WalkSpeed
end
MagicCircle(BrickColor.new("White"),cf(Model.Parent.HumanoidRootPart.Position)*cf(math.random(-200,200)/100,-2.5,math.random(-200,200)/100),.5,1,.5,.3,4,.3,0.05)
wait(.8)
end
Hum.WalkSpeed=16
end),Dur)
end
end
 
function ChangeCannonTarget()
Targ=MMouse.Target
if Targ~=nil and Targ.Parent:findFirstChild("Humanoid")~=nil and Targ.Parent:findFirstChild("Torso")~=nil and Targ.Parent:findFirstChild("HumanoidRootPart")~=nil then
CannonTarget=Targ.Parent.HumanoidRootPart
awld1.Part1=CannonTarget.Parent.Torso
local Dur=CannonTarget
local Hum=CannonTarget.Parent.Humanoid
Hum.MaxHealth=Hum.MaxHealth+50
Hum.Health=Hum.Health+50
coroutine.resume(coroutine.create(function(Model)
while CannonTarget==Model do
MagicCircle(BrickColor.new("White"),cf(Model.Parent.HumanoidRootPart.Position)*cf(math.random(-200,200)/100,-2.5,math.random(-200,200)/100),.5,1,.5,.3,4,.3,0.05)
wait(1)
end
if Hum.MaxHealth>150 then
Hum.MaxHealth=Hum.MaxHealth-50
Hum.Health=Hum.Health-50
else
Hum.MaxHealth=100
end
end),Dur)
end
end
 
function BackToMe()
model1.Parent=Character
model2.Parent=Character
for i=1,#Railgun do
Railgun[i].Parent=model1
RailgunWelds[i].Parent=Railgun[1]
end
for i=1,#Plasma do
Plasma[i].Parent=model2
PlasmaWelds[i].Parent=Plasma[1]
end
RailgunTarget=RootPart
CannonTarget=RootPart
wld1.Part1=RailgunTarget.Parent.Torso
awld1.Part1=CannonTarget.Parent.Torso
end
 
function attackone()
attack=true bladeattack=true
--bprt4, bprt10, bprt16
for i=0,1,0.1 do
swait()
brefwld.C0=clerp(brefwld.C0,euler(0,0,0)*cf(0,-2.5,2),.4)
bwld1.C0=clerp(bwld1.C0,euler(0,0,0)*cf(3,-0.6,-2),.4)
bwld7.C0=clerp(bwld7.C0,euler(0,0,0)*cf(0,-0.6,-2),.4)
bwld13.C0=clerp(bwld13.C0,euler(0,0,0)*cf(-3,-0.6,-2),.4)
bwld2.C0=clerp(bwld2.C0,euler(3.14,-1.5,1)*cf(0,0,0),.4)
bwld8.C0=clerp(bwld8.C0,euler(3.14,-1.5,1.57)*cf(0,0,0),.4)
bwld14.C0=clerp(bwld14.C0,euler(3.14,-1.5,2)*cf(0,0,0),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.3,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3,0,-0.2),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3,0,0.2),.4)
end
BladesDamage(math.random(100,200)/100)
for i=0,1,0.2 do
swait()
brefwld.C0=clerp(brefwld.C0,euler(1.57,0,0)*cf(0,1.5,3),i)
bwld2.C0=clerp(bwld2.C0,euler(3.14,-1.5,1.57)*cf(0,0,0),i)
bwld8.C0=clerp(bwld8.C0,euler(3.14,-1.5,1.57)*cf(0,0,0),i)
bwld14.C0=clerp(bwld14.C0,euler(3.14,-1.5,1.57)*cf(0,0,0),i)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.3,0,0),i)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,0.2),i)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,0,-0.2),i)
end
for i=0,1,0.1 do
swait()
brefwld.C0=clerp(brefwld.C0,euler(1.7,0,0)*cf(0,2,3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.4,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.5,0,0.2),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.5,0,-0.2),.3)
end
attack=false bladeattack=false
--equipanim() 
end
 
function attacktwo()
attack=true bladeattack=true
for i=0,1,0.1 do
swait()
brefwld.C0=clerp(brefwld.C0,euler(0,-1,0)*cf(6,1,3),.4)
bwld1.C0=clerp(bwld1.C0,euler(0,-0.5,0)*cf(2,-0.6,-2),.4)
bwld7.C0=clerp(bwld7.C0,euler(0,0,0)*cf(0,-0.6,-2),.4)
bwld13.C0=clerp(bwld13.C0,euler(0,0.5,0)*cf(-2,-0.6,-2),.4)
bwld2.C0=clerp(bwld2.C0,euler(4.71,-1.57,1.57)*cf(0,0,0),.4)
bwld8.C0=clerp(bwld8.C0,euler(4.71,-1.57,1.57)*cf(0,0,0),.4)
bwld14.C0=clerp(bwld14.C0,euler(4.71,-1.57,1.57)*cf(0,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0.6),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-0.6),.4)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.57,0,-1),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0.1,-1.57),.4)
end
BladesDamage(math.random(80,150)/100)
for i=0,1,0.15 do
swait()
brefwld.C0=clerp(brefwld.C0,euler(0,1,0)*cf(-6,1,3),i)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-0.6),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.6),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,-0.1,1.57),.4)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.57,0,1),.4)
end
for i=0,1,0.1 do
swait()
brefwld.C0=clerp(brefwld.C0,euler(0,1.7,0)*cf(-6,1,-1),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,-0.3,1.57),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.57,0,1.3),.3)
end
attack=false bladeattack=false
end
 
function attackthree()
attack=true bladeattack=true
for i=0,1,0.09 do
swait()
bwld1.C0=clerp(bwld1.C0,cf(0,-4,-2)*euler(0,0,2.09),.4)
bwld7.C0=clerp(bwld7.C0,cf(0,-4,-2)*euler(0,0,2.09*2),.4)
bwld13.C0=clerp(bwld13.C0,cf(0,-4,-2)*euler(0,0,2.09*3),.4)
bwld2.C0=clerp(bwld2.C0,euler(3.14,-1.3,1.57)*cf(0,0,0),.4)
bwld8.C0=clerp(bwld8.C0,euler(3.14,-1.3,1.57)*cf(0,0,0),.4)
bwld14.C0=clerp(bwld14.C0,euler(3.14,-1.3,1.57)*cf(0,0,0),.4)
brefwld.C0=clerp(brefwld.C0,euler(0,0,0)*cf(0,0,-2),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,1.57),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-1.57),.3)
end
BladesDamage(math.random(100,200)/100)
n=math.random(-50,50)
for i=0,1,0.2 do
swait()
bwld1.C0=clerp(bwld1.C0,cf(0,-1.2,-2)*euler(0,0,2.09),.4)
bwld7.C0=clerp(bwld7.C0,cf(0,-1.2,-2)*euler(0,0,2.09*2),.4)
bwld13.C0=clerp(bwld13.C0,cf(0,-1.2,-2)*euler(0,0,2.09*3),.4)
bwld2.C0=clerp(bwld2.C0,euler(3.14,-1.3,1.57)*cf(0,0,0),.4)
bwld8.C0=clerp(bwld8.C0,euler(3.14,-1.3,1.57)*cf(0,0,0),.4)
bwld14.C0=clerp(bwld14.C0,euler(3.14,-1.3,1.57)*cf(0,0,0),.4)
brefwld.C0=clerp(brefwld.C0,euler(0,0,n)*cf(0,0,6),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,2,1.57),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,-2,-1.57),.4)
end
n=math.random(-50,50)
for i=0,1,0.1 do
swait()
bwld1.C0=clerp(bwld1.C0,cf(0,-1,-2)*euler(0,0,2.09),.3)
bwld7.C0=clerp(bwld7.C0,cf(0,-1,-2)*euler(0,0,2.09*2),.3)
bwld13.C0=clerp(bwld13.C0,cf(0,-1,-2)*euler(0,0,2.09*3),.3)
brefwld.C0=clerp(brefwld.C0,euler(0,0,n)*cf(0,0,7),.3)
end
attack=false bladeattack=false
end
 
function attackfour()
attack=true bladeattack=true
for i=0,1,0.09 do
swait()
bwld1.C0=clerp(bwld1.C0,cf(0,-1,0)*euler(0,0,2.09),.4)
bwld7.C0=clerp(bwld7.C0,cf(0,-1,0)*euler(0,0,2.09*2),.4)
bwld13.C0=clerp(bwld13.C0,cf(0,-1,0)*euler(0,0,2.09*3),.4)
bwld2.C0=clerp(bwld2.C0,euler(1.57,0,-1.57)*cf(0,0,0),.4)
bwld8.C0=clerp(bwld8.C0,euler(1.57,0,-1.57)*cf(0,0,0),.4)
bwld14.C0=clerp(bwld14.C0,euler(1.57,0,-1.57)*cf(0,0,0),.4)
brefwld.C0=clerp(brefwld.C0,euler(-1.57,0,0)*cf(-5,-0.5,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,1.57),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.4,0,0),.3)
end
BladesDamage(math.random(40,80)/100)
for i=0,1,0.25 do
swait()
bwld1.C0=clerp(bwld1.C0,cf(0,-1,0)*euler(0,0,(2.09)+3.1),.3)
bwld7.C0=clerp(bwld7.C0,cf(0,-1,0)*euler(0,0,(2.09*2)+3.1),.3)
bwld13.C0=clerp(bwld13.C0,cf(0,-1,0)*euler(0,0,(2.09*3)+3.1),.3)
brefwld.C0=clerp(brefwld.C0,euler(-1.57,0,0)*cf(0,-0.5,8),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.5)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(0,2,1.57),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.4,0,-0.2),.5)
end
for i=0,1,0.2 do
swait()
bwld1.C0=clerp(bwld1.C0,cf(0,-1,0)*euler(0,0,(2.09)+5),.3)
bwld7.C0=clerp(bwld7.C0,cf(0,-1,0)*euler(0,0,(2.09*2)+5),.3)
bwld13.C0=clerp(bwld13.C0,cf(0,-1,0)*euler(0,0,(2.09*3)+5),.3)
brefwld.C0=clerp(brefwld.C0,euler(-1.57,0,0)*cf(0,-0.5,20),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(0,2.5,1.57),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.4,0,-0.2),.3)
end
for i=0,1,0.2 do
swait()
brefwld.C0=clerp(brefwld.C0,euler(-1.57,0,0)*cf(0,-2,0),.5)
bwld1.C0=clerp(bwld1.C0,cf(0,-1,0)*euler(0,0,(2.09)),.3)
bwld7.C0=clerp(bwld7.C0,cf(0,-1,0)*euler(0,0,(2.09*2)),.3)
bwld13.C0=clerp(bwld13.C0,cf(0,-1,0)*euler(0,0,(2.09*3)),.3)
end
attack=false bladeattack=false
end
 
function BladesDamage(pitch)
so("http://www.roblox.com/asset/?id=161006195",bprt1,.6,pitch)
so("http://www.roblox.com/asset/?id=161006195",bprt7,.6,pitch)
so("http://www.roblox.com/asset/?id=161006195",bprt13,.6,pitch)
hitbox1.Parent=Character
hitbox1.Size=vt(1,2,1)
hitbox1.CFrame=bprt4.CFrame*euler(0,0,1.57)
hitbox1.Transparency=1
hitbox2.Parent=Character
hitbox2.Size=vt(1,2,1)
hitbox2.CFrame=bprt10.CFrame*euler(0,0,1.57)
hitbox3.Parent=Character
hitbox3.Size=vt(1,2,1)
hitbox3.CFrame=bprt16.CFrame*euler(0,0,1.57)
con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,5),"Normal",RootPart,.5,1) end) 
con2=hitbox2.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,5),"Normal",RootPart,.5,1) end) 
con3=hitbox3.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,5),"Normal",RootPart,.5,1) end) 
coroutine.resume(coroutine.create(function()
while attack==true do
swait()
hitbox1.CFrame=bprt4.CFrame*euler(0,0,1.57)
hitbox2.CFrame=bprt10.CFrame
hitbox3.CFrame=bprt16.CFrame
end
con1:disconnect()
con2:disconnect()
con3:disconnect()
hitbox1.Parent=nil
hitbox2.Parent=nil
hitbox3.Parent=nil
end))
end
 
function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
if c~=CannonTarget.Parent or c~=RailgunTarget.Parent then
Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,nil,1)
end
end
end
end
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
local Point=Torso.CFrame*cf(0,Torso.Size.Y,0)
LastPoint=Point
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh=Instance.new("CylinderMesh")
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
effectsmsh.Name="Mesh"
local effectsg=Instance.new("Part")
effectsg.formFactor=3
effectsg.CanCollide=false
effectsg.Name="Eff"
effectsg.Locked=true
effectsg.Anchored=true
effectsg.Size=Vector3.new(0.5,1,0.5)
effectsg.Parent=workspace
effectsmsh.Parent=effectsg
effectsg.BrickColor=BrickColor.new(Color)
effectsg.Reflectance=Ref
local point1=P1
local mg=(LP.p - point1.p).magnitude
effectsg.Size=Vector3.new(0.5,mg,0.5)
effectsg.CFrame=cf((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function(Part,Mesh)
if not returnn then
for i=0,1,0.05 do
wait()
Part.Transparency=1*i
Mesh.Scale=Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
end
Part.Parent=nil
end
end),effectsg,effectsmsh)
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
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("White")
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
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=Part.Transparency+0.03
end
end),w1)
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("White")
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
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=Part.Transparency+0.03
end
end),w2)
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 
--[[
Things for effects
put the variables in one table
like effect={brick,interval,i}
]]
local Effects={}
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh,dur) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
--[[coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type,parent)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
if Type~=2 then
prt.Anchored=true
end
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,dur) 
local wld=nil
if dur==2 then
wld=weld(Part,Part,parent,euler(0,0,0)*cf(0,0,0))
end
for i=0,1,delay do
wait()
if dur==1 then
Part.CFrame=Part.CFrame
elseif dur==2 then
wld.C0=cframe
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,Type)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
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
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,mshtype)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local thetype=""
if mshtype==1 then
thetype="http://www.roblox.com/asset/?id=20329976"
elseif mshtype==2 then
thetype="http://www.roblox.com/asset/?id=1323306"
end
msh=mesh("SpecialMesh",prt,"FileMesh",thetype,vt(0,0,0),vt(x1,y1,z1))
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
 
function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
 
function MagicCylinder2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
 
function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
prt.Anchored=true
prt.CFrame=cf(cff)*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
game:GetService("Debris"):AddItem(prt,2)
xval=math.random()/2
yval=math.random()/2
zval=math.random()/2
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
Effects[#Effects+1]={prt,"Elec",0.1,x,y,z,xval,yval,zval} --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=cf(Frame)*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=0,1,0.05 do
swait()
xvaal=xvaal-0.1
yvaal=yvaal-0.1
zvaal=zvaal-0.1
Mesh.Scale=vt(xvaal,yvaal,zvaal)
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,cff,xval,yval,zval)]]
end
 
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
        -- and hit.Parent~=CannonTarget.Parent or hit.Parent~=RailgunTarget.Parent
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent~=CannonTarget.Parent and hit.Parent~=RailgunTarget.Parent then
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
                showDamage(hit.Parent,Damage,.5,BrickColor:Red())
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
--hit.CFrame=cf(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
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
                bodyVelocity.velocity=vt(0,30,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
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
                elseif Type=="Charge" then
                Charge=Charge+1
                coroutine.resume(coroutine.create(function(Part)
                swait(30)
                for i=1,5 do
                swait(5)
                so("rbxasset://sounds\\unsheath.wav",hit,1,2)
                MagicCircle(BrickColor.new("Bright red"),hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.2,2,.1,.2,8,.1,0.05)
                newdam=math.random(1,5)
                if blocked==false then
                h:TakeDamage(newdam)
                showDamage(hit.Parent,newdam,.5,BrickColor:Red())
                else
                h:TakeDamage(newdam/2)
                showDamage(hit.Parent,newdam,.5,BrickColor.new("Bright blue"))
                end
                end
                end),hit)
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
        c.CFrame=cf(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=cf(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
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
 
combo=0
local hold=false
local railgunshoot=true
local cannonshoot=true
function ob1d(mouse) 
hold=true
if attack==true then return end
coroutine.resume(coroutine.create(function() 
while hold==true do
wait()
if aimrailgun==true and railgunshoot==true then
railgunshoot=false
coroutine.resume(coroutine.create(function() 
wait(.8)
railgunshoot=true
end))
ShootRailGun()
end
if aimcannon==true and cannonshoot==true then
cannonshoot=false
coroutine.resume(coroutine.create(function() 
wait(2.1)
cannonshoot=true
end))
ShootCannon()
end
end
end))
if aimrailgun==true or aimcannon==true then return end
if bladeattack==true then return end
--attackfour()
if combo==0 then
combo=1
attackone()
elseif combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=3
attackthree()
elseif combo==3 then
combo=4
attackfour()
elseif combo==4 then
combo=0
end
coroutine.resume(coroutine.create(function() 
for i=1,20 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
equipanim()
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
holdx=false
equipped=false
function key(key) 
if key=="g" and aimrailgun==false and aimcannon==false and equipped==true then
if changetarget==false then
attack=true
changetarget=true
coroutine.resume(coroutine.create(function()
while changetarget==true do
ElecEffect(prt1.Position,1,1,1)
wait(.1)
ElecEffect(aprt1.Position,1,1,1)
wait(.1)
end
end))
ChangeTargetPose()
else
attack=false
changetarget=false
for i=0,1,0.05 do
swait()
wld1.C0=clerp(wld1.C0,euler(-0.2,0,0)*cf(3,-1,-0.2),.4)
awld1.C0=clerp(awld1.C0,euler(-0.2,0,0)*cf(-3,-1,-0.2),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.3)
--[[RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.5),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.5),.3)]]
--[[Torso.Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)]]
end
end
end
if changetarget==true and aimrailgun==false and aimcannon==false then
if key=="z" then
ChangeRailgunTarget()
end
if key=="x" then
ChangeCannonTarget()
end
if key=="c" then
BackToMe()
end
end
if attack==true then return end
if key=="f" then
attack=true
if equipped==false then
equipped=true
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
--
equipanim() 
else
changetarget=false
equipped=false
hideanim() 
swait(0) 
RW.Parent=nil 
LW.Parent=nil 
RSH.Parent=player.Character.Torso 
LSH.Parent=player.Character.Torso 
end
attack=false
end
if equipped==false then return end
if changetarget==true then return end
if key=="0" then
Humanoid.WalkSpeed=(16*1.5)
end
if key=="z" then
if aimrailgun==false then
aimrailgun=true
AimRailGun()
else
aimrailgun=false
UnAimRailGun()
end
end
if key=="x" then
if aimcannon==false then
aimcannon=true
AimCannon()
else
aimcannon=false
UnAimCannon()
end
end
end 
 
function key2(key) 
if key=="0" then
Humanoid.WalkSpeed=16
end
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
 
player=Player 
ch=Character 
MMouse=mouse 
end 
 
function ds(mouse) 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Vanguard Gauntlet loaded.")
 
local Anim="Idle"
local idleanim=0
local idleanim2=false
while true do
swait()
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
if equipped==true then
if idleanim>=0.5 then
idleanim2=true
elseif idleanim<=0 then
idleanim2=false
end
if idleanim2==false then
idleanim=idleanim+0.002
else
idleanim=idleanim-0.002
end
if bladeattack==false then
brefwld.C0=clerp(brefwld.C0,euler(0,0,0)*cf(0,-2+idleanim,0),.4)
bwld1.C0=clerp(bwld1.C0,euler(0,0,0)*cf(2,-0.6,-2),.4)
bwld7.C0=clerp(bwld7.C0,euler(0,0,0)*cf(0,-0.6,-2),.4)
bwld13.C0=clerp(bwld13.C0,euler(0,0,0)*cf(-2,-0.6,-2),.4)
bwld2.C0=clerp(bwld2.C0,euler(3.14,-2-(idleanim/2),1.57-0.4)*cf(0,0,0),.4)
bwld8.C0=clerp(bwld8.C0,euler(3.14,-2-(idleanim/2),1.57)*cf(0,0,0),.4)
bwld14.C0=clerp(bwld14.C0,euler(3.14,-2-(idleanim/2),1.57+0.4)*cf(0,0,0),.4)
end
if RootPart.Velocity.y > 2 then 
Anim="Jump"
if changetarget==false and bladeattack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.4,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-0.5,-1)*euler(-0.5,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.7,-1.57,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.2,0,0.3),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.2,0,-0.3),.2)
end
elseif RootPart.Velocity.y < -2 then 
Anim="Fall"
if changetarget==false and bladeattack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-0.1,0,0),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.4,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.4,0,0.1),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.4,0,-0.1),.2)
end
elseif torvel<1 then
Anim="Idle"
--idleanim=idleanim+0.005
--[[if idleanim>=0.5 then
idleanim=0
end]]
RH.C0=clerp(RH.C0,RHC0,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
--[[RH.C0=RHC0
RH.C1=RHC1
LH.C0=LHC0
LH.C1=LHC1]]
if changetarget==false and bladeattack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
end
if aimcannon==false and attack==false then
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(idleanim,0,0.5-idleanim),.2)
end
if aimrailgun==false and attack==false then
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(idleanim,0,-0.5+idleanim),.2)
end
--elseif torvel>=22 then
elseif torvel>2 and torvel<22 then
Anim="Walk"
if changetarget==false and bladeattack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
end
--RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0.5),.4)
if aimcannon==false and changetarget==false and bladeattack==false then
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.5,0,0),.2)
end
if aimrailgun==false and changetarget==false and bladeattack==false then
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.5,0,0),.2)
end
elseif torvel>=22 then
--elseif torvel>2 and torvel<22 then
Anim="Run"
--print("runnin'")
 
if changetarget==false and bladeattack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.5,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.3,0,0),.3)
end
if aimcannon==false and changetarget==false and bladeattack==false then
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-1,0,0),.3)
end
if aimrailgun==false and changetarget==false and bladeattack==false then
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.57,0,1),.3)
end
end
end
--[[if torvel<19 then 
Anim="Walk"
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.2,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.2,0,0),.4)
end
end))
elseif torvel<1 then
Anim="Idle"
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.5),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.5),.4)
end
end))
end]]
--[[if equipped==true and bladeattack==false then
brefwld.C0=clerp(brefwld.C0,euler(0,0,circle)*cf(0,-2,-2),.4)
circle=circle-0.1
end]]
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
--local TheCF=Thing[1].CFrame
--Thing[1].CFrame=TheCF
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
--Thing[3]=Thing[3]+Delay
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
--print(Thing[1].Transparency)
 
--[[local prt=part(3,workspace,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
prt.Anchored=true
game:GetService("Debris"):AddItem(prt,2)
xval=math.random()
yval=math.random()
zval=math.random()
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
Effects[#Effects+1]={prt,"Elec",0.05,x,y,z,xval,yval,zval}]]
--[[coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=cf(Frame)*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=0,1,0.05 do
swait()
xvaal=xvaal-0.1
yvaal=yvaal-0.1
zvaal=zvaal-0.1
Mesh.Scale=vt(xvaal,yvaal,zvaal)
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,cff,xval,yval,zval)]]
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
end
--[[ 
Copyrighted (C) Fenrier 2014
]] 
