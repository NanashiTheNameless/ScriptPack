--[[
Made by Fenrier.
]]
setfenv(1,getfenv(loadstring))
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
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
local MainC0=euler(1.57,0,0)*cf(0,0,0)
local MainC02=cf(0,0,-2.5)
local Tracer1C0=MainC02*euler(0,1.57-(0.628*0),0)
local Tracer2C0=MainC02*euler(0,1.57-(0.628*1),0)
local Tracer3C0=MainC02*euler(0,1.57-(0.628*2),0)
local Tracer4C0=MainC02*euler(0,1.57-(0.628*3),0)
local Tracer5C0=MainC02*euler(0,1.57-(0.628*4),0)
local Tracer6C0=MainC02*euler(0,1.57-(0.628*5),0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack=false 
Sentinelattack=false
attackdebounce=false 
MMouse=nil
combo=0
local MainWelds={}
local PrtWelds={}
local tehnum=1
circle=false
hovering=false
fly=false
Sentinelsummoned=false
local SentinelParts={}
local SentinelWelds={}
local SentinelWeaponWelds={}
Sentineltargetting=false
TargetTorso=Torso
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
 
if Character:findFirstChild("Tracers",true) ~= nil then 
Character:findFirstChild("Tracers",true).Parent = nil 
end 
if Character:findFirstChild("Sentinel's Halberd",true) ~= nil then 
Character:findFirstChild("Sentinel's Halberd",true).Parent = nil 
end 
 
 
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
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
NoOutline(fp)
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
 
function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
end
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Tracers" 
 
local prt1=part(1,modelzorz,0,1,Torso.BrickColor,"Base",vt(1,1,1))
msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1,1,1))
local wld1=weld(prt1,prt1,RootPart,euler(0,0,0)*cf(0,0,0))
local hitbox=part(1,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
--3.14/6=0.52
--3.14/5=0.628
numb=0
for i=1,6 do
local firstbase=part(1,modelzorz,0,1,Torso.BrickColor,"FirstBase",vt(1,1,1))
local firstprt1=part(1,modelzorz,0,0,BrickColor.new("White"),"Part1",vt(1,1,1))
local firstprt2=part(1,modelzorz,0,0,BrickColor.new("White"),"Part2",vt(1,1,1))
local firstprt3=part(1,modelzorz,0,0,BrickColor.new("White"),"Part3",vt(1,1,1))
local firstprt4=part(1,modelzorz,0,0,BrickColor.new("White"),"Part4",vt(1,1,1))
local firstprt5=part(1,modelzorz,0,0,BrickColor.new("White"),"Part5",vt(1,1,1))
local firstprt6=part(1,modelzorz,0,0.2,BrickColor.new("Black"),"Part6",vt(1,1,1))
local firstprt7=part(1,modelzorz,0,0.2,BrickColor.new("Black"),"Part7",vt(1,1,1))
local firstprt8=part(1,modelzorz,0,0,BrickColor.new("White"),"Part8",vt(1,1,1))
local firstprt9=part(1,modelzorz,0,0,BrickColor.new("White"),"Part9",vt(1,1,1))
local firstprt10=part(1,modelzorz,0,0.5,BrickColor.new("Black"),"Part10",vt(1,1,1))
local firstprt11=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local firstprt12=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local firstprt13=part(1,modelzorz,0,0,BrickColor.new("Bright orange"),"Part13",vt(1,1,1))
local firstprt14=part(1,modelzorz,0,0,BrickColor.new("Bright orange"),"Part14",vt(1,1,1))
 
firstbasemsh=mesh("BlockMesh",firstbase,"","",vt(0,0,0),vt(0.5,0.5,0.5))
firstmsh1=mesh("CylinderMesh",firstprt1,"","",vt(0,0,0),vt(0.5,0.2,0.5))
firstmsh2=mesh("BlockMesh",firstprt2,"","",vt(0,0,0),vt(0.3,0.1,0.2))
firstmsh3=mesh("BlockMesh",firstprt3,"","",vt(0,0,0),vt(0.3,0.1,0.2))
firstmsh4=mesh("BlockMesh",firstprt4,"","",vt(0,0,0),vt(0.2,0.099,0.5))
firstmsh5=mesh("BlockMesh",firstprt5,"","",vt(0,0,0),vt(0.2,0.099,0.5))
firstmsh6=mesh("BlockMesh",firstprt6,"","",vt(0,0,0),vt(0.25,0.05,0.55))
firstmsh7=mesh("BlockMesh",firstprt7,"","",vt(0,0,0),vt(0.25,0.05,0.55))
firstmsh8=mesh("SpecialMesh",firstprt8,"Torso","",vt(0,0,0),vt(0.35,0.2,0.1))
firstmsh9=mesh("SpecialMesh",firstprt9,"Torso","",vt(0,0,0),vt(0.35,0.4,0.1))
firstmsh10=mesh("BlockMesh",firstprt10,"","",vt(0,0,0),vt(0.35,0.6,0.01))
firstmsh11=mesh("BlockMesh",firstprt11,"","",vt(0,0,0),vt(0.2,0.6,0.15))
firstmsh12=mesh("CylinderMesh",firstprt12,"","",vt(0,0,0),vt(0.35,0.21,0.35))
firstmsh13=mesh("SpecialMesh",firstprt13,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(0.2,0.2,1.8))
firstmsh14=mesh("BlockMesh",firstprt14,"","",vt(0,0,0),vt(0.05,0.2,0.27))
 
local firstbasewld=weld(firstbase,firstbase,prt1,cf(0,0,-2.5)*euler(0,1.57-numb,0))
table.insert(MainWelds,firstbasewld)
--[[coroutine.resume(coroutine.create(function(Weld,Numb)
if tehnum==1 then
while true do
wait()
Weld.C0=Tracer1C0*cf(0,0,-2.5)*euler(0,1.57-Numb,0)
end
elseif tehnum==2 then
while true do
wait()
Weld.C0=Tracer2C0*cf(0,0,-2.5)*euler(0,1.57-Numb,0)
end
elseif tehnum==3 then
while true do
wait()
Weld.C0=Tracer3C0*cf(0,0,-2.5)*euler(0,1.57-Numb,0)
end
elseif tehnum==4 then
while true do
wait()
Weld.C0=Tracer4C0*cf(0,0,-2.5)*euler(0,1.57-Numb,0)
end
elseif tehnum==5 then
while true do
wait()
Weld.C0=Tracer5C0*cf(0,0,-2.5)*euler(0,1.57-Numb,0)
end
elseif tehnum==6 then
while true do
wait()
Weld.C0=Tracer6C0*cf(0,0,-2.5)*euler(0,1.57-Numb,0)
end
tehnum=tehnum+1
--Weld.C0=MainC02*cf(0,0,-2.5)*euler(0,1.57-Numb,0)
end
end),firstbasewld,numb)]]
local firstwld1=weld(firstprt1,firstprt1,firstbase,euler(1.57,0,0)*cf(0,0,0))
coroutine.resume(coroutine.create(function(Weld)
while true do
wait()
Weld.C0=MainC0
end
end),firstwld1)
table.insert(PrtWelds,firstwld1)
local firstwld2=weld(firstprt2,firstprt2,firstprt1,euler(0,0.7,0)*cf(-0.1,0,-0.2))
local firstwld3=weld(firstprt3,firstprt3,firstprt1,euler(0,-0.7,0)*cf(0.1,0,-0.2))
local firstwld4=weld(firstprt4,firstprt4,firstprt2,euler(0,0.7+1.57,0)*cf(0.05,0,-0.4))
local firstwld5=weld(firstprt5,firstprt5,firstprt3,euler(0,-0.7+1.57,0)*cf(-0.05,0,-0.4))
local firstwld6=weld(firstprt6,firstprt6,firstprt4,euler(0,0,0)*cf(0,0,0))
local firstwld7=weld(firstprt7,firstprt7,firstprt5,euler(0,0,0)*cf(0,0,0))
local firstwld8=weld(firstprt8,firstprt8,firstprt1,euler(-1.57,0,0)*cf(0,0,0.3))
local firstwld9=weld(firstprt9,firstprt9,firstprt8,euler(0,0,3.14)*cf(0,0.36,0))
local firstwld10=weld(firstprt10,firstprt10,firstprt9,euler(0,0,0)*cf(0,-0.1,0))
local firstwld11=weld(firstprt11,firstprt11,firstprt9,euler(0,0,0)*cf(0,0.1,0))
local firstwld12=weld(firstprt12,firstprt12,firstprt1,euler(0,0,0)*cf(0,0,0))
local firstwld13=weld(firstprt13,firstprt13,firstprt1,euler(1.57,0,0)*cf(0,0,0.05))
local firstwld14=weld(firstprt14,firstprt14,firstprt1,euler(1.57,0,0)*cf(0,0,-0.05))
 
coroutine.resume(coroutine.create(function()
while true do
for i=0,1,0.05 do
if attack==false and combo==0 then
wait()
wld1.C0=euler(0,0,0)*cf(0,0.1*i,0)
end
end
for i=0,1,0.05 do
if attack==false and combo==0 then
wait()
wld1.C0=euler(0,0,0)*cf(0,0.1-0.1*i,0)
end
end
wait(0)
end
end))
numb=numb+0.628
end
for i=1,#MainWelds do
print(MainWelds[i])
coroutine.resume(coroutine.create(function(Weld,Numb)
while true do
wait()
if Numb==1 then
Weld.C0=Tracer1C0
end
if Numb==2 then
Weld.C0=Tracer2C0
end
if Numb==3 then
Weld.C0=Tracer3C0
end
if Numb==4 then
Weld.C0=Tracer4C0
end
if Numb==5 then
Weld.C0=Tracer5C0
end
if Numb==6 then
Weld.C0=Tracer6C0
end
end
end),MainWelds[i],i)
--Weld.C0=Tracer6C0*cf(0,0,-2.5)*euler(0,1.57-Numb,0)
end
 
local Sentinel=Instance.new("Model")
Sentinel.Parent=nil
Sentinel.Name="Sentinel"
local AHumanoid=Instance.new("Humanoid")
AHumanoid.Parent=Sentinel
AHumanoid.Name="Humanoid"
SentinelHealth=100
AHumanoid.MaxHealth=SentinelHealth
AHumanoid.Health=SentinelHealth
--AHumanoid.Died:connect(function() wait(5) if Sentinel==nil then return end Sentinel:Remove() end) 
 
local ARootPart=part("Symmetric",Sentinel,0,1,BrickColor.new("Bright blue"),"HumanoidRootPart",vt(2,2,1))
local AHead=part("Symmetric",Sentinel,0,0,BrickColor.new("Pastel brown"),"Head",vt(2,1,1))
local AHat=part("Symmetric",Sentinel,0,0,BrickColor.new("Bright blue"),"Hat",vt(2,2,2))
local ATorso=part("Symmetric",Sentinel,0,0,BrickColor.new("Bright blue"),"Torso",vt(2,2,1))
local ALeftArm=part("Symmetric",Sentinel,0,0,BrickColor.new("Medium stone grey"),"Left Arm",vt(1,2,1))
local ALeftLeg=part("Symmetric",Sentinel,0,0,BrickColor.new("Medium stone grey"),"Left Leg",vt(1,2,1))
local ARightArm=part("Symmetric",Sentinel,0,0,BrickColor.new("Medium stone grey"),"Right Arm",vt(1,2,1))
local ARightLeg=part("Symmetric",Sentinel,0,0,BrickColor.new("Medium stone grey"),"Right Leg",vt(1,2,1))
for _,c in pairs(Sentinel:children()) do
table.insert(SentinelParts,c)
if c.className=="Part" then
c.Material="Plastic"
end
end
 
SentinelShirt=Instance.new("Shirt")
SentinelShirt.Parent=Sentinel
SentinelShirt.ShirtTemplate="http://www.roblox.com/asset/?id=23077769"
SentinelPants=Instance.new("Pants")
SentinelPants.Parent=Sentinel
SentinelPants.PantsTemplate="http://www.roblox.com/asset/?id=23080092"
 
local AHeadMsh=mesh("SpecialMesh",AHead,"Head","",vt(0,0,0),vt(1.25,1.25,1.25))
local AHatMsh=mesh("SpecialMesh",AHat,"FileMesh","http://www.roblox.com/asset/?id=17438747",vt(0,0,0),vt(1,1,1))
AHatMsh.TextureId="http://www.roblox.com/asset/?id=156410868"
 
local ARootJoint=weld(ATorso,ATorso,ARootPart,euler(0,0,0)*cf(0,0,0))
local ANeck=weld(ATorso,ATorso,AHead,necko)
ANeck.C1=necko2
local ARW=weld(ATorso,ATorso,ARightArm,euler(0,0,0)*cf(1.5,0.5,0))
ARW.C1=cf(0,0.5,0)
local ALW=weld(ATorso,ATorso,ALeftArm,euler(0,0,0)*cf(-1.5,0.5,0))
ALW.C1=cf(0,0.5,0)
local ALH=weld(ATorso,ATorso,ALeftLeg,LHC0)
ALH.C1=LHC1
local ARH=weld(ATorso,ATorso,ARightLeg,RHC0)
ARH.C1=RHC1
local AHatWld=weld(ATorso,AHat,AHead,cf(0,-0.5,0))
ARootJoint.C0=cf(0,0,0)
ARW.C0=cf(1.5,0.5,0)*euler(0,0,0)
ARW.C1=cf(0,0.5,0)
ALW.C0=cf(-1.5,0.5,0)*euler(0,0,0)
ALW.C1=cf(0,0.5,0)
for _,c in pairs(ATorso:children()) do
table.insert(SentinelWelds,c)
end
 
local modelzorz2 = Instance.new("Model") 
modelzorz2.Parent = Sentinel
modelzorz2.Name = "Sentinel's Halberd" 
 
local aprt1=part(1,modelzorz2,0,0,BrickColor.new("Dark green"),"Part1",vt(1,1,1))
local aprt2=part(1,modelzorz2,0,0,BrickColor.new("Dark green"),"Part2",vt(1,1,1))
local aprt3=part(1,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local aprt4=part(1,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local aprt5=part(1,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local aprt6=part(1,modelzorz2,0,0,BrickColor.new("Bright blue"),"Part6",vt(1,1,1))
local aprt7=part(1,modelzorz2,0,0,BrickColor.new("Bright blue"),"Part7",vt(1,1,1))
local aprt8=part(1,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local aprt9=part(1,modelzorz2,0,0,BrickColor.new("White"),"Part9",vt(1,1,1))
local aprt10=part(1,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part10",vt(1,1,1))
local aprt11=part(1,modelzorz2,0,0,BrickColor.new("White"),"Part11",vt(1,1,1))
local aprt12=part(1,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part12",vt(1,1,1))
local aprt13=part(1,modelzorz2,0,0,BrickColor.new("White"),"Part13",vt(1,1,1))
local aprt14=part(1,modelzorz2,0,0,BrickColor.new("Bright blue"),"Part14",vt(1,1,1))
local aprt15=part(1,modelzorz2,0,0,BrickColor.new("White"),"Part15",vt(1,1,1))
local aprt16=part(1,modelzorz2,0,0,BrickColor.new("Black"),"Part16",vt(1,1,1))
local aprt17=part(1,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part17",vt(1,1,1))
local aprt18=part(1,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part18",vt(1,1,1))
local aprt19=part(1,modelzorz2,0,0,BrickColor.new("Cyan"),"Part19",vt(1,1,1))
local aprt20=part(1,modelzorz2,0.1,0.5,BrickColor.new("Bright blue"),"Part20",vt(1,1,1))
local aprt21=part(1,modelzorz2,0.1,0.5,BrickColor.new("Bright blue"),"Part21",vt(1,1,1))
local aprt22=part(1,modelzorz2,0.1,0.5,BrickColor.new("Bright blue"),"Part22",vt(1,1,1))
local aprt23=part(1,modelzorz2,0,0,BrickColor.new("White"),"Part23",vt(1,1,1))
local ahitbox=part(1,modelzorz2,0,1,BrickColor.new("Black"),"Hitbox",vt(1,6,2))
 
amsh1=mesh("CylinderMesh",aprt1,"","",vt(0,0,0),vt(0.4,3,0.4))
amsh2=mesh("BlockMesh",aprt2,"","",vt(0,0,0),vt(0.5,0.2,0.8))
amsh3=mesh("BlockMesh",aprt3,"","",vt(0,0,0),vt(0.5,0.4,0.8))
amsh4=mesh("BlockMesh",aprt4,"","",vt(0,0,0),vt(0.4,0.8,0.6))
amsh5=mesh("BlockMesh",aprt5,"","",vt(0,0,0),vt(0.39,0.6,0.6))
amsh6=mesh("BlockMesh",aprt6,"","",vt(0,0,0),vt(0.3,0.8,0.8))
amsh7=mesh("BlockMesh",aprt7,"","",vt(0,0,0),vt(0.3,1,0.8))
amsh8=mesh("CylinderMesh",aprt8,"","",vt(0,0,0),vt(0.5,1,0.5))
amsh9=mesh("BlockMesh",aprt9,"","",vt(0,0,0),vt(0.5,1,0.8))
amsh10=mesh("BlockMesh",aprt10,"","",vt(0,0,0),vt(0.2,0.6,0.5))
amsh11=mesh("BlockMesh",aprt11,"","",vt(0,0,0),vt(0.6,1,0.8))
amsh12=mesh("BlockMesh",aprt12,"","",vt(0,0,0),vt(0.2,0.6,0.5))
amsh13=mesh("BlockMesh",aprt13,"","",vt(0,0,0),vt(0.59,1.5,0.8))
amsh14=mesh("BlockMesh",aprt14,"","",vt(0,0,0),vt(0.4,1.7,1))
amsh15=mesh("BlockMesh",aprt15,"","",vt(0,0,0),vt(0.59,3.5,0.5))
amsh16=mesh("BlockMesh",aprt16,"","",vt(0,0,0),vt(0.49,3.5,0.4))
amsh17=mesh("BlockMesh",aprt17,"","",vt(0,0,0),vt(0.2,0.4,0.2))
amsh18=mesh("CylinderMesh",aprt18,"","",vt(0,0,0),vt(0.6,0.6,0.6))
amsh19=mesh("SpecialMesh",aprt19,"Sphere","",vt(0,0,0),vt(0.6,1,0.6))
amsh20=mesh("BlockMesh",aprt20,"","",vt(0,0,0),vt(0.05,1.2,1))
amsh21=mesh("BlockMesh",aprt21,"","",vt(0,0,0),vt(0.05,2,1))
amsh22=mesh("SpecialMesh",aprt22,"Wedge","",vt(0,0,0),vt(0.05,1,1))
amsh23=mesh("BlockMesh",aprt23,"","",vt(0,0,0),vt(0.4,1,0.5))
 
local awld1=weld(aprt1,aprt1,ARightArm,euler(1.57,0,0)*cf(0,1,0))
local awld2=weld(aprt1,aprt2,aprt1,euler(0.5,0,0)*cf(0,1.8,0.1))
local awld3=weld(aprt1,aprt3,aprt2,euler(0,0,0)*cf(0,0.35,0))
local awld4=weld(aprt1,aprt4,aprt3,euler(-0.6,0,0)*cf(0,0.4,0.15))
local awld5=weld(aprt1,aprt5,aprt4,euler(1.57,0,0)*cf(0,0.2,-0.1))
local awld6=weld(aprt1,aprt6,aprt5,euler(0,0,0)*cf(0,0,0))
local awld7=weld(aprt1,aprt7,aprt4,euler(0,0,0)*cf(0,0,0))
local awld8=weld(aprt1,aprt8,aprt1,euler(0,0,0)*cf(0,-1.5,0))
local awld9=weld(aprt1,aprt9,aprt8,euler(0,0,0)*cf(0,-1,-0.1))
local awld10=weld(aprt1,aprt10,aprt9,euler(-1,0,0)*cf(0,0.2,0.5))
local awld11=weld(aprt1,aprt11,aprt9,euler(1,0,0)*cf(0,-0.5,0.5))
local awld12=weld(aprt1,aprt12,aprt11,euler(1.57,0,0)*cf(0,-0.3,0.7))
local awld13=weld(aprt1,aprt13,aprt11,euler(-1,0,0)*cf(0,-0.4,-0.8))
local awld14=weld(aprt1,aprt14,aprt13,euler(0,0,0)*cf(0,0,-0.11))
local awld15=weld(aprt1,aprt15,aprt13,euler(0,0,0)*cf(0,-0.2,-0.8))
local awld16=weld(aprt1,aprt16,aprt15,euler(0,0,0)*cf(0,-0.01,0))
local awld17=weld(aprt1,aprt17,aprt15,euler(0.7,0,0)*cf(0,2.2,0))
local awld18=weld(aprt1,aprt18,aprt9,euler(0,0,1.57)*cf(0,0,0))
local awld19=weld(aprt1,aprt19,aprt18,euler(0,0,0)*cf(0,0,0))
local awld20=weld(aprt1,aprt20,aprt13,euler(-0.5,0,0)*cf(0,-0.2,0.3))
local awld21=weld(aprt1,aprt21,aprt13,euler(0,0,0)*cf(0,-2,-0.1))
local awld22=weld(aprt1,aprt22,aprt21,euler(0,0,0)*cf(0,-1.8,0))
local awld23=weld(aprt1,aprt23,aprt15,euler(0,0,0)*cf(0,-1.5,-0.4))
local ahitboxwld=weld(aprt1,ahitbox,aprt21,euler(0,0,0)*cf(0,1,0))
 
for _,c in pairs(aprt1:children()) do
if c.className=="Weld" then
table.insert(SentinelWeaponWelds,c)
end
end
 
local AFace=Instance.new("Decal")
AFace.Texture="http://www.roblox.com/asset/?id=157473950"
AFace.Face="Front"
AFace.Parent=AHead
 
local hoverpos=Instance.new("BodyPosition")
local bv=Instance.new("BodyVelocity") 
bv.Parent=nil
bv.maxForce=Vector3.new(4e+020, 4e+020, 4e+020) 
 

Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Fen and Sentinel" 
script.Parent = Tool 
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
 
function hideanim() 
equipped=false
wld1.C0=euler(0,0,0)
MainC0=euler(1.57,0,0)*cf(0,0,0)
MainC02=cf(0,0,-2.5)
Tracer1C0=MainC02*euler(0,1.57-(0.628*0),0)
Tracer2C0=MainC02*euler(0,1.57-(0.628*1),0)
Tracer3C0=MainC02*euler(0,1.57-(0.628*2),0)
Tracer4C0=MainC02*euler(0,1.57-(0.628*3),0)
Tracer5C0=MainC02*euler(0,1.57-(0.628*4),0)
Tracer6C0=MainC02*euler(0,1.57-(0.628*5),0)
end 
 
function equipanim() 
equipped=true
for i=0,1,0.1 do
wait()
MainC0=euler(1.57+0.43*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-2.5-0.5*i)
Tracer1C0=MainC02*euler(0,1.57-(0.628*0),0)
Tracer2C0=MainC02*euler(0,1.57-(0.628*1),0)
Tracer3C0=MainC02*euler(0,1.57-(0.628*2),0)
Tracer4C0=MainC02*euler(0,1.57-(0.628*3),0)
Tracer5C0=MainC02*euler(0,1.57-(0.628*4),0)
Tracer6C0=MainC02*euler(0,1.57-(0.628*5),0)
Neck.C0=necko
RootJoint.C0=RootCF
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
end 
 
--6.28/6=1.046
function Circle(circtime)
circle=true
for i=0,1,circtime do
wait()
Tracer1C0=MainC02*euler(0,1.57-(0.628*0),0)*euler(0,(0.628*0)*i,0)*euler(0,-(1.046*0)*i,0)
Tracer2C0=MainC02*euler(0,1.57-(0.628*1),0)*euler(0,(0.628*1)*i,0)*euler(0,-(1.046*1)*i,0)
Tracer3C0=MainC02*euler(0,1.57-(0.628*2),0)*euler(0,(0.628*2)*i,0)*euler(0,-(1.046*2)*i,0)
Tracer4C0=MainC02*euler(0,1.57-(0.628*3),0)*euler(0,(0.628*3)*i,0)*euler(0,-(1.046*3)*i,0)
Tracer5C0=MainC02*euler(0,1.57-(0.628*4),0)*euler(0,(0.628*4)*i,0)*euler(0,-(1.046*4)*i,0)
Tracer6C0=MainC02*euler(0,1.57-(0.628*5),0)*euler(0,(0.628*5)*i,0)*euler(0,-(1.046*5)*i,0)
end
coroutine.resume(coroutine.create(function()
while circle==true do
wait()
Tracer1C0=MainC02*euler(0,1.57-(1.046*0),0)
Tracer2C0=MainC02*euler(0,1.57-(1.046*1),0)
Tracer3C0=MainC02*euler(0,1.57-(1.046*2),0)
Tracer4C0=MainC02*euler(0,1.57-(1.046*3),0)
Tracer5C0=MainC02*euler(0,1.57-(1.046*4),0)
Tracer6C0=MainC02*euler(0,1.57-(1.046*5),0)
end
end))
end
 
function UnCircle(circtime)
circle=false
for i=0,1,circtime do
wait()
Tracer1C0=MainC02*euler(0,1.57-(1.046*0),0)*euler(0,(1.046*0)*i,0)*euler(0,-(0.628*0)*i,0)
Tracer2C0=MainC02*euler(0,1.57-(1.046*1),0)*euler(0,(1.046*1)*i,0)*euler(0,-(0.628*1)*i,0)
Tracer3C0=MainC02*euler(0,1.57-(1.046*2),0)*euler(0,(1.046*2)*i,0)*euler(0,-(0.628*2)*i,0)
Tracer4C0=MainC02*euler(0,1.57-(1.046*3),0)*euler(0,(1.046*3)*i,0)*euler(0,-(0.628*3)*i,0)
Tracer5C0=MainC02*euler(0,1.57-(1.046*4),0)*euler(0,(1.046*4)*i,0)*euler(0,-(0.628*4)*i,0)
Tracer6C0=MainC02*euler(0,1.57-(1.046*5),0)*euler(0,(1.046*5)*i,0)*euler(0,-(0.628*5)*i,0)
end
coroutine.resume(coroutine.create(function()
while circle==false do
wait()
Tracer1C0=MainC02*euler(0,1.57-(0.628*0),0)
Tracer2C0=MainC02*euler(0,1.57-(0.628*1),0)
Tracer3C0=MainC02*euler(0,1.57-(0.628*2),0)
Tracer4C0=MainC02*euler(0,1.57-(0.628*3),0)
Tracer5C0=MainC02*euler(0,1.57-(0.628*4),0)
Tracer6C0=MainC02*euler(0,1.57-(0.628*5),0)
end
end))
end
 
function attackone()
attack=true
Humanoid.WalkSpeed=5
coroutine.resume(coroutine.create(function()
Circle(0.2)
end))
coroutine.resume(coroutine.create(function()
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57*i,0,0)*cf(0,-1*i,2*i)
MainC0=euler(2+1.14*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-3+1.5*i)
end
end))
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2*i,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+1*i,0.5,-0.5*i)*euler(2.5*i,0,-0.5+1.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Knockdown",RootPart) end) 
hitbox.Parent=modelzorz
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
hitbox.Size=vt(1.5,2,1.5)
so("http://www.roblox.com/asset/?id=2101148",prt1,0.5,2) 
so("http://www.roblox.com/asset/?id=161006182",prt1,1,1)
MagicCircle(BrickColor.new("White"),prt1.CFrame*cf(0,1,0),1,1,1,0.2,0.2,0.2,0.05)
WaveEffect(BrickColor.new("Black"),prt1.CFrame*cf(0,0,0),0.5,0.5,0.5,0.2,0.6,0.2)
for i=1,3 do
MagicBlock2(BrickColor.new("White"),prt1.CFrame*euler((math.random(-1,0)+math.random())/2,(math.random(-1,0)+math.random())/2,(math.random(-1,0)+math.random())/2),0,0,0,0.2,0.2,0.2,0)
end
for i=0,1,0.2 do
wait()
hitbox.CFrame=HBCF*cf(0,0.8,0)
HBCF=HBCF*cf(0,0.8,0)
MagicBlock(BrickColor.new("Black"),hitbox.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3)),0.5,0.5,0.5,0.3,0.3,0.3)
MainC0=euler(3.14-0.5*i,0,0)*cf(0,0,0)
Neck.C0=necko*euler(0,0,0.5-0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5+0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-0.5-1*i,0.5,-0.5+0.5*i)*euler(2.5-2.7*i,0,1-1.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
aninumb=2
for i=0,1,0.2 do
wait()
hitbox.CFrame=HBCF*cf(0,0.4,0)
HBCF=HBCF*cf(0,0.5,0)
MagicBlock(BrickColor.new("Black"),hitbox.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3)),0.5,0.5,0.5,0.3,0.3,0.3)
MainC0=euler(3.14-0.5-0.1*(i*aninumb),0,0)*cf(0,0,0)
Neck.C0=necko*euler(0,0,-0.1*(i*aninumb))
RootJoint.C0=RootCF*euler(0,0,0.1*(i*aninumb))
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2-0.1*(i*aninumb),0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
aninumb=aninumb-0.2
end
con1:disconnect()
hitbox.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function attacktwo()
attack=true
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
wait()
MainC0=euler(2.54+0.6*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-1.5-1*i)*euler(0,1*i,0)
Neck.C0=necko*euler(0,0,-0.1+0.9*i)
RootJoint.C0=RootCF*euler(0,0,0.1-0.9*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.5+0.1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.3+1.3*i,0,-0.5+0.3*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,30),"Normal",RootPart) end) 
hitbox.Parent=modelzorz
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
hitbox.Size=vt(4,5,4)
MagicCircle(BrickColor.new("White"),prt1.CFrame*cf(0,0,0),4,4,4,0.4,0.4,0.4,0.05)
WaveEffect(BrickColor.new("Black"),prt1.CFrame*cf(0,0,0),2,0.5,2,0.2,1.3,0.2)
so("http://www.roblox.com/asset/?id=2101148",prt1,0.5,1.6) 
so("http://www.roblox.com/asset/?id=161006182",prt1,1,0.8)
for i=0,1,0.15 do
wait()
hitbox.CFrame=HBCF
HBCF=HBCF*cf(0,3,0)
MagicBlock(BrickColor.new("Black"),hitbox.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3)),0.5,0.5,0.5,0.3,0.3,0.3)
MainC02=cf(0,0,-2.5)*euler(0,1+0.5*i,0)
MainC0=euler(3.14-0.5*i,0,0)*cf(0,0,0)
Neck.C0=necko*euler(0,0,0.8+0.2*i)
RootJoint.C0=RootCF*euler(0,0,-0.8-0.2*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.6)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1+2*i,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
aninumb=2
for i=0,1,0.2 do
wait()
hitbox.CFrame=HBCF
HBCF=HBCF*cf(0,0.5,0)
MagicBlock(BrickColor.new("Black"),hitbox.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3)),0.5,0.5,0.5,0.3,0.3,0.3)
MainC02=cf(0,0,-2.5)*euler(0,1.5+0.1*(i*aninumb),0)
MainC0=euler(2.64-0.1*(i*aninumb),0,0)*cf(0,0,0)
Neck.C0=necko*euler(0,0,1)
RootJoint.C0=RootCF*euler(0,0,-1)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.6)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(3+0.1*(i*aninumb),0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
aninumb=aninumb-0.2
end
con1:disconnect()
hitbox.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function attackthree()
attack=true
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,0)*cf(-0.8*i,-1+0.5*i,2)
MainC02=cf(0,0,-2.5)*euler(0,1.6+1*i,0)
MainC0=euler(2.54-4.11*i,0,0)*cf(0,0,0)
Neck.C0=necko*euler(0,0,1-2*i)
RootJoint.C0=RootCF*euler(0,0,-1+2*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+1.77*i,0,0.6+0.4*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(3.1-3.3*i,0,-0.2-0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
hitbox.Parent=modelzorz
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
hitbox.Size=vt(4,5,4)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,1,"Snare",RootPart) end) 
so("http://www.roblox.com/asset/?id=161006131",prt1,1,1.2) 
vel=Instance.new("BodyVelocity")
vel.Parent=Torso
vel.maxForce=vt(4e+005,4e+005,4e+005)*1
vel.velocity=RootPart.CFrame.lookVector*50
coroutine.resume(coroutine.create(function(Vel)
wait(0.5)
Vel.velocity=RootPart.CFrame.lookVector*10
end),vel)
bg=it("BodyGyro") 
bg.maxTorque=Vector3.new(4e+005,4e+005,4e+005)*math.huge 
bg.P=20e+003 
bg.Parent=Head
bg.cframe=Head.CFrame
for i=0,1,0.05 do
wait()
hitbox.CFrame=HBCF
HBCF=prt1.CFrame
MainC02=cf(0,0,-2.5)*euler(0,2.6+2.4*i,0)
MagicRing(BrickColor.new("White"),prt1.CFrame*euler(1.57,0,0),5,5,2,0,0,0)
end
con1:disconnect()
hitbox.Parent=nil
bg.Parent=nil
vel.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function attackfour()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57-1.57*i,0,0)*cf(-0.8+0.8*i,-0.5+3.5*i,2+2*i)
MainC02=cf(0,0,-2.5)*euler(0,1.6+1-1.5*i,0)
MainC0=euler(-1.57+1.57*i,0,0)*cf(0,0,0)
Neck.C0=necko*euler(-0.4*i,0,-1+1*i)
RootJoint.C0=RootCF*euler(0.5*i,0,1-1*i)
RW.C0=cf(1.5,0.5,0)*euler(1.57+0.13*i,0,1-1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.4)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
LH.C0=LHC0*euler(0,0,-1*i)
end
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(-0.4,0,-0.2*i)
RootJoint.C0=RootCF*cf(0,0,-1.5*i)*euler(0.5+0.3*i,0,0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(1.7-0.3*i,0,0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.4)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,-0.5*i,-0.5*i)
LH.C0=LHC0*cf(-0.5*i,1*i,0)*euler(0.5*i,0,-1+0.5*i)
end
hitbox.Parent=modelzorz
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
hitbox.Size=vt(10,8,10)
so("http://www.roblox.com/asset/?id=2233908",prt1,1,1.1) 
so("http://www.roblox.com/asset/?id=153092334",prt1,0.7,0.9)
POS=prt1.Position
WaveEffect2(BrickColor.new("White"),CFrame.new(POS),0.5,0.2,0.5,0.5,0.5,0.5)
MagicCircle(BrickColor.new("White"),CFrame.new(POS),6,6,6,0.8,0.8,0.8,0.05)
MagicBlock(BrickColor.new("Black"),CFrame.new(POS),1,1,1,2,2,2)
MagicBlock(BrickColor.new("Bright stone grey"),CFrame.new(POS),1,1,1,2,2,2)
coroutine.resume(coroutine.create(function(TehPos)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,40,1,"Knockdown",prt1) end) 
for i=1,5 do
hitbox.CFrame=HBCF
Lightning(TehPos+vt(math.random(-1,1),math.random(-1,1),math.random(-1,1)),TehPos+vt(math.random(-1,1),200,math.random(-1,1)),20,1,"White",0.1,0.1,0.4)
wait(0.1)
end
con1:disconnect()
hitbox.Parent=nil
end),POS)
wait(0.5)
Humanoid.WalkSpeed=16
coroutine.resume(coroutine.create(function()
UnCircle(0.1)
end))
for i=0,1,0.1 do
wait()
wld1.C0=euler(0,0,0)*cf(0,3-3*i,4-4*i)
MainC02=cf(0,0,-2.5-0.5*i)*euler(0,1.1-1.1*i,0)
MainC0=euler(2*i,0,0)*cf(0,0,0)
Neck.C0=necko*euler(-0.4+0.4*i,0,-0.2+0.2*i)
RootJoint.C0=RootCF*cf(0,0,-1.5+1.5*i)*euler(0.8-0.8*i,0,0.5-0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(1.4-1.4*i,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i,0,-0.4-0.1*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,-0.5+0.5*i,-0.5+0.5*i)
LH.C0=LHC0*cf(-0.5+0.5*i,1-1*i,0)*euler(0.5-0.5*i,0,-0.5+0.5*i)
end
attack=false
end
 
function dashattackone()
attack=true
coroutine.resume(coroutine.create(function()
Circle(0.2)
end))
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57*i,0,0)*cf(0,0,1*i)
MainC0=euler(2,0,0)*cf(0,0,0)
MainC02=cf(0,0,-3)
Neck.C0=necko*euler(0,0,0.5*i)
RootJoint.C0=RootCF*euler(0,0,-1*i)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5+0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(1.57*i,0,-0.5+1.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0
RH.C1=RHC1*cf(0,0,0)
LH.C0=LHC0
end
hitbox.Parent=modelzorz
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
hitbox.Size=vt(4,5,4)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,1,"Snare",RootPart) end) 
vel=Instance.new("BodyVelocity")
vel.Parent=Torso
vel.maxForce=vt(4e+005,4e+005,4e+005)*1
vel.velocity=RootPart.CFrame.lookVector*50
bg=it("BodyGyro") 
bg.maxTorque=Vector3.new(4e+005,4e+005,4e+005)*math.huge 
bg.P=20e+003 
bg.Parent=Head
bg.cframe=Head.CFrame
so("http://www.roblox.com/asset/?id=161006131",prt1,1,1.5) 
for i=0,1,0.1 do
wait()
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
MainC02=cf(0,0,-3)*euler(0,2.5*i,0)
MagicRing(BrickColor.new("White"),prt1.CFrame*cf(0,0.5,0)*euler(1.57,0,0),5,5,2,0,0,0)
end
con1:disconnect()
hitbox.Parent=nil
bg.Parent=nil
vel.Parent=nil
attack=false
end
 
