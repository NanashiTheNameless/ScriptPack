
--[[
Loch-n-Load Script created by: 
Fenrier: Everything
Bomb:
Id=http://www.roblox.com/asset/?id=11563093
Texture=http://www.roblox.com/asset/?id=11563076
Shape="Ball"
]] 
wait(1/60)
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
damage = 5 
oridamage = 50 
attackdebounce = false 
offset=nil
MMouse=nil
count=0
reloading=false
newpos2=nil
dynamiteammo=false
mode="LnL"
local bprt1=nil
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
if Character:findFirstChild("Loch-n-Load",true) ~= nil then 
Character:findFirstChild("Loch-n-Load",true).Parent = nil 
end 
if Character:findFirstChild("Carnificare",true) ~= nil then 
Character:findFirstChild("Carnificare",true).Parent = nil 
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
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Loch-n-Load" 
 
local prt1=part(3,modelzorz,0,1,BrickColor.new("Black"),"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Navy blue"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Navy blue"),"Part3",vt(1,1,1))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Navy blue"),"Part4",vt(1,1,1))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Navy blue"),"Part5",vt(1,1,1))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Navy blue"),"Part6",vt(1,1,1))
local prt7=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part7",vt(1,1,1))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part8",vt(1,1,1))
local prt9=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part9",vt(1,1,1))
local prt10=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part10",vt(1,1,1))
local prt11=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local prt12=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local prt13=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
local prt14=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part14",vt(1,1,1))
local prt15=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part15",vt(1,1,1))
local prt16=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part16",vt(1,1,1))
local prt17=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part17",vt(1,1,1))
local prt18=part(3,modelzorz,0,0,BrickColor.new("Navy blue"),"Part18",vt(1,1,1))
local prt19=part(3,modelzorz,0,0,BrickColor.new("Navy blue"),"Part19",vt(1,1,1))
local prt20=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part20",vt(1,1,1))
local prt21=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part21",vt(1,1,1))
local prt22=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part22",vt(1,1,1))
local prt23=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part23",vt(1,1,1))
local prt24=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part24",vt(1,1,1))
local prt25=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part25",vt(1,1,1))
local prt26=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part26",vt(1,1,1))
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1,1,1))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.6,1.6,0.8))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(0.6,1,0.8))
local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(0.7,1,1))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.7,0.5,1.2))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.6,0.6,0.8))
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(0.7,0.2,1.01))
local msh8=mesh("BlockMesh",prt8,"","",vt(0,0,0),vt(0.5,0.1,0.8))
local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.5,0.4,0.5))
local msh10=mesh("CylinderMesh",prt10,"","",vt(0,0,0),vt(0.2,0.5,0.2))
local msh11=mesh("BlockMesh",prt11,"","",vt(0,0,0),vt(0.5,0.8,0.8))
local msh12=mesh("BlockMesh",prt12,"","",vt(0,0,0),vt(0.7,0.4,1))
local msh13=mesh("CylinderMesh",prt13,"","",vt(0,0,0),vt(0.5,3,0.5))
local msh14=mesh("CylinderMesh",prt14,"","",vt(0,0,0),vt(0.4,3.01,0.4))
local msh15=mesh("CylinderMesh",prt15,"","",vt(0,0,0),vt(0.5,3,0.5))
local msh16=mesh("CylinderMesh",prt16,"","",vt(0,0,0),vt(0.4,3.01,0.4))
local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(0.5,1.2,0.4))
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(0.6,1.2,0.21))
local msh19=mesh("BlockMesh",prt19,"","",vt(0,0,0),vt(0.6,1,0.4))
local msh20=mesh("SpecialMesh",prt20,"Wedge","",vt(0,0,0),vt(0.2,0.2,0.25))
local msh21=mesh("BlockMesh",prt21,"","",vt(0,0,0),vt(0.2,0.4,0.4))
local msh22=mesh("BlockMesh",prt22,"","",vt(0,0,0),vt(0.2,0.4,0.2))
local msh23=mesh("CylinderMesh",prt23,"","",vt(0,0,0),vt(0.6,0.2,0.6))
local msh24=mesh("CylinderMesh",prt24,"","",vt(0,0,0),vt(0.6,0.2,0.6))
local msh25=mesh("BlockMesh",prt25,"","",vt(0,0,0),vt(0.1,0.2,0.2))
local msh26=mesh("CylinderMesh",prt26,"","",vt(0,0,0),vt(0.1,0.3,0.1))
 
