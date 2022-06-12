------------------------------------------------------------------------------------------------------------------------------
Player = game.Players.LocalPlayer
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
 
ssdebounce=false
 
MMouse=nil
 
combo=0
 
--player 
 
player = nil 
 
--save shoulders 
 
RSH, LSH = nil, nil 
 
--welds 
 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
 
 
 
if Character:findFirstChild("Crossbow",true) ~= nil then 
 
Character:findFirstChild("Crossbow",true).Parent = nil 
 
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
 
modelzorz.Name = "Crossbow" 
 
 
 
local prt1=part(3,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
 
local prt2=part(3,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part2",vt(1,1,1))
 
local prt3=part(3,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part3",vt(1,1,1))
 
local prt4=part(3,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part4",vt(1,1,1))
 
local prt5=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part5",vt(1,1,1))
 
local prt6=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part6",vt(1,1,1))
 
local prt7=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part7",vt(1,1,1))
 
local prt8=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part8",vt(1,1,1))
 
local prt9=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part9",vt(1,1,1))
 
local prt10=part(3,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part10",vt(1,1,1))
 
local prt11=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part11",vt(1,1,1))
 
local prt12=part(3,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part12",vt(1,1,1))
 
local prt13=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
 
local prt14=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
 
local prt15=part(3,modelzorz,0,1,BrickColor.new("Black"),"StringGuide",vt(0.2,0.2,0.2))
 
 
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(0.4,0.8,0.4))
 
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.8,0.5,2.5))
 
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(0.5,0.49,3))
 
local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(0.2,0.21,3))
 
local msh5=mesh("CylinderMesh",prt5,"","",vt(0,0,0),vt(0.1,2.99,0.1))
 
local msh6=mesh("CylinderMesh",prt6,"","",vt(0,0,0),vt(0.1,2.99,0.1))
 
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(0.5,0.5,0.5))
 
local msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(0.13,1,0.13))
 
local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.13,0.8,0.13))
 
local msh10=mesh("BlockMesh",prt10,"","",vt(0,0,0),vt(0.4,0.1,1))
 
local msh11=mesh("CylinderMesh",prt11,"","",vt(0,0,0),vt(0.13,0.8,0.13))
 
local msh12=mesh("BlockMesh",prt12,"","",vt(0,0,0),vt(0.4,0.1,1))
 
local msh13=mesh("CylinderMesh",prt13,"","",vt(0,0,0),vt(0.1,0.11,0.1))
 
local msh14=mesh("CylinderMesh",prt14,"","",vt(0,0,0),vt(0.1,0.11,0.1))
 
 
 
local wld1=weld(prt1,prt1,Torso,euler(0.5+1.57,0,0)*cf(-0.5,-1.5,-1))
 
local wld2=weld(prt2,prt2,prt1,euler(-0.5,0,0)*cf(0,-0.5,0.2))
 
local wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,0,0.8))
 
local wld4=weld(prt4,prt4,prt3,euler(0,0,0)*cf(0,-0.15,0.3))
 
local wld5=weld(prt5,prt5,prt4,euler(1.57,0,0)*cf(0.1,-0.1,0))
 
local wld6=weld(prt6,prt6,prt4,euler(1.57,0,0)*cf(-0.1,-0.1,0))
 
local wld7=weld(prt7,prt7,prt4,euler(1.57,0,0)*cf(0,0,-1.5))
 
local wld8=weld(prt8,prt8,prt4,euler(0,0,1.57)*cf(0,-0.05,1.45))
 
local wld9=weld(prt9,prt9,prt8,euler(0.5,0,0)*cf(0,0.5,0))
 
local wld10=weld(prt10,prt10,prt9,euler(-0.7,0,0)*cf(0,0.6,-0.25))
 
local wld11=weld(prt11,prt11,prt8,euler(-0.5,0,0)*cf(0,-0.5,0))
 
local wld12=weld(prt12,prt12,prt11,euler(0.7,0,0)*cf(0,-0.6,-0.25))
 
local wld13=weld(prt13,prt13,prt10,euler(0,0,0)*cf(0.08,-0.01,-0.4))
 
