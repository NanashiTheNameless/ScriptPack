--[[                                                                                                                                                                                                                                                                                
Fenrier's Armor
]] 
script.Name="FenArmor"
--[[b=script:Clone()
b.Parent=game:GetService("Lighting")
c=game:GetService("Lighting"):children()
for i=1,#c do
print(c[i])
end]]
Player = game:GetService("Players").Cobalt1164
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Torso.Transparency=1
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftArm.Transparency=1
LeftLeg = Character["Left Leg"] 
LeftLeg.Transparency=1
RightArm = Character["Right Arm"] 
RightArm.Transparency=1
RightLeg = Character["Right Leg"] 
RightLeg.Transparency=1
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
Mode="Normal"
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
if Character:findFirstChild("Fen's Armor",true) ~= nil then 
Character:findFirstChild("Fen's Armor",true).Parent = nil 
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
 
local c=Character:children()
for i=1,#c do
if c[i].className=="Hat" then
c[i].Parent=nil
end
end
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Fen's Armor" 
 
--[[HOOD]]--
local Hprt1=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Hood",vt(1,1,1))
Hmsh1=mesh("SpecialMesh",Hprt1,"FileMesh","http://www.roblox.com/asset/?id=101203373",vt(0,0,0),vt(1,1,1))
--Hmsh1.TextureId="http://www.roblox.com/asset/?id=101203430"
local Hwld1=weld(Hprt1,Hprt1,Head,euler(0,0,0)*cf(0,-0.2,0))
 