local wld1=weld(prt1,prt1,Torso,euler(1.57,0,0)*cf(-1,-2,-1.5))
local wld2=weld(prt2,prt2,prt1,euler(1,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(1,0,0)*cf(0,0.7,-0.4))
local wld4=weld(prt4,prt4,prt3,euler(-0.43,0,0)*cf(0,0.8,0))
local wld5=weld(prt5,prt5,prt4,euler(0,0,0)*cf(0,0.6,-0.1))
local wld6=weld(prt6,prt6,prt2,euler(0.57,0,0)*cf(0,-0.8,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,-0.4,-0.1))
local wld8=weld(prt8,prt8,prt7,euler(0,0,0)*cf(0,-0.1,0.8))
local wld9=weld(prt9,prt9,prt8,euler(0,0,1.57)*cf(0,-0.15,0.5))
local wld10=weld(prt10,prt10,prt9,euler(0,0,0)*cf(0,0,0))
local wld11=weld(prt11,prt11,prt10,euler(0,0,-1.57)*cf(0.3,0,-0.5))
local wld12=weld(prt12,prt12,prt11,euler(0,0,0)*cf(0,0.24,-0.8))
local wld13=weld(prt13,prt13,prt12,euler(0,0,0)*cf(0,-1.25,0.22))
local wld14=weld(prt14,prt14,prt13,euler(0,0,0)*cf(0,0,0))
local wld15=weld(prt15,prt15,prt12,euler(0,0,0)*cf(0,-1.25,-0.22))
local wld16=weld(prt16,prt16,prt15,euler(0,0,0)*cf(0,0,0))
local wld17=weld(prt17,prt17,prt11,euler(0,0,0)*cf(0,-0.8,-0.2))
local wld18=weld(prt18,prt18,prt17,euler(0,0,0)*cf(0,-0.8,0.1))
local wld19=weld(prt19,prt19,prt17,euler(0,0,0)*cf(0,-1,0))
local wld20=weld(prt20,prt20,prt7,euler(-1.57,0,3.14)*cf(0,0,-0.6))
local wld21=weld(prt21,prt21,prt12,euler(0,0,0)*cf(0,0,-0.55))
local wld22=weld(prt22,prt22,prt21,euler(0,0,0)*cf(0,-0.4,0))
local wld23=weld(prt23,prt23,prt13,euler(0,0,0)*cf(0,-1,0))
local wld24=weld(prt24,prt24,prt15,euler(0,0,0)*cf(0,-1,0))
local wld25=weld(prt25,prt25,prt24,euler(0,0,0)*cf(0,0,-0.35))
local wld26=weld(prt26,prt26,prt25,euler(0,0,1.57)*cf(0,0,0))
 
local modelzorz2 = Instance.new("Model") 
modelzorz2.Parent = Character 
modelzorz2.Name = "Carnificare" 
 
local prt27=part(3,modelzorz2,0,0,BrickColor.new("Navy blue"),"Part27",vt(1,1,1))
local prt28=part(3,modelzorz2,0,0,BrickColor.new("Bright blue"),"Part28",vt(1,1,1))
local prt29=part(3,modelzorz2,0,0,BrickColor.new("Bright blue"),"Part29",vt(1,1,1))
local prt30=part(3,modelzorz2,0,0,BrickColor.new("Bright blue"),"Part30",vt(1,1,1))
local prt31=part(3,modelzorz2,0,0,BrickColor.new("Bright blue"),"Part31",vt(1,1,1))
local prt32=part(3,modelzorz2,0.3,0,BrickColor.new("White"),"Part32",vt(1,2,1))
local prt33=part(3,modelzorz2,0.3,0,BrickColor.new("Dark stone grey"),"Part33",vt(1,2,1))
local prt34=part(3,modelzorz2,0.3,0,BrickColor.new("White"),"Part34",vt(1,1,1))
local prt35=part(3,modelzorz2,0.3,0,BrickColor.new("Dark stone grey"),"Part35",vt(1,1,1))
 
local msh27=mesh("CylinderMesh",prt27,"","",vt(0,0,0),vt(0.3,1,0.3))
local msh28=mesh("BlockMesh",prt28,"","",vt(0,0,0),vt(0.1,0.5,0.1))
local msh29=mesh("BlockMesh",prt29,"","",vt(0,0,0),vt(0.1,0.5,0.1))
local msh30=mesh("BlockMesh",prt30,"","",vt(0,0,0),vt(0.6,0.1,0.3))
local msh31=mesh("BlockMesh",prt31,"","",vt(0,0,0),vt(0.4,0.1,0.5))
local msh32=mesh("BlockMesh",prt32,"","",vt(0,0,0),vt(0.4,1.5,0.05))
local msh33=mesh("BlockMesh",prt33,"","",vt(0,0,0),vt(0.21,1.5,0.06))
local msh34=mesh("SpecialMesh",prt34,"Wedge","",vt(0,0,0),vt(0.05,0.4,0.4))
local msh35=mesh("SpecialMesh",prt35,"Wedge","",vt(0,0,0),vt(0.06,0.21,0.4))
 
local wld27=weld(prt27,prt27,Torso,euler(0,0,0)*cf(0.5,-2,-0.5))
local wld28=weld(prt28,prt28,prt27,euler(0,0,0)*cf(0,-0.7,0))
local wld29=weld(prt29,prt29,prt27,euler(0,0,1.57)*cf(0,-0.7,0))
local wld30=weld(prt30,prt30,prt27,euler(0,0,0)*cf(0,0.5,0))
local wld31=weld(prt31,prt31,prt30,euler(0,0,0)*cf(0,0,0))
local wld32=weld(prt32,prt32,prt31,euler(0,0,0)*cf(0,1.5,0))
local wld33=weld(prt33,prt33,prt32,euler(0,0,0)*cf(-0.1,0,0))
local wld34=weld(prt34,prt34,prt32,euler(1.57,-1.57,0)*cf(0,1.7,0))
local wld35=weld(prt35,prt35,prt33,euler(1.57,-1.57,0)*cf(0,1.7,0))
 
derp=-0.4
for i=1,5 do
local prt=part(3,modelzorz2,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(0.25,0.1,0.25))
local wld=weld(prt,prt,prt27,euler(0,0.785,0)*cf(0,derp,0))
derp=derp+0.2
end
 
function bomb()
dmode=Instance.new("Model")
dmode.Parent=modelzorz
dmode.Name="Bomb"
local bprt1=part(3,dmode,0,0,BrickColor.new("Black"),"Bomb Part1",vt(1,1,1))
bprt1.CFrame=prt25.CFrame
local bprt2=part(3,dmode,0,0,BrickColor.new("Navy blue"),"Bomb Part2",vt(1,1,1))
local bprt3=part(3,dmode,0,0,BrickColor.new("Navy blue"),"Bomb Part3",vt(1,1,1))
 
local bmsh1=mesh("CylinderMesh",bprt1,"","",vt(0,0,0),vt(0.5,0.7,0.5))
local bmsh2=mesh("CylinderMesh",bprt2,"","",vt(0,0,0),vt(0.51,0.2,0.51))
local bmsh3=mesh("SpecialMesh",bprt3,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
 
local bwld1=weld(bprt1,bprt1,prt24,euler(0,0,0)*cf(0,0,0))
local bwld2=weld(bprt2,bprt2,bprt1,euler(0,0,0)*cf(0,0.1,0))
local bwld3=weld(bprt3,bprt3,bprt1,euler(0,0,0)*cf(0,-0.3,0))
bprt1.CFrame=prt24.CFrame
coroutine.resume(coroutine.create(function(Weld,BombPart)
wait()
Weld.Parent=nil
BombPart.CFrame=prt25.CFrame
end),bwld1,bprt1)
return dmode,bprt1
end
--local mode,bprt1=bomb()
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Loch-n-Load" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local bg = it("BodyGyro") 
bg.Parent = nil 
 
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
function unequipweld() 
wld1.Part1=Torso
wld1.C0=euler(1.57,0,0)*cf(-1,-2,-1.5)
end 
 
function equipweld() 
wld1.Part1=RightArm
wld1.C0=euler(0.57,0,0)*cf(0.5,0,-2)
end 
 
function hideanim() 
equipped=false
wait(0.1) 
Neck.C0=necko
Neck.C1=necko2
bg.Parent=nil
unequipweld() 
end 
 
function equipanim() 
equipped=true
for i=0,1,0.1 do
wait(0)
RW.C0=cf(1.5, 0.5, 0) * euler(-1*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
wait(0.1) 
equipweld() 
for i=0,1,0.1 do
wait(0)
wld1.C0=euler(0.57+0.8*i,0,0)*cf(0.5-0.5*i,1*i,-2+2*i)
RW.C0=cf(1.5, 0.5, 0) * euler(-1+1.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait(0)
wld1.C0=euler(1.37-0.37*i,0,0)*cf(0,1-0.2*i,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-1+1.5+0.4*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4*i,0.6*i)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1.2*i,0,0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
Neck.C0=necko*angles(0,0,0.8*i)
end
Stance()
end 
 
numb=3.14-0.8
function Stance()
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 3000
--bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while equipped==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,numb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Torso
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
if reloading==false and attack==false then
if mode=="LnL" then
Neck.C0=necko*euler(0,0,0.8)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset,-0.4,0.6)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(offset,0,0)
else
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1-offset,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0.2)
end
end
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(0,0,0)
bg.Parent=nil
end
end))
end
 