local wld14=weld(prt14,prt14,prt12,euler(0,0,0)*cf(0.08,0.01,-0.4))
 
local wld15=weld(prt15,prt15,prt2,euler(0,0,0)*cf(0,-0.3,1.65))
 
 
 
local string1=part(3,modelzorz,0,0,BrickColor.new("White"),"String1",vt(1,1,1))
 
string1.Anchored=true
 
local stringmsh1=mesh("CylinderMesh",string1,"","",vt(0,0,0),vt(0.1,1,0.1))
 
local string2=part(3,modelzorz,0,0,BrickColor.new("White"),"String1",vt(1,1,1))
 
string2.Anchored=true
 
local stringmsh2=mesh("CylinderMesh",string2,"","",vt(0,0,0),vt(0.1,1,0.1))
 
 
 
local strmdl = "Arrow"
 
coroutine.resume(coroutine.create(function()
 
repeat
 
wait(0)
 
local top = prt13.CFrame
 
local bottom = prt14.CFrame
 
local oristrpos
 
if strmdl == "Bow" then
 
oristrpos = CFrame.new((top.p+bottom.p)/2)
 
elseif strmdl == "Arrow" then
 
oristrpos = prt15.CFrame
 
end
 
local mg1 = (top.p - oristrpos.p).magnitude
 
local mg2 = (bottom.p - oristrpos.p).magnitude
 
string1.Size = Vector3.new(0.2,mg1,0.2)
 
string1.CFrame = CFrame.new((top.p+oristrpos.p)/2,oristrpos.p) * CFrame.Angles(math.rad(90),0,0)
 
string2.Size = Vector3.new(0.2,mg2,0.2)
 
string2.CFrame = CFrame.new((bottom.p+oristrpos.p)/2,oristrpos.p) * CFrame.Angles(math.rad(90),0,0)
 
until false
 
end))
 
 
 
 
 
if (script.Parent.className ~= "HopperBin") then 
 
Tool = Instance.new("HopperBin") 
 
Tool.Parent = Backpack 
 
Tool.Name = "Crossbow" 
 
script.Parent = Tool 
 
end 
 
Bin = script.Parent 
 
 
 
local bg = it("BodyGyro") 
 
bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
 
bg.P = 20e+003 
 
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
 
wld1.C0=euler(0.5+1.57,0,0)*cf(-0.5,-1.5,-1)
 
end 
 
 
 
function equipweld() 
 
wld1.Part1=RightArm
 
wld1.C0=euler(0.5+1.57,0,0)*cf(0,1,0)
 
end 
 
 
 
function hideanim() 
 
equipped=false
 
wait(0.1) 
 
bg.Parent=nil
 
unequipweld() 
 
end 
 
 
 
function equipanim() 
 
equipped=true
 
wait(0.1) 
 
equipweld() 
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
 
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
 
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
 
end 
 
 
 
function Melee()
 
attack=true
 
SpecialEffect() 
 
for i=0,1,0.1 do
 
wait()
 
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(0.8+0.77*i,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.77*i,-0.2+0.8*i)
 
end
 
bg.Parent=Torso 
 
CF = Torso.CFrame 
 
con1=prt2.Touched:connect(function(hit) Damagefunc1(hit,20,20) end) 
 
con2=prt3.Touched:connect(function(hit) Damagefunc1(hit,20,20) end) 
 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,0.8) 
 
for i=0,1,0.1 do
 
wait()
 
RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(1.57,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,0.6-2.17*i)
 
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2-1.37*i)
 
bg.cframe=CF*euler(0,-6.283*i,0) 
 
end
 
con1:disconnect()
 
con2:disconnect()
 
bg.Parent=nil
 
for i=0,1,0.1 do
 
wait()
 
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-0.77*i,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57+1.77*i,-1.57+1.37*i)
 
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2-1.37+1.37*i)
 
end
 
attack=false
 
end
 
 
 
function TripleShot()
 
attack=true
 
SpecialEffect() 
 
Humanoid.WalkSpeed=5
 
holding=true
 
for i=0,1,0.2 do
 