function dashattacktwo()
attack=true
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57-1.57*i,0,0)*cf(0,0,1+3*i)
MainC0=euler(2-2*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-3-1*i)*euler(0,2.5-2.6*i,0)
Neck.C0=necko*euler(0,0,0.5+1.07*i)
RootJoint.C0=RootCF*euler(0,0,-1-0.57*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(1.57,0,1-2.57*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
wait(0.1)
so("http://www.roblox.com/asset/?id=2233908",prt1,1,0.9)
--so("http://www.roblox.com/asset/?id=2101148",prt1,0.5,2) 
so("http://www.roblox.com/asset/?id=161006182",prt1,1,1) 
WaveEffect2(BrickColor.new("White"),prt1.CFrame*cf(0,-2,0),0.5,0.2,0.5,0.7,0.3,0.7)
MagicCircle(BrickColor.new("White"),prt1.CFrame,6,6,6,0.8,0.8,0.8,0.05)
MagicBlock(BrickColor.new("Bright stone grey"),prt1.CFrame,1,1,1,2,2,2)
hitbox.Parent=modelzorz
hitbox.CFrame=HBCF
HBCF=prt1.CFrame
hitbox.Size=vt(10,5,10)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,1,"Knockdown",prt1) end) 
aninumb=2
for i=0,1,0.2 do
wait()
MainC02=cf(0,0,-4)*euler(0,-0.1-2*i,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(-0.5*(i*aninumb),0,0)
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
aninumb=aninumb-0.2
end
con1:disconnect()
hitbox.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function dashattackthree()
attack=true
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57*i,0,0)*cf(0,-0.5*i,4)
MainC0=euler(0,0,0)*cf(0,0,0)
MainC02=cf(0,0,-4+1*i)*euler(-1*i,-2.1+2.1*i,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(-0.5+0.5*i,0,0)
end
Humanoid.WalkSpeed=0
so("http://www.roblox.com/asset/?id=153092334",prt1,0.7,0.5)
hitbox.Parent=modelzorz
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
hitbox.Size=vt(5,5,5)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(10,20),"Snare",RootPart) end) 
for i=0,1,0.1 do
wait()
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
MagicCircle(BrickColor.new("White"),prt1.CFrame,0,0,0,1.5,1.5,1.5,0.1)
wld1.C0=euler(1.57,0,0)*cf(0,-0.5,4)
MainC0=euler(0,0,0)*cf(0,0,0)
MainC02=cf(0,0,-3)*euler(-1+1*i,1.5*i,0)
end
con1:disconnect()
hitbox.Parent=nil
for i=0,1,0.1 do
wait()
MagicCircle(BrickColor.new("White"),prt1.CFrame,0,0,0,1,1,1,0.2)
wld1.C0=euler(1.57,0,0)*cf(0,-0.5,4)
MainC0=euler(3.14*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-3)*euler(-0.5*i,1.5+1.5*i,0)
Neck.C0=necko*euler(0,0,1.57-3.14*i)
RootJoint.C0=RootCF*euler(0,0,-1.57+3.14*i)
RW.C0=cf(1.5,0.5,0)*euler(1.57*i,0,0.7+0.87*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.77*i,0,-1.57+1.57*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(50,60),"Knockdown",RootPart) end) 
hitbox.Parent=modelzorz
HBCF=prt1.CFrame
hitbox.CFrame=HBCF
hitbox.Size=vt(4,5,4)
so("http://www.roblox.com/asset/?id=2101148",prt1,0.5,2) 
so("http://www.roblox.com/asset/?id=161006182",prt1,1,0.7)
MagicCircle(BrickColor.new("White"),prt1.CFrame*cf(0,0,0),4,4,4,0.4,0.4,0.4,0.05)
WaveEffect(BrickColor.new("White"),prt1.CFrame*cf(0,0,0),2,0.5,2,0.2,1.3,0.2)
for i=1,3 do
MagicBlock2(BrickColor.new("Bright orange"),prt1.CFrame*euler((math.random(-1,0)+math.random())/2,(math.random(-1,0)+math.random())/2,(math.random(-1,0)+math.random())/2),0,0,0,0.2,0.2,0.2,0)
end
for i=0,1,0.1 do
wait()
hitbox.CFrame=HBCF*cf(0,0.8,0)
HBCF=HBCF*cf(0,0.8,0)
MagicBlock(BrickColor.new("White"),hitbox.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3)),0.5,0.5,0.5,0.3,0.3,0.3)
wld1.C0=euler(1.57,0,0)*cf(0,-0.5,4-7*i)
MainC0=euler(3.14+5.5*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-3-1*i)*euler(-0.5,3+1.5*i,0)
Neck.C0=necko*euler(0,0,-1.57+2.57*i)
RootJoint.C0=RootCF*euler(0,0,1.57-2.57*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1.57-0.57*i,0,1.57-2.57*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
aninumb=2
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,0)*cf(0,-0.5,-3-1*i)
MainC0=euler(8.64+1*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-4)*euler(-0.5,4.5,0)
Neck.C0=necko*euler(0,0,1+0.1*(i*aninumb))
RootJoint.C0=RootCF*euler(0,0,-1-0.1*(i*aninumb))
RW.C0=cf(1,0.5,-0.5)*euler(1,0,-1+0.1*(i*aninumb))
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
aninumb=aninumb-0.1
end
coroutine.resume(coroutine.create(function()
UnCircle(0.1)
end))
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57-1.57*i,0,0)*cf(0,-0.5+0.5*i,-4+4*i)
MainC0=euler((0.16+3.14)+(1.84-3.14)*i,0,0)*cf(0,0,0)
--MainC0=euler(9.64-9.64*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-4+1*i)*euler(-0.5+0.5*i,0.07-0.07*i,0)
Neck.C0=necko*euler(0,0,1.1-1.1*i)
RootJoint.C0=RootCF*euler(0,0,-1.1+1.1*i)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1-1*i,0,-0.9+1.4*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
con1:disconnect()
hitbox.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function heavyattackone()
attack=true
Humanoid.WalkSpeed=5
coroutine.resume(coroutine.create(function()
Circle(0.1)
end))
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57*i,0,0)*cf(0,2*i,2*i)
MainC0=euler(2+0.5*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-3+2*i)*euler(0,0,0)
Neck.C0=necko*euler(0.2*i,0,0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5*i)
RW.C0=cf(1.5-0.3*i,0.5,-0.5*i)*euler(-0.2*i,0,0.5-0.7*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4*i,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5*i,0.2*i,-0.2*i)*euler(-0.4*i,0,-0.2*i)
RH.C1=RHC1
LH.C0=LHC0*euler(-0.1*i,0,0)
LH.C1=LHC1
end
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57,0,0)*cf(0,2,2-0.5*i)
MainC0=euler(2.5-0.3*i,0,0)*cf(0,0,0)
MainC02=cf(0,0,-1-1*i)
Neck.C0=necko*euler(0.2-0.1*i,0,0.5-0.7*i)
RootJoint.C0=RootCF*euler(0,0,-0.5+0.7*i)
RW.C0=cf(1.2+0.3*i,0.5,-0.5+0.5*i)*euler(-0.2,0,-0.2+0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5-0.5*i,0.2,-0.2)*euler(-0.4+0.4*i,0,-0.2+1.2*i)
RH.C1=RHC1
LH.C0=LHC0*euler(-0.1,0,0)
LH.C1=LHC1
end
aninumb=2
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,0)*cf(0,2,1.5)
MainC0=euler(2.2,0,0)*cf(0,0,0)
MainC02=cf(0,0,-2)
Neck.C0=necko*euler(0.1,0,-0.2)
RootJoint.C0=RootCF*euler(0,0,0.2)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.2,-0.2)*euler(0,0,1+0.2*(i*aninumb))
RH.C1=RHC1
LH.C0=LHC0*euler(-0.1,0,0)
LH.C1=LHC1
aninumb=aninumb-0.1
end
Humanoid.WalkSpeed=16
attack=false
end
 