--[[TORSO]]--
numb=0.525
for i=1,2 do
local Tprt1=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part1",vt(1,1,1))
Tmsh1=mesh("BlockMesh",Tprt1,"","",vt(0,0,0),vt(2.01,2.01,1.01))
local Twld1=weld(Tprt1,Tprt1,Torso,euler(0,0,0)*cf(0,0,0))
local Tprt2=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part2",vt(1,1,1))
Tmsh2=mesh("BlockMesh",Tprt2,"","",vt(0,0,0),vt(0.95,2,0.1))
local Twld2=weld(Tprt2,Tprt2,Torso,euler(0,0,0)*cf(numb,0,0.5))
numb2=-0.4
for i=1,9 do
local Tprt3=part(3,modelzorz,0,0,BrickColor.new("Navy blue"),"Torso Part3",vt(1,1,1))
Tmsh3=mesh("BlockMesh",Tprt3,"","",vt(0,0,0),vt(0.05,2,0.11))
local Twld3=weld(Tprt3,Tprt3,Tprt2,euler(0,0,0)*cf(numb2,0,0))
numb2=numb2+0.1
end
numb=numb-1.05
end
local Tprt4=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Torso Part4",vt(1,1,1))
Tmsh4=mesh("BlockMesh",Tprt4,"","",vt(0,0,0),vt(0.1,2,0.1))
local Twld4=weld(Tprt4,Tprt4,Torso,euler(0,0,0)*cf(0,0,0.5))
local Tprt5=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Torso Part5",vt(1,1,1))
Tmsh5=mesh("BlockMesh",Tprt5,"","",vt(0,0,0),vt(0.61,2.02,0.1))
local Twld5=weld(Tprt5,Tprt5,Torso,euler(0,0,0)*cf(0.7,0,0.55))
local Tprt6=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Torso Part6",vt(1,1,1))
Tmsh6=mesh("BlockMesh",Tprt6,"","",vt(0,0,0),vt(1.19,2.02,0.1))
local Twld6=weld(Tprt6,Tprt6,Torso,euler(0,1.57,0)*cf(1,0,0))
local Tprt7=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Torso Part7",vt(1,1,1))
Tmsh7=mesh("BlockMesh",Tprt7,"","",vt(0,0,0),vt(0.61,2.02,0.1))
local Twld7=weld(Tprt7,Tprt7,Torso,euler(0,0,0)*cf(-0.7,0,0.55))
local Tprt8=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Torso Part8",vt(1,1,1))
Tmsh8=mesh("BlockMesh",Tprt8,"","",vt(0,0,0),vt(1.19,2.02,0.1))
local Twld8=weld(Tprt8,Tprt8,Torso,euler(0,1.57,0)*cf(-1,0,0))
local Tprt9=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Torso Part9",vt(1,1,1))
Tmsh9=mesh("BlockMesh",Tprt9,"","",vt(0,0,0),vt(2,2.02,0.1))
local Twld9=weld(Tprt9,Tprt9,Torso,euler(0,0,0)*cf(0,0,-0.55))
local Tprt10=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part10",vt(1,1,1))
Tmsh10=mesh("BlockMesh",Tprt10,"","",vt(0,0,0),vt(0.2,0.8,0.1))
local Twld10=weld(Tprt10,Tprt10,Tprt7,euler(0,0,0)*cf(0.2,0.2,0.01))
numb=0.3
for i=1,4 do
local Tprt11=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part11",vt(1,1,1))
Tmsh11=mesh("CylinderMesh",Tprt11,"","",vt(0,0,0),vt(0.15,0.1,0.15))
local Twld11=weld(Tprt11,Tprt11,Tprt10,euler(1.57,0,0)*cf(0,numb,0.05))
numb=numb-0.2
end
local Tprt12=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part12",vt(1,1,1))
Tmsh12=mesh("BlockMesh",Tprt12,"","",vt(0,0,0),vt(0.2,0.8,0.1))
local Twld12=weld(Tprt12,Tprt12,Tprt5,euler(0,0,0)*cf(-0.2,0.2,0.01))
numb=0.3
for i=1,4 do
local Tprt13=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part13",vt(1,1,1))
Tmsh13=mesh("BlockMesh",Tprt13,"","",vt(0,0,0),vt(0.15,0.01,0.05))
local Twld13=weld(Tprt13,Tprt13,Tprt12,euler(1.57,0,0)*cf(0,numb,0.05))
numb=numb-0.2
end
local Tprt14=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part14",vt(1,1,1))
Tmsh14=mesh("BlockMesh",Tprt14,"","",vt(0,0,0),vt(0.2,0.4,0.1))
local Twld14=weld(Tprt14,Tprt14,Tprt7,euler(0,0,0)*cf(0.2,-0.8,0.01))
local Tprt15=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part15",vt(1,1,1))
Tmsh15=mesh("BlockMesh",Tprt15,"","",vt(0,0,0),vt(0.2,0.4,0.1))
local Twld15=weld(Tprt15,Tprt15,Tprt5,euler(0,0,0)*cf(-0.2,-0.8,0.01))
local Tprt16=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part16",vt(1,1,1))
Tmsh16=mesh("BlockMesh",Tprt16,"","",vt(0,0,0),vt(0.05,2,0.1))
local Twld16=weld(Tprt16,Tprt16,Tprt7,euler(0,0,0)*cf(0,0,0.01))
local Tprt17=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part17",vt(1,1,1))
Tmsh17=mesh("BlockMesh",Tprt17,"","",vt(0,0,0),vt(0.05,2,0.1))
local Twld17=weld(Tprt17,Tprt17,Tprt5,euler(0,0,0)*cf(0,0,0.01))
local Tprt18=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part18",vt(1,1,1))
Tmsh18=mesh("BlockMesh",Tprt18,"","",vt(0,0,0),vt(0.62,0.2,0.11))
local Twld18=weld(Tprt18,Tprt18,Tprt7,euler(0,0,0)*cf(0,0.911,0))
local Tprt19=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part19",vt(1,1,1))
Tmsh19=mesh("BlockMesh",Tprt19,"","",vt(0,0,0),vt(0.62,0.2,0.11))
local Twld19=weld(Tprt19,Tprt19,Tprt5,euler(0,0,0)*cf(0,0.911,0))
local Tprt20=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part20",vt(1,1,1))
Tmsh20=mesh("BlockMesh",Tprt20,"","",vt(0,0,0),vt(1.20,0.2,0.11))
local Twld20=weld(Tprt20,Tprt20,Tprt8,euler(0,0,0)*cf(0,0.911,0))
local Tprt21=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part21",vt(1,1,1))
Tmsh21=mesh("BlockMesh",Tprt21,"","",vt(0,0,0),vt(1.20,0.2,0.11))
local Twld21=weld(Tprt21,Tprt21,Tprt6,euler(0,0,0)*cf(0,0.911,0))
local Tprt22=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part22",vt(1,1,1))
Tmsh22=mesh("BlockMesh",Tprt22,"","",vt(0,0,0),vt(2.01,0.2,0.11))
local Twld22=weld(Tprt22,Tprt22,Tprt9,euler(0,0,0)*cf(0,0.911,0))
local Tprt23=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part23",vt(1,1,1))
Tmsh23=mesh("BlockMesh",Tprt23,"","",vt(0,0,0),vt(0.4,2.01,0.11))
local Twld23=weld(Tprt23,Tprt23,Tprt9,euler(0,0,0)*cf(0,0,0))
local Tprt24=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part24",vt(1,1,1))
Tmsh24=mesh("BlockMesh",Tprt24,"","",vt(0,0,0),vt(0.2,2.01,0.105))
local Twld24=weld(Tprt24,Tprt24,Tprt9,euler(0,0,0)*cf(0.2,0,0))
local Tprt25=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Torso Part25",vt(1,1,1))
Tmsh25=mesh("BlockMesh",Tprt25,"","",vt(0,0,0),vt(0.2,2.01,0.105))
local Twld25=weld(Tprt25,Tprt25,Tprt9,euler(0,0,0)*cf(-0.2,0,0))
 