wait()
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.8-0.2*i,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
 
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.6*i,0,-0.2+0.4*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,-1.57*i,0)
 
end
 
local arrow=part(3,modelzorz,0,0,BrickColor.new("White"),"Arrow",vt(1,1,1))
 
local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
 
arrowmsh.VertexColor=vt(1,1,1)
 
--arrowmsh.TextureId="http://www.roblox.com/asset/?id=15886781"
 
local arrowwld=weld(arrow,arrow,LeftArm,euler(0,0,0)*cf(0,1,0))
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0.3*i,0,0)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.6,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2+0.2*i)
 
LW.C0=cf(-1.5, 0.5, -0.2*i) * euler(-0.6+1.7*i,0,0.2)
 
LW.C1=cf(0, 0.5, 0) * euler(0,-1.57+3.14*i,0)
 
wld1.C0=euler(0.5+1.57,0,1.57*i)*cf(0,1,0)
 
arrowwld.C0=euler(0,0,1.57*i)*cf(0,1,-1*i)
 
end
 
arrowwld.Part1=prt4
 
arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5)
 
for i=0,1,0.1 do
 
wait()
 
LW.C0=cf(-1.5+0.5*i, 0.5, -0.2-0.3*i) * euler(1.1-0.1*i,0,0.2+0.3*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
 
arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5-1.5*i)
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65-2*i)
 
end
 
coroutine.resume(coroutine.create(function() 
 
wait()
 
while holding==true do
 
wait(0)
 
bg.Parent = Torso
 
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
 
bg.cframe = cf(Torso.Position,pos4) * euler(0,1.57,0) * cf(0,0,0) 
 
end
 
bg.Parent=nil
 
end))
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0.3-0.3*i,0,-1.57*i)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.6-0.6*i,0,1.57*i)
 
RW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
 
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1-1*i,0,0.5-0.7*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
 
wld1.C0=euler(0.5+1.57,0,1.57-1.57*i)*cf(0,1,0)
 
end
 
wait(0.2)
 
arrowfft=arrow:Clone()
 
arrowfft.Parent=arrow.Parent
 
arrowfft.CFrame=arrow.CFrame
 
arrowfft.Anchored=true
 
fftmsh=arrowfft.Mesh
 
coroutine.resume(coroutine.create(function(Arrow,Mesh) 
 
for i=0,1,0.1 do
 
wait()
 
Arrow.Transparency=i
 
Mesh.Scale=Mesh.Scale+vt(0.5,0.5,0.5)
 
end
 
Arrow.Parent=nil
 
end),arrowfft,fftmsh)
 
for i=1,3 do
 
spread=1
 
so("http://www.roblox.com/asset/?id=16211041",prt8,1,1) 
 
shoottrail(mouse,prt8)
 
end
 
spread=0
 
arrow.Parent=nil
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.2*i,-1.57)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2*i)
 
end
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.2+0.1*i,-1.57)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2+0.1*i)
 
end
 
Humanoid.WalkSpeed=16
 
holding=false
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.3-0.3*i,-1.57+1.57*i)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.8*i,0,1.87-1.87*i)
 
RW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.37*i,-0.2*i)
 
end
 
attack=false
 
end
 
 
 
function SpiritArrows()
 
attack=true
 
SpecialEffect() 
 
Humanoid.WalkSpeed=0
 
holding=true
 
spread=2
 
for i=0,1,0.2 do
 
wait()
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.8-0.2*i,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
 
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.6*i,0,-0.2+0.4*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,-1.57*i,0)
 
end
 
local arrow=part(3,modelzorz,0.5,0,BrickColor.new("White"),"Arrow",vt(1,1,1))
 
local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
 
arrowmsh.VertexColor=vt(1,1,1)
 
--arrowmsh.TextureId="http://www.roblox.com/asset/?id=15886781"
 
local arrowwld=weld(arrow,arrow,LeftArm,euler(0,0,0)*cf(0,1,0))
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0.3*i,0,0)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.6,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2+0.2*i)
 
LW.C0=cf(-1.5, 0.5, -0.2*i) * euler(-0.6+1.7*i,0,0.2)
 