function Hover()
attack=true
dur=0
coroutine.resume(coroutine.create(function() 
Circle(0.1)
end))
coroutine.resume(coroutine.create(function(Num) 
for i=0,1,0.1 do
wait()
wld1.C0=euler(0,0,0)*cf(0,2*i,0)
MainC0=euler(2+0.5*i,-1*i,0)*cf(0,0,0)
MainC02=cf(0,0,-3+0.5*i)*euler(0,0,0)
RH.C0=RHC0*euler(-0.2*i,0,0)
LH.C0=LHC0*euler(-0.2*i,0,0)
end
while hovering==true do
wait()
MainC02=cf(0,0,-2.5)*euler(0,Num,0)
Num=Num+0.2
MagicBlock3(BrickColor.new("White"),prt1.CFrame*cf(math.random(-2,2),0,math.random(-2,2)),0,0,0,0.2,0.2,0.2)
end
end),dur)
hoverpos.maxForce=vt(4e+080,4e+080,4e+080)
hoverpos.Name="BP"
hoverpos.Parent=RootPart
hoverpos.P=2000
hoverpos.D=100
hoverpos.position=RootPart.Position
while hovering==true do
wait()
end
hoverpos.Parent=nil
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
wld1.C0=euler(0,0,0)*cf(0,2-2*i,0)
MainC0=euler(2.5-0.5*i,-1+1*i,0)*cf(0,0,0)
MainC02=cf(0,0,-2.5-0.5*i)*euler(0,3.14+3.14*i,0)
RH.C0=RHC0*euler(-0.2+0.2*i,0,0)
LH.C0=LHC0*euler(-0.2+0.2*i,0,0)
end
end))
coroutine.resume(coroutine.create(function() 
UnCircle(0.1)
end))
attack=false
end
 