--[[LEFT ARM]]--
local LAprt1=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Left Arm Part1",vt(1,1,1))
LAmsh1=mesh("BlockMesh",LAprt1,"","",vt(0,0,0),vt(1.01,2.01,1.01))
local LAwld1=weld(LAprt1,LAprt1,LeftArm,euler(0,0,0)*cf(0,0,0))
local LAprt2=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Left Arm Part2",vt(1,1,1))
LAmsh2=mesh("BlockMesh",LAprt2,"","",vt(0,0,0),vt(1.02,2.01,0.2))
local LAwld2=weld(LAprt2,LAprt2,LAprt1,euler(0,0,0)*cf(0,-0.01,0))
local LAprt3=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Left Arm Part3",vt(1,1,1))
LAmsh3=mesh("BlockMesh",LAprt3,"","",vt(0,0,0),vt(1.02,2.01,0.1))
local LAwld3=weld(LAprt3,LAprt3,LAprt1,euler(0,0,0)*cf(0,-0.01,0.2))
local LAprt4=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Left Arm Part4",vt(1,1,1))
LAmsh4=mesh("BlockMesh",LAprt4,"","",vt(0,0,0),vt(1.02,2.01,0.1))
local LAwld4=weld(LAprt4,LAprt4,LAprt1,euler(0,0,0)*cf(0,-0.01,-0.2))
local LAprt5=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Left Arm Part5",vt(1,1,1))
LAmsh5=mesh("BlockMesh",LAprt5,"","",vt(0,0,0),vt(1.025,0.2,1.025))
local LAwld5=weld(LAprt5,LAprt5,LAprt1,euler(0,0,0)*cf(0,0.9,0))
 
--[[RIGHT ARM]]--
local RAprt1=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Right Arm Part1",vt(1,1,1))
RAmsh1=mesh("BlockMesh",RAprt1,"","",vt(0,0,0),vt(1.01,2.01,1.01))
local RAwld1=weld(RAprt1,RAprt1,RightArm,euler(0,0,0)*cf(0,0,0))
local RAprt2=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Right Arm Part2",vt(1,1,1))
RAmsh2=mesh("BlockMesh",RAprt2,"","",vt(0,0,0),vt(1.02,2.01,0.2))
local RAwld2=weld(RAprt2,RAprt2,RAprt1,euler(0,0,0)*cf(0,-0.01,0))
local RAprt3=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Right Arm Part3",vt(1,1,1))
RAmsh3=mesh("BlockMesh",RAprt3,"","",vt(0,0,0),vt(1.02,2.01,0.1))
local RAwld3=weld(RAprt3,RAprt3,RAprt1,euler(0,0,0)*cf(0,-0.01,0.2))
local RAprt4=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Right Arm Part4",vt(1,1,1))
RAmsh4=mesh("BlockMesh",RAprt4,"","",vt(0,0,0),vt(1.02,2.01,0.1))
local RAwld4=weld(RAprt4,RAprt4,RAprt1,euler(0,0,0)*cf(0,-0.01,-0.2))
local RAprt5=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Right Arm Part5",vt(1,1,1))
RAmsh5=mesh("BlockMesh",RAprt5,"","",vt(0,0,0),vt(1.025,0.2,1.025))
local RAwld5=weld(RAprt5,RAprt5,RAprt1,euler(0,0,0)*cf(0,0.9,0))
 