LW.C1=cf(0, 0.5, 0) * euler(0,-1.57+3.14*i,0)
 
wld1.C0=euler(0.5+1.57,0,1.57*i)*cf(0,1,0)
 
arrowwld.C0=euler(0,0,1.57*i)*cf(0,1,-1*i)
 
end
 
arrowwld.Part1=prt4
 
arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5)
 
for i=0,1,0.1 do
 
wait()
 
LW.C0=cf(-1.5+0.5*i, 0.5, -0.2-0.3*i) * euler(1.1-0.1*i,0,0.2+0.3*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
 
arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5-1.5*i)
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65-2*i)
 
end
 
coroutine.resume(coroutine.create(function() 
 
wait()
 
while holding==true do
 
wait(0)
 
bg.Parent = Torso
 
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
 
bg.cframe = cf(Torso.Position,pos4) * euler(0,1.57,0) * cf(0,0,0) 
 
end
 
bg.Parent=nil
 
end))
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0.3-0.3*i,0,-1.57*i)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.6-0.6*i,0,1.57*i)
 
RW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
 
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1-1*i,0,0.5-0.7*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
 
wld1.C0=euler(0.5+1.57,0,1.57-1.57*i)*cf(0,1,0)
 
end
 
arrowlimit=0
 
makearrow=false
 
while holding==true do
 
wait(0)
 
coroutine.resume(coroutine.create(function() 
 
if makearrow==false then
 
makearrow=true
 
if arrowlimit<=7 then
 
arrowlimit=arrowlimit+1
 
local arrowclone=part(3,modelzorz,0.5,1,BrickColor.new("White"),"Arrow",vt(1,1,1))
 
local arrowmshclone=mesh("SpecialMesh",arrowclone,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
 
arrowmsh.VertexColor=vt(1,1,1)
 
local arrowwldclone=weld(arrowclone,arrowclone,arrow,euler(0,0,3.14)*cf(math.random(-8,8),math.random(-3,3),math.random(-8,8)))
 
coroutine.resume(coroutine.create(function(Arrow) 
 
for i=1,0.3,-0.05 do
 
wait()
 
Arrow.Transparency=i
 
end
 
while holding==true do
 
wait()
 
end
 
Arrow.Anchored=true
 
if Arrow:findFirstChild("Weld")~=nil then
 
Arrow.Weld.Parent=nil
 
end
 
wait(math.random()-math.random())
 
so("http://www.roblox.com/asset/?id=16211041",Arrow,1,1) 
 
shoottrail(mouse,Arrow)
 
Arrow.Parent=nil
 
end),arrowclone)
 
end
 
wait(math.random())
 
makearrow=false
 
end
 
end))
 
end
 
arrowfft=arrow:Clone()
 
arrowfft.Parent=arrow.Parent
 
arrowfft.CFrame=arrow.CFrame
 
arrowfft.Anchored=true
 
fftmsh=arrowfft.Mesh
 
coroutine.resume(coroutine.create(function(Arrow,Mesh) 
 
for i=0,1,0.1 do
 
wait()
 
Arrow.Transparency=i
 
Mesh.Scale=Mesh.Scale+vt(0.2,0.2,0.2)
 
end
 
Arrow.Parent=nil
 
end),arrowfft,fftmsh)
 
so("http://www.roblox.com/asset/?id=16211041",prt8,1,1) 
 
shoottrail(mouse,prt8)
 
arrow.Parent=nil
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.2*i,-1.57)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2*i)
 
end
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.2+0.1*i,-1.57)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2+0.1*i)
 
end
 
Humanoid.WalkSpeed=16
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.3-0.3*i,-1.57+1.57*i)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.8*i,0,1.87-1.87*i)
 
RW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.37*i,-0.2*i)
 
end
 
spread=0
 
attack=false
 
end
 
 
 
function Decimate()
 
attack=true
 
Humanoid.WalkSpeed=0
 
print("Archer SS initiated.")
 
SpecialEffect() 
 
holding=true
 