function SentinelEffect()
if ATorso.Parent~=nil then
local Sentinelef=part(1,workspace,0,1,BrickColor.new("Black"),"Ef",vt(1,1,1))
Sentinelef.CFrame=Torso.CFrame
Sentinelef.Anchored=true
game:GetService("Debris"):AddItem(Sentinelef,2)
--so("http://www.roblox.com/asset/?id=153092315",Sentinelef,0.5,1)
so("http://www.roblox.com/asset/?id=161006033",Sentinelef,0.5,1)
for i=1,2 do
MagicBlock(BrickColor.new("Bright blue"),ATorso.CFrame,1,1,1,2,2,2)
end
coroutine.resume(coroutine.create(function(Tors)
for i=1,6 do
for i=1,2 do
ElecEffect(Tors.CFrame,5,5,5)
end
wait(0.1)
end
end),ATorso)
BlastEffect(BrickColor.new("White"),ATorso.CFrame,2,2,2,1,1,1)
end
end
 
function SentinelTeleport(SentinelPos)
SentinelEffect()
local LastPoint2=ATorso.CFrame
--ATorso.CFrame=SentinelPos 
--Sentinel:MoveTo(SentinelPos)
ATorso.CFrame=CFrame.new(SentinelPos)
local Point2=ATorso.CFrame
effect("White",0.1,1,LastPoint2,Point2)
LastPoint2=Point2
SentinelEffect()
end
 