function ThrowGrenade()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5-1*i,0,0.2-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1-offset+(offset-1)*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0.2)
end
local mode,bprt1=bomb()
mode["Bomb Part2"].BrickColor=BrickColor.new("White")
mode["Bomb Part3"].BrickColor=BrickColor.new("White")
bprt1.Weld.Parent=nil
bwld4=weld(bprt1,bprt1,RightArm,euler(1.57,0,0)*cf(0,1,0))
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5-1*i,0,-0.2+1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4+0.2*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0.2)
end
so("http://roblox.com/asset/?id=10209640",RightArm,0.5,1) 
coroutine.resume(coroutine.create(function()
for i=1,2 do
mode["Bomb Part2"].BrickColor=BrickColor.new("Navy blue")
mode["Bomb Part3"].BrickColor=BrickColor.new("Navy blue")
wait(0.1)
mode["Bomb Part2"].BrickColor=BrickColor.new("White")
mode["Bomb Part3"].BrickColor=BrickColor.new("White")
wait(0.1)
end
mode["Bomb Part2"].BrickColor=BrickColor.new("Navy blue")
mode["Bomb Part3"].BrickColor=BrickColor.new("Navy blue")
end))
for i=0,1,0.2 do
wait()
numb=3.14+0.5*i
Neck.C0=necko*euler(0,0,-0.5*i)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5-1+3*i,0,0.8-0.8*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.2-0.6*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0.2)
end
mode.Parent=nil
coroutine.resume(coroutine.create(function()
rangepower = 4
shoottrail(MMouse)
end))
for i=0,1,0.2 do
wait()
numb=3.14+0.5+0.5*i
Neck.C0=necko*euler(0,0,-0.5-0.5*i)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(-0.5+2+0.5*i,0,-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.8,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0.2)
end
for i=0,1,0.1 do
wait()
numb=3.14+1-1*i
Neck.C0=necko*euler(0,0,-1+1*i)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(2-1.5*i,0,-0.4+0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.8,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5+(1.5-offset)*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0.2)
end
--wait(1)
rangepower = 7
numb=3.14
attack=false
end
 