coroutine.resume(coroutine.create(function() 
 
wait()
 
while holding==true do
 
wait(0)
 
bg.Parent = Torso
 
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
 
bg.cframe = cf(Torso.Position,pos4) * euler(0,1.57,0) * cf(0,0,0) 
 
end
 
bg.Parent=nil
 
end))
 
so("http://roblox.com/asset/?id=2101144",arrow,1,1) 
 
local arrow=part(3,modelzorz,0,1,BrickColor.new("White"),"Arrow",vt(1,1,1))
 
local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(2,2,4))
 
local arrowwld=weld(arrow,arrow,LeftArm,euler(-1.57,0,0)*cf(0,2,0))
 
for i=0,1,0.1 do
 
wait()
 
arrow.Transparency=arrow.Transparency-0.05
 
arrowwld.C0=euler(-1.57+0.2*i,0,0)*cf(-0.5*i,2,-0.5*i)
 
Torso.Neck.C0=necko*euler(0,0.3*i,-1.57*i)
 
RW.C0=cf(1.5, 0.5, -0.5*i) * euler(0.8+2.2*i,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.77*i,-0.2+0.2*i)
 
LW.C0=cf(-1.5+1.8*i, 0.5+2*i, -0.5*i) * euler(3.1*i,0,-0.2+0.6*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
 
end
 
arrowwld.Part1=prt4
 
arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5)
 
for i=0,1,0.05 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.3-0.1*i,-1.57)
 
LW.C0=cf(-1.5+1.8, 2.5-1.5*i, -0.5) * euler(3.1,0,0.4)
 
arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5-1*i)
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65-4*i)
 
end
 
for i=0,1,0.05 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.2-0.2*i,-1.57)
 
RW.C0=cf(1.5, 0.5, -0.5) * euler(3+0.14*i,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.57*i)
 
LW.C0=cf(-1.5+1.8, 1, -0.5) * euler(3.1,0,0.4+1.17*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
 
end
 
while holding==true do
 
wait()
 
end
 
so("http://www.roblox.com/asset/?id=16211041",prt8,1,1) 
 
SSshoottrail(mouse,prt8)
 
arrow.Parent=nil
 
Humanoid.WalkSpeed=16
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.3*i,-1.57)
 
RW.C0=cf(1.5, 0.5, -0.5) * euler(3.24,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.57+1*i)
 
LW.C0=cf(-1.5+1.8, 1, -0.5) * euler(3.1,0,1.57-1*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
 
end
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.3+0.1*i,-1.57)
 
RW.C0=cf(1.5, 0.5, -0.5) * euler(3.24,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.57+1+0.1*i)
 
LW.C0=cf(-1.5+1.8, 1, -0.5) * euler(3.1,0,1.57-1-0.1*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
 
end
 
for i=0,1,0.05 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.4-0.4*i,-1.57+1.57*i)
 
RW.C0=cf(1.5, 0.5, -0.5+0.5*i) * euler(3.24-2.44*i,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57+1.77*i,-0.47+0.27*i)
 