--[[LEFT LEG]]--
local LLprt1=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Left Leg Part1",vt(1,1,1))
LLmsh1=mesh("BlockMesh",LLprt1,"","",vt(0,0,0),vt(1.01,2.01,1.01))
local LLwld1=weld(LLprt1,LLprt1,LeftLeg,euler(0,0,0)*cf(0,0,0))
local LLprt2=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Left Leg Part2",vt(1,1,1))
LLmsh2=mesh("BlockMesh",LLprt2,"","",vt(0,0,0),vt(1.02,0.2,1.02))
local LLwld2=weld(LLprt2,LLprt2,LLprt1,euler(0,0,0)*cf(0,-0.6,0))
local LLprt3=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Left Leg Part3",vt(1,1,1))
LLmsh3=mesh("BlockMesh",LLprt3,"","",vt(0,0,0),vt(1.02,0.1,1.02))
local LLwld3=weld(LLprt3,LLprt3,LLprt1,euler(0,0,0)*cf(0,-0.75,0))
local LLprt4=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Left Leg Part4",vt(1,1,1))
LLmsh4=mesh("BlockMesh",LLprt4,"","",vt(0,0,0),vt(1.02,0.1,1.02))
local LLwld4=weld(LLprt4,LLprt4,LLprt1,euler(0,0,0)*cf(0,-0.45,0))
local LLprt5=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Left Leg Part5",vt(1,1,1))
LLmsh5=mesh("BlockMesh",LLprt5,"","",vt(0,0,0),vt(1.02,0.4,1.02))
local LLwld5=weld(LLprt5,LLprt5,LLprt1,euler(0,0,0)*cf(0,0.8,0))
 
--[[RIGHT LEG]]--
local RLprt1=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Right Leg Part1",vt(1,1,1))
RLmsh1=mesh("BlockMesh",RLprt1,"","",vt(0,0,0),vt(1.01,2.01,1.01))
local RLwld1=weld(RLprt1,RLprt1,RightLeg,euler(0,0,0)*cf(0,0,0))
local RLprt2=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Right Leg Part2",vt(1,1,1))
RLmsh2=mesh("BlockMesh",RLprt2,"","",vt(0,0,0),vt(1.02,0.2,1.02))
local RLwld2=weld(RLprt2,RLprt2,RLprt1,euler(0,0,0)*cf(0,-0.6,0))
local RLprt3=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Right Leg Part3",vt(1,1,1))
RLmsh3=mesh("BlockMesh",RLprt3,"","",vt(0,0,0),vt(1.02,0.1,1.02))
local RLwld3=weld(RLprt3,RLprt3,RLprt1,euler(0,0,0)*cf(0,-0.75,0))
local RLprt4=part(3,modelzorz,0,0,BrickColor.new("Hot pink"),"Right Leg Part4",vt(1,1,1))
RLmsh4=mesh("BlockMesh",RLprt4,"","",vt(0,0,0),vt(1.02,0.1,1.02))
local RLwld4=weld(RLprt4,RLprt4,RLprt1,euler(0,0,0)*cf(0,-0.45,0))
local RLprt5=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Right Leg Part5",vt(1,1,1))
RLmsh5=mesh("BlockMesh",RLprt5,"","",vt(0,0,0),vt(1.02,0.4,1.02))
local RLwld5=weld(RLprt5,RLprt5,RLprt1,euler(0,0,0)*cf(0,0.8,0))
 
--[[ 
Copyrighted (C) Fenrier 2014
]] 