function Command1()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.8)
Neck.C1=necko2*euler(-offset+offset*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset-(offset-0.5)*i,-0.4,0.6)
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1.2+0.37*i,0,0.2-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(offset-(offset+1)*i,0,0.8*i)
end
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,0)
LW.C1=cf(0, 0.5, 0) * euler(-1+1*i,0,0.8)
end
wait(0.3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.8)
Neck.C1=necko2*euler(-offset*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0.5+(offset-0.5)*i,-0.4,0.6)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1.2+0.37-0.37*i,0,0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(offset*i,0,0.8-0.8*i)
end
attack=false
end
 
function Dynamite()
attack=true
for i=0,1,0.1 do
wait()
numb=3.14-0.8+0.8*i
Neck.C0=necko*euler(0,0,0.8-0.8*i)
Neck.C1=necko2*euler(-offset+offset*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9-0.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset-offset*i,-0.4+0.4*i,0.6-0.6*i)
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1.2-1.6*i,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(offset-offset*i,0,0)
end
local dynamite=part(3,modelzorz,0,0,BrickColor.new("Bright red"),"Dynamite",vt(1,1,1))
local dynamsh=mesh("SpecialMesh",dynamite,"FileMesh","http://www.roblox.com/asset/?id=12891705",vt(0,0,0),vt(0.3,0.3,0.3))
dynamsh.TextureId="http://www.roblox.com/asset/?id=12891577"
local dynawld=weld(dynamite,dynamite,LeftArm,euler(3.14,-1.57,0)*cf(0,1,0))
for i=0,1,0.1 do
wait()
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.4+0.8*i,0,0.2-0.4*i)
dynawld.C0=euler(3.14,-1.57+1.57*i,0)*cf(0,1,0)
end
dynamiting=true
while dynamiting==true do
wait()
end
for i=0,1,0.1 do
wait()
LW.C0=cf(-1.5, 0.5, 0) * euler(0.4+1.17*i,0,-0.2+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(offset*i,0,0)
end
dynamite.CanCollide=true
dynawld.Parent=nil
coroutine.resume(coroutine.create(function(Bomb)
wait(5)
so("http://www.roblox.com/asset?id=2233908",Bomb,3,1) 
Bomb.Transparency=1
b=it("Explosion")
b.Parent=workspace
b.Position=Bomb.Position
b.BlastPressure=0
local c = game.Workspace:GetChildren();
for i = 1, #c do
if c[i].className=="Model" and c[i]:findFirstChild("Humanoid")==nil then
local b = c[i]:GetChildren();
for i = 1, #b do
if b[i].className=="Part" then
local targ = b[i].Position - Bomb.Position;
local mag = targ.magnitude;
if mag <= 20 then 
b[i].Velocity=vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
b[i]:BreakJoints()
local angle = (b[i].Position-(newpos+Vector3.new(0,-3,0))).unit
print(angle)
--b[i].CFrame=CFrame.new(b[i].Position,Vector3.new(angle.x,b[i].Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,10,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=b[i]
coroutine.resume(coroutine.create(function(Vel) 
wait(0.7) 
Vel:Remove() 
end),bodyVelocity) 
end
end
end
end
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - Bomb.Position;
local mag = targ.magnitude;
if mag <= 20 then 
newpos2=Bomb.Position
Damagefunc2(head,60,20)
end 
end 
end 
end
CF22=Bomb.CFrame
for i=1,6 do
newdynamite=part(3,workspace,0,0,BrickColor.new("Bright red"),"Mini Dynamite",vt(1,1,1))
newdynamite.CanCollide=true
newdynamsh=mesh("SpecialMesh",newdynamite,"FileMesh","http://www.roblox.com/asset/?id=12551202",vt(0,0,0),vt(0.3,1,0.3))
newdynamsh.TextureId="http://www.roblox.com/asset/?id=20729766"
newdynamite.CFrame=CF22*cf(math.random(-10,10),math.random(0,10),math.random(-10,10))
newdynamite.Velocity=vt(math.random(-5,5),10,math.random(-5,5))
--newdynamite.Velocity=vt(0,20,0)
coroutine.resume(coroutine.create(function(Bombeh)
Bombeh.Parent=workspace
--Bombeh.CanCollide=false
wait(0.1)
--Bombeh.CanCollide=false
print(Bombeh.CanCollide)
wait(0.2)
Bombeh.CFrame=CF22*cf(math.random(-10,10),math.random(0,10),math.random(-10,10))
Bombeh.CanCollide=true
wait(4+math.random())
so("http://www.roblox.com/asset?id=2233908",Bombeh,3,1) 
b=it("Explosion")
b.Parent=workspace
b.Position=Bombeh.Position
b.BlastPressure=0
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - Bombeh.Position;
local mag = targ.magnitude;
if mag <= 10 then 
newpos2=Bombeh.Position
Damagefunc2(head,30,20)
end 
end 
end 
end
Bombeh.Transparency=1
wait(1)
Bombeh.Parent=nil
end),newdynamite)
end
wait(1)
Bomb.Parent=nil
end),dynamite)
for i=0,1,0.1 do
wait()
numb=3.14-0.8*i
Neck.C0=necko*euler(0,0,0.8*i)
Neck.C1=necko2*euler(offset*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9-0.5+0.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset*i,-0.4*i,0.6*i)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1.17+0.03*i,0,0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(offset*i,0,0)
end
--[[Neck.C0=necko*euler(0,0,0.8)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset,-0.4,0.6)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(offset,0,0)]]
attack=false
wait(1)
end
 
function CircleEffect(part,x1,y1,z1,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 5 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=Part.Transparency+0.15 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function BlastEffect(part,x1,y1,z1,color) 
        local msh1=it("SpecialMesh") 
        msh1.Scale=vt(0.5,0.5,0.5) 
        msh1.MeshId="http://www.roblox.com/asset/?id=1323306"
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 10 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.05,0.3,0.05) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
partd=nil
dynaammo=false
spread = 0
range = 400
rangepower = 7
function shoottrail(mouse)
if mode=="LnL" then
if count==0 then
count=1
partd=prt23
else
count=2
partd=prt24
end
else
partd=RightArm
end
--print(count)
arrowtrail = BrickColor.new("White")
local mode,bprt1=bomb()
if dynamiteammo==true then
dynaammo=true
local dynamsh=mesh("SpecialMesh",bprt1,"FileMesh","http://www.roblox.com/asset/?id=12891705",vt(0,0,0),vt(0.3,0.3,0.3))
dynamsh.TextureId="http://www.roblox.com/asset/?id=12891577"
mode["Bomb Part2"].Transparency=1
mode["Bomb Part3"].Transparency=1
end
countt=0
--local bwldderp=weld(bprt1,bprt1,effectsg,euler(0,0,0)*cf(0,0,0))
--bprt1.CFrame=effectsg.CFrame*euler(3.14,0,0)
--mode.Parent=nil
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)))
local dir = CFrame.new((partd.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(partd.Position,dir.lookVector,10,Character)
local rangepos = range
local function drawtrail(From,To)
--mode.Parent=workspace
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(1,0.2,1)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = arrowtrail
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
bprt1.CFrame=effectsg.CFrame*euler(1.57-countt,0,0)
dynacf=bprt1.CFrame
countt=countt+0.7
local bwldderp=weld(bprt1,bprt1,effectsg,euler(0,0,0)*cf(0,0,0))
coroutine.resume(coroutine.create(function()
effectsg.Transparency=1
wait(0.1)
effectsg.Parent = nil 
end))
end
local newpos = partd.Position
local inc = rangepower
repeat
wait(0) 
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-0.5),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
--inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
if dynaammo==false then
b=Instance.new("Explosion")
b.Parent=workspace
b.Position=newpos
b.BlastRadius=30
b.BlastPressure=0.000000001
local c = game.Workspace:GetChildren();
for i = 1, #c do
if c[i].className=="Script" then
local b=c[i]:GetChildren()
for i=1,#b do
if b[i].className=="Part" then
local targ = b[i].Position - newpos;
local mag = targ.magnitude;
if mag <= 10 then 
b[i]:BreakJoints()
local angle = (b[i].Position-(newpos+Vector3.new(0,-3,0))).unit
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,10,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=b[i]
coroutine.resume(coroutine.create(function(Vel) 
wait(0.7) 
Vel:Remove() 
end),bodyVelocity) 
print("BROKE PART")
end
end
end
end
if c[i].className=="Model" and c[i]:findFirstChild("Humanoid")==nil then
local b = c[i]:GetChildren();
for i = 1, #b do
if b[i].className=="Part" then
local targ = b[i].Position - newpos;
local mag = targ.magnitude;
if mag <= 10 then 
b[i].Velocity=vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
b[i]:BreakJoints()
local angle = (b[i].Position-(newpos+Vector3.new(0,-3,0))).unit
print(angle)
--b[i].CFrame=CFrame.new(b[i].Position,Vector3.new(angle.x,b[i].Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,10,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=b[i]
coroutine.resume(coroutine.create(function(Vel) 
wait(0.7) 
Vel:Remove() 
end),bodyVelocity) 
end
end
end
end
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - newpos;
local mag = targ.magnitude;
if mag <= 20 then 
newpos2=newpos
Damagefunc2(head,40,20)
end 
end 
end 
end
end
if dynaammo==true then
dynaammo=false
local dynamite=part(3,modelzorz,0,0,BrickColor.new("Bright red"),"Dynamite",vt(1,1,1))
dynamite.CanCollide=true
local dynamsh=mesh("SpecialMesh",dynamite,"FileMesh","http://www.roblox.com/asset/?id=12891705",vt(0,0,0),vt(0.3,0.3,0.3))
dynamsh.TextureId="http://www.roblox.com/asset/?id=12891577"
dynamite.CFrame=dynacf
dynamite.Velocity=dynamite.CFrame.lookVector*30
coroutine.resume(coroutine.create(function(Bomb)
wait(5)
--Bomb=dynamite
so("http://www.roblox.com/asset?id=2233908",Bomb,3,1) 
Bomb.Transparency=1
b=it("Explosion")
b.Parent=workspace
b.Position=Bomb.Position
b.BlastPressure=0
local c = game.Workspace:GetChildren();
for i = 1, #c do
if c[i].className=="Model" and c[i]:findFirstChild("Humanoid")==nil then
local b = c[i]:GetChildren();
for i = 1, #b do
if b[i].className=="Part" then
local targ = b[i].Position - Bomb.Position;
local mag = targ.magnitude;
if mag <= 20 then 
b[i].Velocity=vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
b[i]:BreakJoints()
local angle = (b[i].Position-(newpos+Vector3.new(0,-3,0))).unit
print(angle)
--b[i].CFrame=CFrame.new(b[i].Position,Vector3.new(angle.x,b[i].Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,10,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=b[i]
coroutine.resume(coroutine.create(function(Vel) 
wait(0.7) 
Vel:Remove() 
end),bodyVelocity) 
end
end
end
end
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - Bomb.Position;
local mag = targ.magnitude;
if mag <= 20 then 
newpos2=Bomb.Position
Damagefunc2(head,60,20)
end 
end 
end 
end
print("MULTI DYNAMITES")
CF22=dynamite.CFrame
for i=1,6 do
newdynamite=part(3,workspace,0,0,BrickColor.new("Bright red"),"Mini Dynamite",vt(1,1,1))
newdynamite.CanCollide=true
newdynamsh=mesh("SpecialMesh",newdynamite,"FileMesh","http://www.roblox.com/asset/?id=12551202",vt(0,0,0),vt(0.3,1,0.3))
newdynamsh.TextureId="http://www.roblox.com/asset/?id=20729766"
newdynamite.CFrame=CF22*cf(math.random(-10,10),math.random(0,10),math.random(-10,10))
newdynamite.Velocity=vt(math.random(-5,5),10,math.random(-5,5))
--newdynamite.Velocity=vt(0,20,0)
coroutine.resume(coroutine.create(function(Bombeh)
Bombeh.Parent=workspace
--Bombeh.CanCollide=false
wait(0.1)
--Bombeh.CanCollide=false
print(Bombeh.CanCollide)
wait(0.2)
Bombeh.CFrame=CF22*cf(math.random(-10,10),math.random(0,10),math.random(-10,10))
Bombeh.CanCollide=true
wait(4+math.random())
so("http://www.roblox.com/asset?id=2233908",Bombeh,3,1) 
b=it("Explosion")
b.Parent=workspace
b.Position=Bombeh.Position
b.BlastPressure=0
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - Bombeh.Position;
local mag = targ.magnitude;
if mag <= 10 then 
newpos2=Bombeh.Position
Damagefunc2(head,30,20)
end 
end 
end 
end
Bombeh.Transparency=1
wait(1)
Bombeh.Parent=nil
end),newdynamite)
end
end),dynamite)
end
coroutine.resume(coroutine.create(function(Model)
wait(0)
Model.Parent=nil
end),mode)
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
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=Damage+math.random(0,10)
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
                game:GetService("Debris"):AddItem(r,.5)
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
 
Damagefunc2=function(hit,Damage,Knockback)
--[[        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) ]]
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        blocked=false
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
--[[                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end]]
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                block=hit.Parent:findFirstChild("Block")
--[[                if block~=nil then
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-3
                print(block.Value)
                end
                end]]
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5)
                else
                h:TakeDamage(1)
                showDamage(hit.Parent,1,.5)
                end
--if blocked==false then
local angle = (hit.Position-(newpos2+Vector3.new(0,-3,0))).unit
print(angle)
hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                rl.Parent=hit
coroutine.resume(coroutine.create(function(vel) 
wait(1) 
vel:Remove() 
end),rl) 
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(0.7) 
Vel:Remove() 
end),bodyVelocity) 
                game:GetService("Debris"):AddItem(vp,1)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
--        end 
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
dynamiting=false
if attack == true then return end 
hold=true
attack=true
if mode=="Sword" then
repeat
if math.random(1,3)==1 then
rand=3
else
rand=math.random(1,2)
end
--rand=3
if rand==1 then
for i=0,1,0.15 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1-offset+2*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0.2-0.2*i)
end
con1=prt33.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,0.5,1) 
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1-offset+2-4*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
con1:disconnect()
for i=0,1,0.15 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1-offset-2+2*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0.2*i)
end
elseif rand==2 then
for i=0,1,0.15 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,0)
LW.C0=cf(-1.5+0.8*i, 0.5+0.5*i, -0.5*i) * euler(1-offset+0.57*i,0,1.57*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0.2-0.2*i)
end
con1=prt33.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,0.5,1) 
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,0)
LW.C0=cf(-1.5+0.8-0.8*i, 0.5+0.5-0.5*i, -0.5+0.5*i) * euler(1-offset+0.57,0,1.57-3.14*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
con1:disconnect()
for i=0,1,0.15 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1-offset+0.57-0.57*i,0,-1.57+1.57*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0.2*i)
end
elseif rand==3 then
CRIT=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5-0.7*i, 0.5+0.2*i, -0.5*i) * euler(0.5+1.5*i,0,0.2-0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4+0.4*i,0.6*i)
LW.C0=cf(-1.5+0.7*i, 0.5+0.2*i, -0.5*i) * euler(1-offset+(offset+1)*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0.2-0.8*i)
wld27.C0=euler(-1.57,0,-1.57+0.6*i)*cf(0,1,0)
end
con1=prt33.Touched:connect(function(hit) Damagefunc1(hit,60,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,0.8) 
for i=0,1,0.3 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5-0.7, 0.5+0.2-0.4*i, -0.5) * euler(2-1.8*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0.6)
LW.C0=cf(-1.5+0.7, 0.5+0.2-0.4*i, -0.5) * euler(2-1.8*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-0.6)
wld27.C0=euler(-1.57,0,-1.57+0.6)*cf(0,1,0)
end
con1:disconnect()
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5-0.7+0.7*i, 0.5-0.2+0.2*i, -0.5+0.5*i) * euler(0.2+0.3*i,0,0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4*i,0.6-0.6*i)
LW.C0=cf(-1.5+0.7-0.7*i, 0.5-0.2+0.2*i, -0.5+0.5*i) * euler(0.2+(0.8-offset)*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-0.6+0.8*i)
wld27.C0=euler(-1.57,0,-1.57+0.6-0.6*i)*cf(0,1,0)
end
CRIT=false
end
wait() 
until hold==false 
else
repeat
if count~=2 then
if count==0 then
CircleEffect(prt23.CFrame*cf(0,1,0),3,3,3,BrickColor.new("Bright red")) 
BlastEffect(prt23.CFrame*cf(0,2,0),3,3,3,BrickColor.new("Bright red")) 
else
CircleEffect(prt24.CFrame*cf(0,1,0),3,3,3,BrickColor.new("Bright red")) 
BlastEffect(prt24.CFrame*cf(0,2,0),3,3,3,BrickColor.new("Bright red")) 
end
coroutine.resume(coroutine.create(function()
so("http://www.roblox.com/asset?id=10209633",prt26,1,1)
shoottrail(mouse)
end))
dynamiteammo=false
for i=0,1,0.5 do
wait(0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset-0.3*i,-0.4,0.6)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(offset-0.3*i,0,0)
end
for i=0,1,0.5 do
wait(0)
Neck.C1=necko2*euler(-offset,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset-0.3+0.3*i,-0.4,0.6)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(offset-0.3+0.3*i,0,0)
end
end
wait(0.2)
until hold==false 
end
attack=false
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function key(key) 
if attack == true then return end 
if key=="f" then
if mode=="LnL" then
mode="Sword"
numb=3.14
unequipweld() 
wld27.Part1=LeftArm
wld27.C0=euler(-1.57,0,-1.57)*cf(0,1,0)
elseif mode=="Sword" then
mode="LnL"
numb=3.14-0.8
equipweld() 
wld1.C0=euler(1,0,0)*cf(0,0.8,0)
wld27.Part1=Torso
wld27.C0=euler(0,0,0)*cf(0.5,-2,-0.5)
end
end
if mode=="Sword" then
if key=="g" then
ThrowGrenade()
end
elseif mode=="LnL" then
if key=="z" then
Command1()
end
if key=="g" then
Dynamite()
end
if key=="h" and count~=0 then
reloading=true
attack=true
so("http://roblox.com/asset/?id=10209636",prt1,1,0.7)
for i=0,1,0.2 do
wait()
wld10.C0=euler(0,0.785*i,0)*cf(0,0,0)
Neck.C1=necko2*euler(-offset+0.3*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset-0.3*i,-0.4,0.6)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(offset-0.3*i,0,0)
end
for i=0,1,0.2 do
wait()
wld10.C0=euler(0,0.785+0.785*i,0)*cf(0,0,0)
Neck.C1=necko2*euler(-offset+0.3+(offset-0.5)*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset-0.3-(offset-0.5)*i,-0.4,0.6+0.2*i)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(offset-0.3-(offset-0.5)*i,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C1=necko2*euler(-0.2,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0.2,-0.4,0.6+0.2)
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1.2-1.6*i,0,0.2+0.1*i)
LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)
end
local dynamite=part(3,modelzorz,0,0,BrickColor.new("Bright red"),"Dynamite",vt(1,1,1))
local dynamsh=mesh("SpecialMesh",dynamite,"FileMesh","http://www.roblox.com/asset/?id=12891705",vt(0,0,0),vt(0.3,0.3,0.3))
dynamsh.TextureId="http://www.roblox.com/asset/?id=12891577"
bwld4=weld(dynamite,dynamite,LeftArm,euler(0,0,0)*cf(0,1,0))
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5+0.5*i, 0.5, -0.7*i) * euler(1.2-1.6+1.6*i,0,0.2+0.1-0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)
bwld4.C0=euler(0,0,0)*cf(0.2*i,1,0)
end
bwld4.Part1=prt13
bwld4.C0=euler(1.57,0,0)*cf(0,2,0)
so("http://roblox.com/asset/?id=10209636",dynamite,1,1)
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5+0.5, 0.5, -0.7) * euler(1.2-0.5*i,0,-0.1)
LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)
bwld4.C0=euler(1.57,0,0)*cf(0,2-2*i,0)
end
dynamite.Parent=nil
count=count-1
so("http://roblox.com/asset/?id=10209636",prt1,1,0.7)
for i=0,1,0.2 do
wait()
wld10.C0=euler(0,1.57-1.57*i,0)*cf(0,0,0)
Neck.C1=necko2*euler(-0.2+0.4*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0.2-0.4*i,-0.4,0.8-0.2*i)
LW.C0=cf(-1.5+0.5, 0.5, -0.7+0.2*i) * euler(0.7+0.5*i,0,-0.1+0.3*i)
LW.C1=cf(0, 0.5, 0) * euler(0.2-0.4*i,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C1=necko2*euler(-0.2+0.4-(0.2+offset)*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0.2-0.4+(0.2+offset)*i,-0.4,0.6)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(0.2-0.4+(0.2+offset)*i,0,0)
end
dynamiteammo=true
attack=false
reloading=false
end
if key=="r" and count~=0 then
reloading=true
attack=true
so("http://roblox.com/asset/?id=10209636",prt1,1,0.7)
for i=0,1,0.2 do
wait()
wld10.C0=euler(0,0.785*i,0)*cf(0,0,0)
Neck.C1=necko2*euler(-offset+0.3*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset-0.3*i,-0.4,0.6)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(offset-0.3*i,0,0)
end
for i=0,1,0.2 do
wait()
wld10.C0=euler(0,0.785+0.785*i,0)*cf(0,0,0)
Neck.C1=necko2*euler(-offset+0.3+(offset-0.5)*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(offset-0.3-(offset-0.5)*i,-0.4,0.6+0.2*i)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(offset-0.3-(offset-0.5)*i,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C1=necko2*euler(-0.2,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0.2,-0.4,0.6+0.2)
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1.2-1.6*i,0,0.2+0.1*i)
LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)
end
local mode,bprt1=bomb()
mode["Bomb Part2"].BrickColor=BrickColor.new("White")
mode["Bomb Part3"].BrickColor=BrickColor.new("White")
bprt1.Weld.Parent=nil
bwld4=weld(bprt1,bprt1,LeftArm,euler(1.57,0,0)*cf(0,1,0))
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5+0.5*i, 0.5, -0.7*i) * euler(1.2-1.6+1.6*i,0,0.2+0.1-0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)
bwld4.C0=euler(1.57-3.6*i,0,0)*cf(0.2*i,1,0)
end
bwld4.Part1=prt13
bwld4.C0=cf(0,2,0)
so("http://roblox.com/asset/?id=10209636",bprt1,1,1)
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5+0.5, 0.5, -0.7) * euler(1.2-0.5*i,0,-0.1)
LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)
bwld4.C0=cf(0,2-2*i,0)
end
mode.Parent=nil
count=count-1
if count==1 then
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1.2-1.6*i,0,0.2+0.1*i)
LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)
end
local mode,bprt1=bomb()
mode["Bomb Part2"].BrickColor=BrickColor.new("White")
mode["Bomb Part3"].BrickColor=BrickColor.new("White")
bprt1.Weld.Parent=nil
bwld4=weld(bprt1,bprt1,LeftArm,euler(1.57,0,0)*cf(0,1,0))
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5+0.5*i, 0.5, -0.7*i) * euler(1.2-1.6+1.6*i,0,0.2+0.1-0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)
bwld4.C0=euler(1.57-3.6*i,0,0)*cf(0.4*i,1+0.5*i,0)
end
bwld4.Part1=prt15
bwld4.C0=cf(0,2,0)
so("http://roblox.com/asset/?id=10209636",bprt1,1,1)
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5+0.5, 0.5, -0.7) * euler(1.2-0.5*i,0,-0.1)
LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)
bwld4.C0=cf(0,2-2*i,0)
end
mode.Parent=nil
end
so("http://roblox.com/asset/?id=10209636",prt1,1,0.7)
for i=0,1,0.2 do
wait()
wld10.C0=euler(0,1.57-1.57*i,0)*cf(0,0,0)
Neck.C1=necko2*euler(-0.2+0.4*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0.2-0.4*i,-0.4,0.8-0.2*i)
LW.C0=cf(-1.5+0.5, 0.5, -0.7+0.2*i) * euler(0.7+0.5*i,0,-0.1+0.3*i)
LW.C1=cf(0, 0.5, 0) * euler(0.2-0.4*i,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C1=necko2*euler(-0.2+0.4-(0.2+offset)*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.9,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0.2-0.4+(0.2+offset)*i,-0.4,0.6)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.2,0,0.2)
LW.C1=cf(0, 0.5, 0) * euler(0.2-0.4+(0.2+offset)*i,0,0)
end
count=0
attack=false
reloading=false
end
end
end 
 
function key2(key) 
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
mode="LnL"
numb=3.14-0.8
wld27.Part1=Torso
wld27.C0=euler(0,0,0)*cf(0.5,-2,-0.5)
unsheathed = false 
hideanim() 
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Fenrier's Loch-n-Load loaded.")
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2012
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 
 