LW.C0=cf(-1.5+1.8-1.8*i, 1-0.5*i, -0.5+0.5*i) * euler(3.1-3.1*i,0,0.47-0.67*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
 
end
 
attack=false
 
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
 
 
 
function SpecialEffect() 
 
local prt=part(3,workspace,1,0,BrickColor.new("White"),"Part",vt(1,1,1))
 
prt.Anchored=true
 
prt.CFrame=Torso.CFrame
 
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
 
coroutine.resume(coroutine.create(function(Part,Mesh) 
 
for i=0,1,0.2 do
 
wait(0)
 
Part.Transparency=i
 
Mesh.Scale=Mesh.Scale+vt(10,10,10)
 
end
 
prt.Parent=nil
 
end),prt,msh)
 
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
 
                vp.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
 
                if Knockback>0 then
 
                        vp.Parent=hit.Parent.Torso
 
                end
 
                rl=Instance.new("BodyAngularVelocity")
 
                rl.P=3000
 
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
 
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
 
                rl.Parent=hit
 
coroutine.resume(coroutine.create(function(vel) 
 
wait(1) 
 
vel:Remove() 
 
end),rl) 
 
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
 
                if block~=nil then
 
                print("herp")
 
                if block.Value>0 then
 
                blocked=true
 
                block.Value=block.Value-3
 
                print(block.Value)
 
                end
 
                end
 
                if blocked==false then
 
--                h:TakeDamage(Damage)
 
                h.Health=h.Health-Damage
 
                showDamage(hit.Parent,Damage,.5)
 
                else
 
                h:TakeDamage(1)
 
                showDamage(hit.Parent,1,.5)
 
                end
 
--if blocked==false then
 
--end
 
local bodyVelocity=Instance.new("BodyVelocity")
 
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
 
bodyVelocity.P=5000
 
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
 
bodyVelocity.Parent=hit
 
coroutine.resume(coroutine.create(function(Vel) 
 
wait(1) 
 
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
 
 
 
local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
 
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
 
end 
 
 
 
spread=0
 
range=500
 
rangepower=50
 
function shoottrail(mouse,baseprt)
 
coroutine.resume(coroutine.create(function(v) 
 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-MMouse.Hit.p).magnitude/100
 
local dir = CFrame.new((baseprt.Position+MMouse.Hit.p)/2,MMouse.Hit.p+spreadvector)
 
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
 
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
 
effectsg.BrickColor = BrickColor.new("White")
 
effectsg.Reflectance = 0.25
 
local LP = From
 
local point1 = To
 
local mg = (LP - point1).magnitude
 
effectsmsh.Scale = Vector3.new(1.5,mg*5,1.5)
 
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
 
coroutine.resume(coroutine.create(function()
 
for i = 0 , 1 , 0.1 do
 
wait()
 
effectsg.Transparency = 1*i
 
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
 
end 
 
effectsg.Parent = nil 
 
end))
 
end
 
local newpos = baseprt.Position
 
local inc = rangepower
 
repeat
 
wait() wait() 
 
rangepos = rangepos - 10
 
dir = dir * CFrame.Angles(math.rad(-1),0,0)
 
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
 
hum = hit.Parent.Humanoid
 
tTorso=hit.Parent.Torso
 
Damagefunc2(hit,20,30)
 
--ADmg(hum,hit)
 
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
 
hum = hit.Parent.Parent.Humanoid
 
tTorso=hit.Parent.Parent.Torso
 
Damagefunc2(hit.Parent.Parent.Torso,20,30)
 
--ADmg(hum,hit)
 
end
 
end
 
end))
 
end
 
 
 
function SSshoottrail(mouse,baseprt)
 
coroutine.resume(coroutine.create(function(v) 
 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-MMouse.Hit.p).magnitude/100
 
local dir = CFrame.new((baseprt.Position+MMouse.Hit.p)/2,MMouse.Hit.p+spreadvector)
 
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
 
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
 
effectsg.BrickColor = BrickColor.new("White")
 
effectsg.Reflectance = 0.25
 
local LP = From
 
local point1 = To
 
local mg = (LP - point1).magnitude
 
effectsmsh.Scale = Vector3.new(2.5,mg*5,2.5)
 
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
 
coroutine.resume(coroutine.create(function()
 
for i = 0 , 1 , 0.1 do
 
wait()
 
effectsg.Transparency = 1*i
 
effectsmsh.Scale = Vector3.new(2.5-2.5*i,mg*5,2.5-2.5*i)
 
end 
 
effectsg.Parent = nil 
 
end))
 
end
 
local newpos = baseprt.Position
 
local inc = rangepower
 
repeat
 
wait() wait() 
 
rangepos = rangepos - 5
 
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
 
drawtrail(newpos,pos)
 
newpos = newpos + (dir.lookVector * inc)
 
dir = CFrame.new(pos,MMouse.Hit.p)
 
if hit ~= nil then
 
MagicCircle(BrickColor.new("White"),CFrame.new(pos),5,5,5,0,0,0,10,10,10)
 
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
 
hum = hit.Parent.Humanoid
 
tTorso=hit.Parent.Torso
 
Damagefunc1(hit,60,100)
 
--ADmg(hum,hit)
 
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
 
hum = hit.Parent.Parent.Humanoid
 
tTorso=hit.Parent.Parent.Torso
 
Damagefunc1(hit.Parent.Parent.Torso,60,100)
 
--ADmg(hum,hit)
 
end
 
end
 
until rangepos <= 0
 
end))
 
end
 
 
 
function ArrowIn()
 
attack=true
 
for i=0,1,0.2 do
 
wait()
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.8-0.2*i,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
 
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.6*i,0,-0.2+0.4*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,-1.57*i,0)
 