function HealthSentinel()
SentinelHealth=1000
while AHumanoid.Health>=30 do
wait()
end
AHumanoid.Parent=nil
AHumanoid.MaxHealth=SentinelHealth
AHumanoid.Health=SentinelHealth
AHumanoid.Sit=false
AHumanoid.PlatformStand=false
AHumanoid.Jump=true
wait(0)
AHumanoid.Parent=Sentinel
for a=1,#SentinelWeaponWelds do
SentinelWeaponWelds[a].Parent=aprt1
end
for a=1,#SentinelParts do
SentinelParts[a].Parent=Sentinel
end
for a=1,#SentinelWelds do
SentinelWelds[a].Parent=ATorso
end
ARootJoint.C1=cf(0,-1,0)
ANeck.C0=necko*euler(0.4,0,0)
ARW.C0=cf(1.5,0.5,0)*euler(-0.4,0,0.4)
ARW.C1=cf(0,0.5,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2)
ALW.C1=cf(0,0.5,0)
ALH.C0=LHC0*cf(-0.5,0.5,0)*euler(-0.1,0,0.2)
ALH.C1=LHC1
ARH.C0=RHC0*cf(0.2,0,0)*euler(-0.1,0,-0.6)
return AHumanoid
end
 
function SummonSentinel()
print("Sentinel SUMMONED")
coroutine.resume(coroutine.create(function()
while true do
wait()
HealthSentinel()
end
end))
for a=1,#SentinelWeaponWelds do
SentinelWeaponWelds[a].Parent=aprt1
end
for a=1,#SentinelParts do
SentinelParts[a].Parent=Sentinel
end
Sentinel.Parent=workspace
AHumanoid.Parent=Sentinel
AHumanoid.MaxHealth=SentinelHealth
AHumanoid.Health=SentinelHealth
ATorso.CFrame=Torso.CFrame*cf(0,0,-5)
SentinelEffect()
ARootJoint.Parent=ATorso
ANeck.Parent=ATorso
AHatWld.Parent=AHat
ARW.Parent=ATorso
ALW.Parent=ATorso
ARH.Parent=ATorso
ALH.Parent=ATorso
for a=1,#SentinelWeaponWelds do
SentinelWeaponWelds[a].Parent=aprt1
end
ARootJoint.C1=cf(0,-1,0)
ANeck.C0=necko*euler(0.4,0,0)
ARW.C0=cf(1.5,0.5,0)*euler(-0.4,0,0.4)
ARW.C1=cf(0,0.5,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2)
ALW.C1=cf(0,0.5,0)
ALH.C0=LHC0*cf(-0.5,0.5,0)*euler(-0.1,0,0.2)
ALH.C1=LHC1
ARH.C0=RHC0*cf(0.2,0,0)*euler(-0.1,0,-0.6)
coroutine.resume(coroutine.create(function()
while Sentinel.Parent~=nil do
for i=0,1,0.01 do
wait()
ARootJoint.C1=cf(0,1-0.3*i,0)
end
for i=0,1,0.01 do
wait()
ARootJoint.C1=cf(0,1-0.3+0.3*i,0)
end
end
end))
end
 
function UnsummonSentinel()
SentinelEffect()
BlastEffect(BrickColor.new("White"),ATorso.CFrame,2,2,2,1,1,1)
for i=1,2 do
MagicBlock(BrickColor.new("Bright blue"),ATorso.CFrame,1,1,1,2,2,2)
end
coroutine.resume(coroutine.create(function(Tors)
for i=1,6 do
for i=1,2 do
ElecEffect(Tors.CFrame,5,5,5)
end
wait(0.1)
end
end),ATorso)
Sentinel.Parent=nil
end
 