end
 
local arrow=part(3,modelzorz,0,0,BrickColor.new("White"),"Arrow",vt(1,1,1))
 
local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
 
arrowmsh.TextureId="http://www.roblox.com/asset/?id=15886781"
 
local arrowwld=weld(arrow,arrow,LeftArm,euler(0,0,0)*cf(0,1,0))
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0.3*i,0,0)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.6,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2+0.2*i)
 
LW.C0=cf(-1.5, 0.5, -0.2*i) * euler(-0.6+1.7*i,0,0.2)
 
LW.C1=cf(0, 0.5, 0) * euler(0,-1.57+3.14*i,0)
 
wld1.C0=euler(0.5+1.57,0,1.57*i)*cf(0,1,0)
 
arrowwld.C0=euler(0,0,1.57*i)*cf(0,1,-1*i)
 
end
 
arrowwld.Part1=prt4
 
arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5)
 
for i=0,1,0.2 do
 
wait()
 
LW.C0=cf(-1.5+0.5*i, 0.5, -0.2-0.3*i) * euler(1.1-0.1*i,0,0.2+0.3*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
 
arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5-1.5*i)
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65-2*i)
 
end
 
coroutine.resume(coroutine.create(function() 
 
wait()
 
while attack==true do
 
wait(0)
 
bg.Parent = Torso
 
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
 
bg.cframe = cf(Torso.Position,pos4) * euler(0,1.57,0) * cf(0,0,0) 
 
end
 
bg.Parent=nil
 
end))
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0.3-0.3*i,0,-1.57*i)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.6-0.6*i,0,1.57*i)
 
RW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
 
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1-1*i,0,0.5-0.7*i)
 
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
 
wld1.C0=euler(0.5+1.57,0,1.57-1.57*i)*cf(0,1,0)
 
end
 
while hold==true do
 
wait(0)
 
end
 
so("http://www.roblox.com/asset/?id=16211041",prt8,1,1) 
 
arrow.Parent=nil
 
shoottrail(mouse,prt8)
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.2*i,-1.57)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2*i)
 
end
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.2+0.1*i,-1.57)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2+0.1*i)
 
end
 
attack=false
 
end
 
 
 
function ob1d(mouse) 
 
if attack == true then return end 
 
hold=true
 
ArrowIn()
 
end 
 
 
 
function ob1u(mouse) 
 
hold = false 
 
repeat wait() until attack==false 
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0.3-0.3*i,-1.57+1.57*i)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.8*i,0,1.87-1.87*i)
 
RW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.37*i,-0.2*i)
 
end
 
Torso.Neck.C0=necko
 
wld1.C0=euler(0.5+1.57,0,0)*cf(0,1,0)
 
wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
 
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
 
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
 
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
 
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
 
end 
 
 
 
buttonhold = false 
 
 
 
eul=0
 
function key(key) 
 
if attack == true then return end 
 
if key=="z" then
 
Melee()
 
end
 
if key=="x" then
 
TripleShot()
 
end
 
if key=="c" then
 
SpiritArrows()
 
end
 
if key=="v" and ssdebounce==false then
 
--ssdebounce=true
 
coroutine.resume(coroutine.create(function() 
 
wait(30)
 
ssdebounce=false
 
end))
 
Decimate()
 
end
 
end 
 
 
 
function key2(key) 
 
if key=="c" or key=="v" then
 
holding=false
 
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
 
print("Crossbow loaded.")
 
-- mediafire
 
--[[ 
 
Copyrighted (C) Fenrier 2013
 
]]
 
    