function SentinelSlash1()
Sentinelattack=true
AHumanoid.WalkSpeed=0
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0,-1*i,0)
ANeck.C0=necko*euler(0.4,0,-1*i)
ARW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(-0.4+2.4*i,0,0.4-0.8*i)
ARW.C1=cf(0,0.5,0)*euler(0,-0.5*i,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2-0.2*i,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
ALH.C0=LHC0*cf(-0.5+0.3*i,0.5-0.2*i,0)*euler(-0.1-0.3*i,0,0.2+0.4*i)
ARH.C0=RHC0*cf(0.2,0.3*i,0)*euler(-0.1-0.3*i,0,-0.6)
end
for _,v in pairs(ALLCHILD()) do
if v.className=="Model" then
if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=Character and v~=Sentinel then
if (v.Torso.Position-aprt1.Position).magnitude<=5 then
attackdebounce=false
coroutine.resume(coroutine.create(function(Hit)
Damagefunc(Hit,10,20,math.random(5,10),"Normal",ARootPart)
end),v.Torso)
end
end
end
end
so("http://www.roblox.com/asset/?id=161006195",ahitbox,1,1) 
acon1=ahitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",ARootPart) end) 
local LastPoint2=aprt22.CFrame*CFrame.new(0,aprt22.Size.Y*1.3,0)
for i=0,1,0.2 do
wait()
ARootJoint.C0=euler(0,-1+1.4*i,0)
ANeck.C0=necko*euler(0.4,0,-1+1.4*i)
ARW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(2-2.9*i,0,-0.4+0.7*i)
ARW.C1=cf(0,0.5,0)*euler(0,-0.5+0.4*i,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
local Point2=aprt22.CFrame*CFrame.new(0,aprt22.Size.Y*1.3,0)
effect("White",0.1,1,LastPoint2,Point2)
LastPoint2=Point2
end
acon1:disconnect()
anumb=2
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0,0.4+0.1*(i*anumb),0)
ANeck.C0=necko*euler(0.4,0,0.4+0.1*(i*anumb))
ARW.C0=cf(1.5,0.5,0)*euler(-0.9-0.1*(i*anumb),0,0.3+0.1*(i*anumb))
ARW.C1=cf(0,0.5,0)*euler(0,-0.1+0.1*(i*anumb),0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
anumb=anumb-0.1
end
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0,0.5-0.5*i,0)
ANeck.C0=necko*euler(0.4,0,0.5-0.5*i)
ARW.C0=cf(1.5,0.5,0)*euler(-1+0.6*i,0,0.4)
ARW.C1=cf(0,0.5,0)*euler(0,0,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.4+0.2*i,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
ALH.C0=LHC0*cf(-0.2-0.3*i,0.3+0.2*i,0)*euler(-0.4+0.3*i,0,0.6-0.4*i)
ARH.C0=RHC0*cf(0.2,0.3-0.3*i,0)*euler(-0.4+0.3*i,0,-0.6)
end
AHumanoid.WalkSpeed=16
Sentinelattack=false
end
 
function SentinelSlash2()
Sentinelattack=true
AHumanoid.WalkSpeed=0.1
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0,-1*i,0)
ANeck.C0=necko*euler(0.4,0,-1*i)
ARW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(-0.4+1.97*i,0,0.4-0.8*i)
ARW.C1=cf(0,0.5,0)*euler(0,-1.57*i,0)
--ALW.C0=cf(-1.5,0.5,0)*euler(-0.2-0.2*i,0,-0.2)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2+1.77*i,0,-0.2-1.2*i)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
ALH.C0=LHC0*cf(-0.5+0.3*i,0.5-0.2*i,0)*euler(-0.1-0.3*i,0,0.2+0.4*i)
ARH.C0=RHC0*cf(0.2,0.3*i,0)*euler(-0.1-0.3*i,0,-0.6)
end
for _,v in pairs(ALLCHILD()) do
if v.className=="Model" then
if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=Character and v~=Sentinel then
if (v.Torso.Position-aprt1.Position).magnitude<=5 then
attackdebounce=false
coroutine.resume(coroutine.create(function(Hit)
Damagefunc(Hit,10,20,math.random(5,10),"Normal",ARootPart)
end),v.Torso)
end
end
end
end
so("http://www.roblox.com/asset/?id=161006212",ahitbox,1,1) 
acon1=ahitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",ARootPart) end) 
local LastPoint2=aprt22.CFrame*CFrame.new(0,aprt22.Size.Y*1.3,0)
for i=0,1,0.2 do
wait()
ARootJoint.C0=euler(0,-1+2*i,0)
ANeck.C0=necko*euler(0.4,0,-1+2*i)
ARW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1.57,0,-0.4+1.97*i)
ARW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
ALW.C0=cf(-1.5,0.5,0)*euler(1.57-1.77*i,0,-1.4+1.2*i)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
local Point2=aprt22.CFrame*CFrame.new(0,aprt22.Size.Y*1.3,0)
effect("White",0.1,1,LastPoint2,Point2)
LastPoint2=Point2
end
acon1:disconnect()
anumb=2
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0,1+0.1*(i*anumb),0)
ANeck.C0=necko*euler(0.4,0,1+0.1*(i*anumb))
ARW.C0=cf(1.5,0.5,0)*euler(1.57,0,1.57+0.1*(i*anumb))
ARW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
anumb=anumb-0.1
end
AHumanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0,1.1-1.1*i,0)
ANeck.C0=necko*euler(0.4,0,1.1-1.1*i)
ARW.C0=cf(1.5,0.5,0)*euler(1.57-1.97*i,0,1.67-1.27*i)
ARW.C1=cf(0,0.5,0)*euler(0,-1.57+1.57*i,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
ALH.C0=LHC0*cf(-0.2-0.3*i,0.3+0.2*i,0)*euler(-0.4+0.3*i,0,0.6-0.4*i)
ARH.C0=RHC0*cf(0.2,0.3-0.3*i,0)*euler(-0.4+0.3*i,0,-0.6)
end
Sentinelattack=false
end
 
function SentinelSlash3()
Sentinelattack=true
AHumanoid.WalkSpeed=0
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(-0.2*i,0.2*i,0)
ANeck.C0=necko*euler(0.4-0.4*i,0,0.2*i)
ARW.C0=cf(1.5,0.5,0)*euler(-0.4+2.4*i,0,0.4-0.2*i)
ARW.C1=cf(0,0.5,0)*euler(0,0.2*i,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2-0.2*i,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
ALH.C0=LHC0*cf(-0.5+0.3*i,0.5-0.2*i,0)*euler(-0.1-0.3*i,0,0.2+0.4*i)
ARH.C0=RHC0*cf(0.2,0.3*i,0)*euler(-0.1-0.3*i,0,-0.6)
end
--[[local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - aprt1.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
attackdebounce=false
coroutine.resume(coroutine.create(function(Hit)
Damagefunc(Hit,10,20,math.random(20,30),"Normal",ARootPart)
end),head)
end
end
end
end]]
for _,v in pairs(ALLCHILD()) do
if v.className=="Model" then
if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=Character and v~=Sentinel then
if (v.Torso.Position-aprt1.Position).magnitude<=5 then
attackdebounce=false
coroutine.resume(coroutine.create(function(Hit)
Damagefunc(Hit,10,20,math.random(20,30),"Normal",ARootPart)
end),v.Torso)
end
end
end
end
so("http://www.roblox.com/asset/?id=161006212",ahitbox,1,1.2) 
acon1=ahitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",ARootPart) end) 
local LastPoint2=aprt22.CFrame*CFrame.new(0,aprt22.Size.Y*1.3,0)
for i=0,1,0.2 do
wait()
ARootJoint.C0=euler(-0.2+0.4*i,0.2-0.4*i,0)
ANeck.C0=necko*euler(0.4*i,0,0.2-0.4*i)
ARW.C0=cf(1.5-1*i,0.5,-0.5*i)*euler(2-2*i,0,0.2-1*i)
ARW.C1=cf(0,0.5,0)*euler(0,0.2,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.4-0.2*i,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
local Point2=aprt22.CFrame*CFrame.new(0,aprt22.Size.Y*1.3,0)
effect("White",0.1,1,LastPoint2,Point2)
LastPoint2=Point2
if i>0.7 and i<0.9 then
so("http://www.roblox.com/asset/?id=161006069",ahitbox,1,1) 
WaveEffect(BrickColor.new("White"),aprt16.CFrame*cf(0,2,0),0.5,0.5,0.5,0.2,0.4,0.2)
coroutine.resume(coroutine.create(function()
--POS=ATorso.CFrame*cf(0,1,-10)
POS=aprt16.CFrame*cf(0,2,0)
local LastPoint2=aprt16.CFrame
local Point2=POS
effect("White",0.1,1,LastPoint2,Point2)
LastPoint2=Point2
MagicBlock(BrickColor.new("White"),POS,1,1,1,0.5,0.5,0.5)
numb=2
numb2=2
for i=1,3 do
wait(0.2)
POS2=POS*cf(0,numb,0)
local Point2=POS2
effect("White",0.1,1,LastPoint2,Point2)
LastPoint2=Point2
local Sentinelef=part(1,workspace,0,1,BrickColor.new("Black"),"Ef",vt(1,1,1))
Sentinelef.CFrame=POS2
Sentinelef.Anchored=true
game:GetService("Debris"):AddItem(Sentinelef,2)
MagicBlock(BrickColor.new("White"),POS2,1,1,1,numb2/2,numb2/2,numb2/2)
MagicBlock(BrickColor.new("White"),POS2,1,1,1,numb2,numb2,numb2)
--[[so("http://www.roblox.com/asset/?id=2101148",Sentinelef,1,1.1) 
so("http://www.roblox.com/asset/?id=153092334",Sentinelef,0.7,1) ]]
so("http://www.roblox.com/asset/?id=161006093",Sentinelef,1,1)
for i=1,3 do
Lightning(Sentinelef.Position,Sentinelef.Position+vt(math.random(-numb2*2,numb2*2),math.random(-numb2*2,numb2*2),math.random(-numb2*2,numb2*2)),numb2,1,"White",0.3,0.1,0.2)
end
for _,v in pairs(ALLCHILD()) do
if v.className=="Model" then
if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=Character and v~=Sentinel then
if (v.Torso.Position-Sentinelef.Position).magnitude<=numb2*3 then
attackdebounce=false
coroutine.resume(coroutine.create(function(Hit)
Damagefunc(Hit,10,20,math.random(10,30),"Normal",ARootPart)
end),v.Torso)
end
end
end
end
numb=numb+5
numb2=numb2+1
end
end))
end
end
acon1:disconnect()
anumb=2
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0.2+0.1*(i*anumb),-0.2-0.1*(i*anumb),0)
ANeck.C0=necko*euler(0.4,0,-0.2)
ARW.C0=cf(0.5,0.5,-0.5)*euler(-0.1*(i*anumb),0,-0.8-0.1*(i*anumb))
ARW.C1=cf(0,0.5,0)*euler(0,0.2,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.6,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
anumb=anumb-0.1
end
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0.3-0.4*i,-0.3+0.3*i,0)
ANeck.C0=necko*euler(0.4-0.6*i,0,-0.2+0.1*i)
ARW.C0=cf(0.5+1*i,0.5,-0.5+0.5*i)*euler(-0.1+2.6*i,0,-0.9+1*i)
ARW.C1=cf(0,0.5,0)*euler(0,0.2,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.6-0.2*i,0,-0.2-0.2*i)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
end
so("http://roblox.com/asset/?id=161006221",ahitbox,1,1) 
--12.56
for i=0,1,0.2 do
wait()
awld1.C0=euler(1.57,7.56*i,0)*cf(0,1,0)
ARootJoint.C0=euler(-0.1,0,0)
ANeck.C0=necko*euler(-0.2-0.05*i,0,-0.1-0.15*i)
ARW.C0=cf(1.5,0.5,0)*euler(2.5+0.2*i,0,0.1-0.05*i)
ARW.C1=cf(0,0.5,0)*euler(0,0.2,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.8,0,-0.4+0.2*i)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
end
for i=0,1,0.2 do
wait()
awld1.C0=euler(1.57,7.56+4*i,0)*cf(0,1,0)
ARootJoint.C0=euler(-0.1,0,0)
ANeck.C0=necko*euler(-0.25,0,-0.25-0.05*i)
ARW.C0=cf(1.5,0.5,0)*euler(2.7+0.1*i,0,0.05-0.05*i)
ARW.C1=cf(0,0.5,0)*euler(0,0.2-0.2*i,0)
end
so("http://www.roblox.com/asset/?id=161006195",ahitbox,1,1) 
for i=0,1,0.2 do
wait()
awld1.C0=euler(1.57,0,0)*cf(0,1,0)
ARootJoint.C0=euler(-0.1+0.2*i,0,0)
ANeck.C0=necko*euler(-0.25+0.45*i,0,-0.3+0.1*i)
ARW.C0=cf(1.5,0.5,0)*euler(2.8-3*i,0,0.2*i)
ARW.C1=cf(0,0.5,0)*euler(0,0,0)
end
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0.1-0.1*i,0,0)
ANeck.C0=necko*euler(0.25+0.25*i,0,-0.2+0.2*i)
ARW.C0=cf(1.5,0.5,0)*euler(-0.2-0.2*i,0,0.2+0.2*i)
ARW.C1=cf(0,0.5,0)*euler(0,0,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.8+0.6*i,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
ALH.C0=LHC0*cf(-0.2-0.3*i,0.3+0.2*i,0)*euler(-0.4+0.3*i,0,0.6-0.4*i)
ARH.C0=RHC0*cf(0.2,0.3-0.3*i,0)*euler(-0.4+0.3*i,0,-0.6)
end
--[[for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0.3-0.3*i,-0.3+0.3*i,0)
ANeck.C0=necko*euler(0.4,0,-0.2+0.2*i)
ARW.C0=cf(0.5+1*i,0.5,-0.5+0.5*i)*euler(-0.1-0.3*i,0,-0.9+1.3*i)
ARW.C1=cf(0,0.5,0)*euler(0,0.2-0.2*i,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.6+0.4*i,0,-0.2)
ALW.C1=cf(0,0.5,0)*euler(0,0,0)
ALH.C0=LHC0*cf(-0.2-0.3*i,0.3+0.2*i,0)*euler(-0.4+0.3*i,0,0.6-0.4*i)
ARH.C0=RHC0*cf(0.2,0.3-0.3*i,0)*euler(-0.4+0.3*i,0,-0.6)
end]]
AHumanoid.WalkSpeed=16
Sentinelattack=false
end
 
function SentinelSlash4()
Sentinelattack=true
AHumanoid.WalkSpeed=0
for i=0,1,0.1 do
wait()
awld1.C0=euler(1.57+1.17*i,0,0)*cf(0,1-0.5*i,-0.2*i)
ARootJoint.C0=euler(0,-0.5*i,0)
ANeck.C0=necko*euler(0.4,0,-0.5*i)
ARW.C0=cf(1.5,0.5,0)*euler(-0.4+1.57*i,0,0.4-0.4*i)
ARW.C1=cf(0,0.5,0)*euler(0,0,-0.5*i)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2)
ALW.C1=cf(0,0.5,0)
ALH.C0=LHC0*cf(-0.5+0.3*i,0.5-0.2*i,0)*euler(-0.1-0.3*i,0,0.2+0.4*i)
ARH.C0=RHC0*cf(0.2,0.3*i,0)*euler(-0.1-0.3*i,0,-0.6)
end
so("http://www.roblox.com/asset/?id=161006069",ahitbox,1,1) 
WaveEffect(BrickColor.new("White"),aprt16.CFrame*cf(0,2,0),0.5,0.5,0.5,0.2,0.4,0.2)
coroutine.resume(coroutine.create(function()
--POS=ATorso.CFrame*cf(0,1,-10)
POS=aprt16.CFrame*cf(0,2,0)
local LastPoint2=aprt16.CFrame
local Point2=POS
effect("White",0.1,1,LastPoint2,Point2)
LastPoint2=Point2
MagicBlock(BrickColor.new("White"),POS,1,1,1,0.5,0.5,0.5)
numb=2
numb2=2
for i=1,10 do
wait(0)
POS2=POS*cf(0,numb,0)
local Point2=POS2
effect("White",0.1,1,LastPoint2,Point2)
LastPoint2=Point2
local Sentinelef=part(1,workspace,0,1,BrickColor.new("Black"),"Ef",vt(1,1,1))
Sentinelef.CFrame=POS2
Sentinelef.Anchored=true
game:GetService("Debris"):AddItem(Sentinelef,2)
MagicBlock(BrickColor.new("White"),POS2,1,1,1,numb2/2,numb2/2,numb2/2)
MagicBlock(BrickColor.new("White"),POS2,1,1,1,numb2,numb2,numb2)
so("http://www.roblox.com/asset/?id=161006093",Sentinelef,1,1)
for i=1,numb2 do
Lightning(Sentinelef.Position,Sentinelef.Position+vt(math.random(-numb2*2,numb2*2),math.random(-numb2*2,numb2*2),math.random(-numb2*2,numb2*2)),numb2,1,"White",0.3,0.1,0.2)
end
for _,v in pairs(ALLCHILD()) do
if v.className=="Model" then
if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=Character and v~=Sentinel then
if (v.Torso.Position-Sentinelef.Position).magnitude<=numb2*3 then
attackdebounce=false
coroutine.resume(coroutine.create(function(Hit)
Damagefunc(Hit,10,20,math.random(10,30),"Normal",ARootPart)
end),v.Torso)
end
end
end
end
numb=numb+5
numb2=numb2+0.1
end
end))
--[[so("http://www.roblox.com/asset/?id=2697431",ahitbox,1,0.3) 
WaveEffect(BrickColor.new("White"),aprt16.CFrame*cf(0,2,0),0.5,0.5,0.5,0.2,0.4,0.2)
for i=1,3 do
eul=euler((math.random(-1,0)+math.random())/3,(math.random(-1,0)+math.random())/3,(math.random(-1,0)+math.random())/3)
MagicBlock2(BrickColor.new("White"),aprt16.CFrame*cf(0,2,0)*eul,0.5,0.5,0.5,0.2,0.2,0.2,0.3)
local shot=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
shot.Anchored=true
shot.CFrame=aprt16.CFrame*cf(0,2,0)*eul
msh=mesh("BlockMesh",shot,"","",vt(0,0,0),vt(1,1,1))
coroutine.resume(coroutine.create(function(Part,Mesh,Dist)
local LastPoint2=Part.CFrame
for i=1,20 do
wait()
Part.CFrame=Part.CFrame*cf(0,Dist,0)
local Point2=Part.CFrame
effect("White",0.1,0.5,LastPoint2,Point2)
LastPoint2=Point2
if i==4 or i==8 or i==12 or i==16 or i==20 then
ThePos=Part.CFrame*cf(math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-1,0)+math.random())
MagicBlock(BrickColor.new("White"),ThePos,1,1,1,1,1,1)
so("http://www.roblox.com/asset/?id=2101148",Part,0.7,1.5) 
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - Part.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
attackdebounce=false
coroutine.resume(coroutine.create(function(Hit)
Damagefunc(Hit,5,10,math.random(20,40),"Normal",ARootPart)
end),head)
end
end
end
end
end
end
local efprt=part(3,workspace,0,1,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
efprt.Anchored=true
efprt.CFrame=Part.CFrame
game:GetService("Debris"):AddItem(efprt,2)
MagicBlock(BrickColor.new("White"),efprt.CFrame,1,1,1,2,2,2)
MagicBlock(BrickColor.new("Bright blue"),efprt.CFrame,1,1,1,1.5,1.5,1.5)
for i=1,3 do
Lightning(efprt.Position,efprt.Position+vt(math.random(-10,10),math.random(-10,10),math.random(-10,10)),5,1,"White",0.3,0.1,0.2)
end
so("http://www.roblox.com/asset/?id=2101148",efprt,1,1) 
so("http://www.roblox.com/asset/?id=153092334",efprt,0.7,1) 
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - Part.Position
local mag = targ.magnitude
if mag <= 7 and c[i].Name ~= Player.Name then 
attackdebounce=false
coroutine.resume(coroutine.create(function(Hit)
Damagefunc(Hit,10,30,math.random(50,100),"Knockdown",ARootPart)
end),head)
end
end
end
end
Part.Parent=nil
end),shot,msh,1+math.random()/2)
end]]
for i=0,1,0.2 do
wait()
awld1.C0=euler(2.74-0.5*i,0,0)*cf(0,0.5+0.5*i,-0.2+0.2*i)
ARootJoint.C0=euler(0,-0.5+1*i,0)
ANeck.C0=necko*euler(0.4,0,-0.5+1*i)
ARW.C0=cf(1.5,0.5,0)*euler(1.17+0.83*i,0,0)
ARW.C1=cf(0,0.5,0)*euler(0,0,-0.5+0.5*i)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2-0.4*i)
ALW.C1=cf(0,0.5,0)
end
anumb=2
for i=0,1,0.1 do
wait()
awld1.C0=euler(2.74-0.5-0.1*(i*anumb),0,0)*cf(0,1,0)
ARootJoint.C0=euler(0,0.5+0.1*(i*anumb),0)
ANeck.C0=necko*euler(0.4,0,0.5)
ARW.C0=cf(1.5,0.5,0)*euler(2+0.1*(i*anumb),0,0)
ARW.C1=cf(0,0.5,0)*euler(0,0,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.6-0.1*(i*anumb))
ALW.C1=cf(0,0.5,0)
anumb=anumb-0.1
end
--2.14-0.27=1.57
for i=0,1,0.1 do
wait()
awld1.C0=euler(2.14-0.3*i,0,0)*cf(0,1,0)
ARootJoint.C0=euler(0,0.6-0.6*i,0)
ANeck.C0=necko*euler(0.4+0.1*i,0,0.5-0.5*i)
ARW.C0=cf(1.5,0.5,0)*euler(2.1-0.53*i,0,0)
ARW.C1=cf(0,0.5,0)*euler(0,-1.57*i,0)
ALW.C0=cf(-1.5,0.5,0)*euler(-0.2+1.77*i,0,-0.7+0.6*i)
ALW.C1=cf(0,0.5,0)
end
for i=0,1,0.2 do
wait()
awld1.C0=euler(1.84-0.27*i,0,0)*cf(0,1,0)
ARootJoint.C0=euler(0.1*i,0.1*i,0)
ANeck.C0=necko*euler(0.5,0,-0.1*i)
ARW.C0=cf(1.5,0.5,0)*euler(1.57,0,1*i)
ARW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
ALW.C0=cf(-1.5,0.5,0)*euler(1.57,0,-0.1-1.3*i)
ALW.C1=cf(0,0.5,0)
end
so("http://www.roblox.com/asset/?id=2697295",ahitbox,1,0.5) 
so("http://www.roblox.com/asset/?id=161006212",ahitbox,1,0.7) 
anumb=2
for i=0,1,0.1 do
wait()
awld1.C0=euler(1.57,0,0)*cf(0,1,0)
ARootJoint.C0=euler(0.1+0.05*(i*anumb),0.1+0.05*(i*anumb),0)
ANeck.C0=necko*euler(0.5,0,-0.1-0.05*(i*anumb))
ARW.C0=cf(1.5,0.5,0)*euler(1.57,0,1+0.5*(i*anumb))
ARW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
ALW.C0=cf(-1.5,0.5,0)*euler(1.57,0,-1.4)
ALW.C1=cf(0,0.5,0)
anumb=anumb-0.1
end
for i=0,1,0.1 do
wait()
ARootJoint.C0=euler(0.15-0.15*i,0.15-0.15*i,0)
ANeck.C0=necko*euler(0.5-0.1*i,0,-0.15+0.15*i)
ARW.C0=cf(1.5,0.5,0)*euler(1.57-1.97*i,0,1.5-1.1*i)
ARW.C1=cf(0,0.5,0)*euler(0,-1.57+1.57*i,0)
ALW.C0=cf(-1.5,0.5,0)*euler(1.57-1.77*i,0,-1.4+1.2*i)
ALW.C1=cf(0,0.5,0)
ALH.C0=LHC0*cf(-0.2-0.3*i,0.3+0.2*i,0)*euler(-0.4+0.3*i,0,0.6-0.4*i)
ARH.C0=RHC0*cf(0.2,0.3-0.3*i,0)*euler(-0.4+0.3*i,0,-0.6)
end
AHumanoid.WalkSpeed=16
Sentinelattack=false
end
 
function ALLCHILD()
local all={}
for _,v in pairs(workspace:children()) do
table.insert(all,v)
end
return all
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
--[[local LastPoint=prt4.CFrame*CFrame.new(0,prt4.Size.Y*2.5,0)
local Point=prt4.CFrame*CFrame.new(0,prt4.Size.Y*2.5,0)]]
function effect(Color,Ref,Size,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(0.4,1,0.4)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,1,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(Size,mg,Size)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(Size-Size*i,1,Size-Size*i)
end
wait()
effectsg.Parent = nil
end
end))
end
 
function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
prt.Anchored=true
xval=math.random()
yval=math.random()
zval=math.random()
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=Frame*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=1,30 do
wait()
xvaal=xvaal-0.1
yvaal=yvaal-0.1
zvaal=zvaal-0.1
Mesh.Scale=vt(xvaal,yvaal,zvaal)
Part.Transparency=Part.Transparency+0.001
end
Part.Parent=nil
end),prt,msh,cff,xval,yval,zval)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,decrease)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
num=math.random(5,20)
coroutine.resume(coroutine.create(function(Part,Mesh,CF2,Num) 
for i=0,1.05,0.05 do
wait()
Part.CFrame=CF2*cf(0,i*Num,0)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
Num=Num-decrease
end
Part.Parent=nil
end),prt,msh,CF,num)
end
 
function MagicBlock3(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
TehCF=cframe
Part.CFrame=TehCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
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
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0,-num)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,2)+math.random())/5)
end
 
function MagicFire(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=cf(Part.Position+vt(0,0.5,0))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.1,0.1)
end
Part.Parent=nil
end),prt,msh)
end
 
function BlastEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=24388358",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
prt.Anchored=true
xval=math.random()
yval=math.random()
zval=math.random()
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=Frame*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=1,8 do
wait()
xvaal=xvaal-0.1
yvaal=yvaal-0.1
zvaal=zvaal-0.1
Mesh.Scale=vt(xvaal,yvaal,zvaal)
Part.Transparency=Part.Transparency+0.09
end
Part.Parent=nil
end),prt,msh,cff,xval,yval,zval)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1323306",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,y3,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect2(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function Lightning(p0,p1,tym,ofs,col,th,tra,last)
--[[p0=pos1
p1=pos2
tym=times
ofs=offset
col=color
th=size
tra=transparency
last=lastingtime]]
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
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,last)
end
end
 
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
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property)
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
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent.Name~=Sentinel.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
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
                print(block.Value)
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
                BodPos=Instance.new("BodyPosition")
                BodPos.P=50000
                BodPos.D=1000
                BodPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                BodPos.position=hit.Parent.Torso.Position
                BodPos.Parent=hit.Parent.Torso
                BodGy = it("BodyGyro") 
                BodGy.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
                BodGy.P = 20e+003 
                BodGy.Parent=hit.Parent.Torso
                BodGy.cframe = hit.Parent.Torso.CFrame
                hit.Parent.Torso.Anchored=true
                coroutine.resume(coroutine.create(function(Part) 
                wait(1.5)
                Part.Anchored=false
                end),hit.Parent.Torso)
                game:GetService("Debris"):AddItem(BodPos,3)
                game:GetService("Debris"):AddItem(BodGy,3)
                end
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
 
combo=0
num=0
function ob1d(mouse) 
if attack==true then return end
hold=true
if combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=3
attackthree()
elseif combo==3 then
combo=4
attackfour()
elseif combo==5 then
combo=6
dashattacktwo()
elseif combo==6 then
combo=7
dashattackthree()
else
combo=0
end
if holdq==true then
combo=8
heavyattackone()
else
local fentorvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
if fentorvel>10 then 
if combo==0 then 
combo=5
dashattackone()
end
else
if combo==0 then
combo=1
attackone()
end
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
UnCircle(1)
wld1.C0=euler(0,0,0)
MainC0=euler(2,0,0)*cf(0,0,0)
MainC02=cf(0,0,-3)
Neck.C0=necko
RootJoint.C0=RootCF
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0
RH.C1=RHC1
LH.C0=LHC0
LH.C1=LHC1
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
holdq=false
jumpcount=0
function key(key) 
if key:byte()==32 then 
if attack==false then
jumpcount=jumpcount+1
end
if hovering==true then
hovering=false
return end
coroutine.resume(coroutine.create(function()
wait(1)
jumpcount=0
end))
if jumpcount==2 then
hovering=true
Hover()
end
end
if key=="f" and hovering==true then
if fly==false then
fly=true
hoverpos.Parent=nil
coroutine.resume(coroutine.create(function()
for i=0,1,0.2 do
wld1.C0=euler(1.57*i,0,0)*cf(0,2-2*i,-1*i)
wait()
end
end))
coroutine.resume(coroutine.create(function()
while fly==true do
bv.Parent=RootPart
bv.velocity=MMouse.Hit.lookVector*35 
Bg.Parent=RootPart
Bg.cframe=cf(RootPart.Position, MMouse.Hit.p)*euler(-0.3,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.2)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
wait()
end
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end))
else
coroutine.resume(coroutine.create(function()
for i=0,1,0.2 do
wld1.C0=euler(1.57-1.57*i,0,0)*cf(0,2*i,-1+1*i)
wait()
end
end))
fly=false
hoverpos.position=RootPart.Position
hoverpos.Parent=RootPart
Bg.Parent=nil
bv.Parent=nil
end
end
if attack==true then return end
if key=="q" then
holdq=true
end
if key=="g" then
if Sentinelsummoned==false then
Sentinelsummoned=true
SummonSentinel()
else
Sentinelsummoned=false
UnsummonSentinel()
end
end
if key=="z" then
if MMouse.Target~=nil and MMouse.Target.Parent:findFirstChild("Humanoid")~=nil and MMouse.Target.Parent:findFirstChild("Torso")~=nil then
TargetTorso=MMouse.Target.Parent.Torso
Sentineltargetting=true
end
end
if key=="x" then
TargetTorso=Torso
Sentineltargetting=false
end
if Sentinelattack==true then return end
if key=="c" then
--SentinelTeleport(TargetTorso.CFrame)
SentinelTeleport(TargetTorso.Position)
end
if key=="v" then
SentinelSlash4()
end
if key=="b" then
SentinelSlash3()
end
end 
 
function key2(key) 
if key=="q" then
holdq=false
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
coroutine.resume(coroutine.create(function(Hum)
wait(0.1)
Hum.Died:connect(function() ATorso.Parent=nil; UnsummonSentinel() end)
end),Humanoid)
print("Fen and Sentinel loaded.")
 
local Abg=Instance.new("BodyGyro")
Abg.Parent=nil
Abg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
Abg.P = 500000
Abg.Name = "BodyGyro"
coroutine.resume(coroutine.create(function()
while true do
wait()
local dist=TargetTorso.Position-ARootPart.Position
local magnidist=dist.magnitude
if Sentineltargetting==false then
Abg.Parent=nil
if magnidist >= 20 then 
if math.random(1,3)==1 and Sentinel.Parent~=nil then
--SentinelTeleport(TargetTorso.CFrame)
SentinelTeleport(TargetTorso.Position)
end
--AHumanoid:MoveTo(TargetTorso.Position,TargetTorso)
AHumanoid.WalkToPoint=TargetTorso.Position
wait(1)
end
else
Abg.Parent=ARootPart
local pos4 = Vector3.new(TargetTorso.Position.x,ARootPart.Position.Y,TargetTorso.Position.z)
Abg.cframe=CFrame.new(ARootPart.Position,pos4)
if magnidist <= 8 then
slash=math.random(1,3)
if slash==1 then
SentinelSlash1()
elseif slash==2 then
SentinelSlash2()
elseif slash==3 then
SentinelSlash3()
end
elseif magnidist <= 15 then
slash=math.random(1,4)
if slash==1 then
if math.random(1,2)==1 then
SentinelSlash1()
else
SentinelSlash2()
end
else
if math.random(1,2)==1 then
SentinelSlash3()
else
SentinelSlash4()
end
end
end
if magnidist >= 20 then 
if math.random(1,2)==1 and Sentinel.Parent~=nil then
--SentinelTeleport(TargetTorso.CFrame)
SentinelTeleport(TargetTorso.Position)
slash=math.random(1,4)
if slash==1 then
if math.random(1,2)==1 then
SentinelSlash1()
else
SentinelSlash2()
end
else
if math.random(1,2)==1 then
SentinelSlash3()
else
SentinelSlash4()
end
end
end
--AHumanoid:MoveTo(TargetTorso.Position,TargetTorso)
end
if magnidist >= 40 then
SentinelSlash4()
end
AHumanoid.WalkToPoint=TargetTorso.Position
wait(0.1)
end
end
end))
coroutine.resume(coroutine.create(function()
SentinelAnim="Idle"
while true do
wait()
local torvel=(ARootPart.Velocity*Vector3.new(1,0,1)).magnitude 
if torvel < 1 then 
coroutine.resume(coroutine.create(function()
if SentinelAnim=="Walk" then
for i=0,1,0.1 do
wait()
if Sentinelattack==false then
ARootJoint.C0=euler(0.2-0.2*i,0,0)
end
end
end
end))
SentinelAnim="Idle"
elseif torvel < 19 then 
coroutine.resume(coroutine.create(function()
if SentinelAnim=="Idle" then
for i=0,1,0.1 do
wait()
if Sentinelattack==false then
ARootJoint.C0=euler(0.2*i,0,0)
end
end
end
end))
SentinelAnim="Walk"
end
end
end))
--[[ 
Copyrighted (C) Fenrier 2014
]] 
 