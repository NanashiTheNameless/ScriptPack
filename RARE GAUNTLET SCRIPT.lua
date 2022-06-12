--[[                                                                                                                                                                                                                                                                                
Herex's Mechanic Gauntlets
Heyo, Fen's first 2014 script. If ever you want details of Herex, who he is, and his backstory, 
just message me.
]] 
Player = game:GetService("Players").superbean101
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
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
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
local AnimJoints = {} 
table.insert(AnimJoints,RW)
table.insert(AnimJoints,LW)
 
 
if Character:findFirstChild("Mechanic Gauntlets",true) ~= nil then 
Character:findFirstChild("Mechanic Gauntlets",true).Parent = nil 
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
 
function SetWeld(weld, i, loops, origpos,origangle, nextpos,nextangle,smooth) 
        smooth = smooth or 1 
        local obj 
        for i, v in pairs(AnimJoints) do 
                if v[1] == weld then 
                        obj = v 
                        break 
                end 
        end 
        if not obj then 
                obj = {weld,NV} 
                table.insert(AnimJoints,obj) 
        end 
        
        local perc = (smooth == 1 and math.sin((math.pi/2)/loops*i)) or i/loops 
        
        local tox,toy,toz = 0,0,0 
        tox = math.abs(origangle.x - nextangle.x) *perc 
        toy = math.abs(origangle.y - nextangle.y) *perc 
        toz = math.abs(origangle.z - nextangle.z) *perc 
        tox = (origangle.x > nextangle.x and -tox) or tox 
        toy = (origangle.y > nextangle.y and -toy) or toy 
        toz = (origangle.z > nextangle.z and -toz) or toz 
        
        local tox2,toy2,toz2 = 0,0,0 
        tox2 = math.abs(origpos.x - nextpos.x) *perc 
        toy2 = math.abs(origpos.y - nextpos.y) *perc 
        toz2 = math.abs(origpos.z - nextpos.z) *perc 
        tox2 = (origpos.x > nextpos.x and -tox2) or tox2 
        toy2 = (origpos.y > nextpos.y and -toy2) or toy2 
        toz2 = (origpos.z > nextpos.z and -toz2) or toz2 
        
        obj[2] = Vector3.new(origangle.x + tox, origangle.y + toy, origangle.z + toz) 
        weld.C0 = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2) * CFrame.Angles(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
 
local Hitbox=part(3,nil,0,0,BrickColor.new("Really Black"),"Hitbox",vt(1,1,1))
Hitbox.Anchored=true
Hitbox.Transparency=1
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Mechanic Gauntlets" 
 
--[[LEFT GAUNTLET]]--
local Lprt1=part(3,modelzorz,0,0,BrickColor.new("Grey"),"Left Part1",vt(1,1,1))
local Lprt3=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Left Part3",vt(1,1,1))
local Lprt5=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Left Part5",vt(1,1,1))
local Lprt6=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Left Part6",vt(1,1,1))
local Lprt7=part(3,modelzorz,0,0,BrickColor.new("Grey"),"Left Part7",vt(1,1,1))
local Lprt8=part(3,modelzorz,0,0,BrickColor.new("Grey"),"Left Part8",vt(1,1,1))
local Lprt9=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Left Part9",vt(1,1,1))
local Lprt10=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Left Part10",vt(1,1,1))
local Lprt11=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Left Part11",vt(1,1,1))
 
Lmsh1=mesh("BlockMesh",Lprt1,"","",vt(0,0,0),vt(1.03,1,1.03))
Lmsh3=mesh("BlockMesh",Lprt3,"","",vt(0,0,0),vt(0.1,1.05,1.06))
Lmsh5=mesh("BlockMesh",Lprt5,"","",vt(0,0,0),vt(1.025,2,0.2))
Lmsh6=mesh("BlockMesh",Lprt6,"","",vt(0,0,0),vt(0.2,2,1.025))
Lmsh7=mesh("CylinderMesh",Lprt7,"","",vt(0,0,0),vt(0.4,0.2,0.4))
Lmsh8=mesh("CylinderMesh",Lprt8,"","",vt(0,0,0),vt(0.3,0.21,0.3))
Lmsh9=mesh("SpecialMesh",Lprt9,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(0.17,0.17,0.1))
Lmsh10=mesh("SpecialMesh",Lprt10,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(0.07,0.07,0.1))
Lmsh11=mesh("BlockMesh",Lprt11,"","",vt(0,0,0),vt(0.15,0.02,0.02))
 
local Lwld1=weld(Lprt1,Lprt1,LeftArm,euler(0,0,0)*cf(0,0.51,0))
local Lwld3=weld(Lprt3,Lprt3,Lprt1,euler(0,0,0)*cf(0.3,0,0))
local Lwld5=weld(Lprt5,Lprt5,Lprt1,euler(0,0,0)*cf(0,-0.55,0))
local Lwld6=weld(Lprt6,Lprt6,Lprt1,euler(0,0,0)*cf(0,-0.55,0))
local Lwld7=weld(Lprt7,Lprt7,Lprt1,euler(0,0,1.57)*cf(0.45,-1.2,0))
local Lwld8=weld(Lprt8,Lprt8,Lprt7,euler(0,0,0)*cf(0,0,0))
local Lwld9=weld(Lprt9,Lprt9,Lprt7,euler(1.57,0,0)*cf(-0.02,0.1,0))
local Lwld10=weld(Lprt10,Lprt10,Lprt7,euler(1.57,0,0)*cf(0,0.1,0))
local Lwld11=weld(Lprt11,Lprt11,Lprt7,euler(0,0,0)*cf(0.07,0.1,0))
 
numb=0.4
for i=1,4 do
local Lprt2=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Left Part2",vt(1,1,1))
Lmsh2=mesh("BlockMesh",Lprt2,"","",vt(0,0,0),vt(1.06,1.05,0.1))
local Lwld2=weld(Lprt2,Lprt2,Lprt1,euler(0,0,0)*cf(0,0,numb))
local Lprt4=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Left Part4",vt(1,1,1))
Lmsh4=mesh("SpecialMesh",Lprt4,"Wedge","",vt(0,0,0),vt(0.09,0.1,0.3))
local Lwld4=weld(Lprt4,Lprt4,Lprt2,euler(1.57,-1.57,0)*cf(0.54,0.5,0))
numb=numb-0.275
end
 
numb=0
for i=1,4 do
local Lprt7=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Left Part7",vt(1,1,1))
Lmsh7=mesh("SpecialMesh",Lprt7,"Wedge","",vt(0,0,0),vt(0.2,0.1,0.3))
local Lwld7=weld(Lprt7,Lprt7,Lprt1,euler(1.57,0,3.14)*cf(0,-0.5,0.54)*euler(0,numb,0))
numb=numb+1.57
end
 
--[[RIGHT GAUNTLET]]--
local Rprt1=part(3,modelzorz,0,0,BrickColor.new("Grey"),"Right Part1",vt(1,1,1))
local Rprt3=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Right Part3",vt(1,1,1))
local Rprt5=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Right Part5",vt(1,1,1))
local Rprt6=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Right Part6",vt(1,1,1))
local Rprt7=part(3,modelzorz,0,0,BrickColor.new("Grey"),"Right Part7",vt(1,1,1))
local Rprt8=part(3,modelzorz,0,0,BrickColor.new("Grey"),"Right Part8",vt(1,1,1))
local Rprt9=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Right Part9",vt(1,1,1))
local Rprt10=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Right Part10",vt(1,1,1))
local Rprt11=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Right Part11",vt(1,1,1))
 
Rmsh1=mesh("BlockMesh",Rprt1,"","",vt(0,0,0),vt(1.03,1,1.03))
Rmsh3=mesh("BlockMesh",Rprt3,"","",vt(0,0,0),vt(0.1,1.05,1.06))
Rmsh5=mesh("BlockMesh",Rprt5,"","",vt(0,0,0),vt(1.025,2,0.2))
Rmsh6=mesh("BlockMesh",Rprt6,"","",vt(0,0,0),vt(0.2,2,1.025))
Rmsh7=mesh("CylinderMesh",Rprt7,"","",vt(0,0,0),vt(0.4,0.2,0.4))
Rmsh8=mesh("CylinderMesh",Rprt8,"","",vt(0,0,0),vt(0.3,0.21,0.3))
Rmsh9=mesh("SpecialMesh",Rprt9,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(0.17,0.17,0.1))
Rmsh10=mesh("SpecialMesh",Rprt10,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(0.07,0.07,0.1))
Rmsh11=mesh("BlockMesh",Rprt11,"","",vt(0,0,0),vt(0.15,0.02,0.02))
 
local Rwld1=weld(Rprt1,Rprt1,RightArm,euler(0,3.14,0)*cf(0,0.51,0))
local Rwld3=weld(Rprt3,Rprt3,Rprt1,euler(0,0,0)*cf(0.3,0,0))
local Rwld5=weld(Rprt5,Rprt5,Rprt1,euler(0,0,0)*cf(0,-0.55,0))
local Rwld6=weld(Rprt6,Rprt6,Rprt1,euler(0,0,0)*cf(0,-0.55,0))
local Rwld7=weld(Rprt7,Rprt7,Rprt1,euler(0,0,1.57)*cf(0.45,-1.2,0))
local Rwld8=weld(Rprt8,Rprt8,Rprt7,euler(0,0,0)*cf(0,0,0))
local Rwld9=weld(Rprt9,Rprt9,Rprt7,euler(1.57,0,0)*cf(-0.02,0.1,0))
local Rwld10=weld(Rprt10,Rprt10,Rprt7,euler(1.57,0,0)*cf(0,0.1,0))
local Rwld11=weld(Rprt11,Rprt11,Rprt7,euler(0,0,0)*cf(0.07,0.1,0))
 
numb=0.4
for i=1,4 do
local Rprt2=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Right Part2",vt(1,1,1))
Rmsh2=mesh("BlockMesh",Rprt2,"","",vt(0,0,0),vt(1.06,1.05,0.1))
local Rwld2=weld(Rprt2,Rprt2,Rprt1,euler(0,0,0)*cf(0,0,numb))
local Rprt4=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Right Part4",vt(1,1,1))
Rmsh4=mesh("SpecialMesh",Rprt4,"Wedge","",vt(0,0,0),vt(0.09,0.1,0.3))
local Rwld4=weld(Rprt4,Rprt4,Rprt2,euler(1.57,-1.57,0)*cf(0.54,0.5,0))
numb=numb-0.275
end
 
numb=0
for i=1,4 do
local Rprt7=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Right Part7",vt(1,1,1))
Rmsh7=mesh("SpecialMesh",Rprt7,"Wedge","",vt(0,0,0),vt(0.2,0.1,0.3))
local Rwld7=weld(Rprt7,Rprt7,Rprt1,euler(1.57,0,3.14)*cf(0,-0.5,0.54)*euler(0,numb,0))
numb=numb+1.57
end
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Mechanic Gauntlets" 
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
 
function hideanim() 
equipped=false
end 
 
function equipanim() 
equipped=true
Neck.C0=necko
for i = 0,1,0.1 do 
wait() 
LW.C0=cf(-1.5,0.5,0)*euler(0.2*i,1.57*i,0)
LW.C1=cf(0, 0.5, 0)*euler(-0.2*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0.1*i,0,-0.2*i)
end
end 
 
function attackone()
attack=true
local armprt=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Part",vt(1,1,1))
armprt.Transparency=1
local armprtwld=weld(armprt,armprt,LeftArm,euler(0,0,0)*cf(0,1,0))
for i=0,1,0.2 do
wait()
ElecEffect(armprt.CFrame,1,1,1)
RootJoint.C0=RootCF*euler(0,0,0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(0.2,1.57,0)
LW.C1=cf(0, 0.5, 0)*euler(-0.2-0.4*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0.1,0,-0.2+0.8*i)
end
local boom=part(3,workspace,0,0,BrickColor.new("Really Black"),"Part",vt(1,1,1))
boom.Transparency=1
boom.Anchored=true
boom.CFrame=Head.CFrame*cf(0,-1,-4)
so("http://www.roblox.com/asset/?id=153092315",boom,1,0.5)
for i=0,1,0.2 do
wait()
ElecEffect(armprt.CFrame,1,1,1)
Neck.C0=necko*euler(0,0,0.6*i)
RootJoint.C0=RootCF*euler(0,0,0.2-0.8*i)
LW.C0=cf(-1.5,0.5,0)*euler(0.2+1.37*i,1.57,0)
LW.C1=cf(0, 0.5, 0)*euler(-0.6+0.2*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0.1,0,0.6)
end
boommsh=mesh("SpecialMesh",boom,"Sphere","",vt(0,0,0),vt(2.5,2.5,2.5))
boom.Transparency=0.5
boom.Anchored=true
boom.CFrame=Head.CFrame*cf(0,-1,-4)
Hitbox.Parent=workspace
Hitbox.CFrame=boom.CFrame
con1=Hitbox.Touched:connect(function(hit) Damagefunc1(hit,1,5,0) end) 
coroutine.resume(coroutine.create(function(Part,Mesh)
while Part.Parent~=nil do
wait()
derp=math.random()
Mesh.Scale=vt(2.5+derp,2.5+derp,2.5+derp)
ElecEffect(Part.CFrame,2,2,2)
MagicBlock(BrickColor.new("Really Black"),Part.CFrame,1,1,1,0.1,0.1,0.1)
Hitbox.CFrame=boom.CFrame*cf(math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-1,0)+math.random())
end
end),boom,boommsh)
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5,0.5,0)*euler(1.57,1.57,0)
LW.C1=cf(0, 0.5, 0)*euler(-0.4+0.1*i,0,0) 
end
coroutine.resume(coroutine.create(function(Part1,Part2,Part3,Con)
wait(2)
Con:disconnect()
Part2.Parent=nil
Part3.Parent=nil
Part1.Parent=nil
wait(1)
end),Hitbox,boom,armprt,con1)
--[[Hitbox.Parent=nil
con1:disconnect()
boom.Parent=nil
armprt.Parent=nil]]
attack=false
end
 
function attacktwo()
attack=true
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0.6-0.6*i)
RootJoint.C0=RootCF*euler(0,0,-0.6+0.6*i)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,1.57-1.57*i,0)
LW.C1=cf(0, 0.5, 0)*euler(-0.3+0.3*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0.1+1.47*i,0,0.6-0.6*i)
end
local boom=part(3,modelzorz,0,0,BrickColor.new("Really Black"),"Part",vt(1,1,1))
boom.Transparency=0.5
boommsh=mesh("SpecialMesh",boom,"Sphere","",vt(0,0,0),vt(0,0,0))
local boomwld=weld(boom,boom,Head,euler(0,0,0)*cf(0,1,4))
con1=Hitbox.Touched:connect(function(hit) Damagefunc1(hit,5,10,20) end) 
for i=0,1,0.2 do
wait()
ElecEffect(boom.CFrame,3,3,3)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,0.1*i)
RW.C0=cf(1.5,0.5,0)*euler(1.57,0,-0.1*i)
boommsh.Scale=vt(0.5*(i*3),0.5*(i*3),0.5*(i*3))
Hitbox.CFrame=boom.CFrame
end
con1:disconnect()
boomwld.Parent=nil
boom.Anchored=true
coroutine.resume(coroutine.create(function(Part)
local c=game.Workspace:GetChildren()
for i=1,#c do
local hum=c[i]:findFirstChild("Humanoid")
if hum~=nil and hum.Health~=0 then
local head=c[i]:findFirstChild("Head")
if head~=nil then
local targ=head.Position - Part.Position
local mag=targ.magnitude
if mag<=10 and c[i].Name~=Player.Name then 
attackdebounce=false
Damagefunc1(head,10,20,70)
end
end
end
end
so("http://www.roblox.com/asset/?id=2974249",Part,1,1) 
so("http://www.roblox.com/asset/?id=1369158",Part,1,2) 
numb=0
for i=0,20 do
wait()
MagicBlock(BrickColor.new("Really Black"),Part.CFrame,0.5,0.5,0.5,1,1,1)
if numb>=8 then
MagicRing(BrickColor.new("Really Black"),Part.CFrame,1,1,1,math.random(-50,50),math.random(-50,50),math.random(-50,50),0.5,0.5,0.5)
numb=0
end
numb=numb+1
end
end),boom)
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,0.1-0.7*i)
RW.C0=cf(1.5,0.5,0)*euler(1.57,0,-0.1+0.7*i)
end
wait(0.2)
boom.Parent=nil
attack=false
end
 
function attackthree()
attack=true
for i=0,1,0.1 do
wait()
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i,0,-0.6)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i,0,0.6)
end
so("http://www.roblox.com/asset/?id=153092348",Torso,1,1) 
vel=Instance.new("BodyVelocity")
vel.Parent=RootPart
vel.maxForce=vt(4e+005,4e+005,4e+005)*1
vel.velocity=Head.CFrame.lookVector*50
ArmHit=false
armcon=RightArm.Touched:connect(function(hit) 
if hit~=nil and hit.Parent:findFirstChild("Humanoid")~=nil and ArmHit==false then
vel.Parent=nil
ArmHit=true
print("HITTED")
Damagefunc1(hit,10,30,20)
MagicBlock(BrickColor.new("Really Black"),hit.CFrame*cf(0,-1,0),0.5,0.5,0.5,1,1,1)
for i=1,3 do
Lightning(hit.Position,hit.Position+vt(math.random(-10,10),math.random(-10,10),math.random(-10,10)),5,1,"Really Black",0.3,0.1)
end
so("http://www.roblox.com/asset/?id=153092334",Torso,1,1) 
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,-1+2*i)
RootJoint.C0=RootCF*euler(0,0,1-2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.6)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.77*i,0,1)
end
wait(0.4)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,1-1*i)
RootJoint.C0=RootCF*euler(0,0,-1+1*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.4*i,1.57*i,-0.6+0.6*i)
LW.C1=cf(0, 0.5, 0)*euler(-0.2*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(-0.2+0.3*i,0,1-1.2*i)
end
end
end) 
for i=0,1,0.2 do
wait()
MagicBlock(BrickColor.new("Really Black"),RightArm.CFrame*cf(0,-2.5,0),0.5,0.5,0.5,0.6,0.6,0.6)
Neck.C0=necko*euler(0,0,-1*i)
RootJoint.C0=RootCF*euler(0,0,1*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i,0,-0.6)
RW.C0=cf(1.5,0.5,0)*euler(1.57*i,0,0.6+0.4*i)
end
for i=0,1,0.1 do
wait()
MagicBlock(BrickColor.new("Really Black"),RightArm.CFrame*cf(0,-2.5,0),0.5,0.5,0.5,0.6,0.6,0.6)
end
vel.Parent=nil
wait(0.5)
if ArmHit==false then
armcon:disconnect()
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1+1*i)
RootJoint.C0=RootCF*euler(0,0,1-1*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.4*i,1.57*i,-0.6+0.6*i)
LW.C1=cf(0, 0.5, 0)*euler(-0.2*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.47*i,0,1-1.2*i)
end
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
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,.4)
end
end
 
function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,0,0,BrickColor.new("Really Black"),"Part",vt(1,1,1))
prt.Anchored=true
xval=math.random()
yval=math.random()
zval=math.random()
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=Frame*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=1,10 do
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
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
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
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
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
 
Damagefunc1=function(hit,minim,maxim,Knockback)
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
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                print(block.Value)
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor:Red())
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,1,.5,BrickColor.new("Grey"))
                end
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
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
 
function ob1d(mouse) 
if attack == true then return end 
hold=true
if combo==0 then
combo=1
attackone()
elseif combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=3
attackthree()
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
Neck.C0=necko
RootJoint.C0=RootCF
LW.C0=cf(-1.5,0.5,0)*euler(0.2,1.57,0)
LW.C1=cf(0, 0.5, 0)*euler(-0.2,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0.1,0,-0.2)
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
function key(key) 
if attack == true then return end 
if key=="z" then
for i=1,5 do
ElecEffect(Torso.CFrame,5,5,5)
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
hideanim() 
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
--[[function onRunning(speed)
if attack==true then return end
        if speed>0 then 
walking = true 
for i = 0,1,0.1 do 
wait() 
LW.C0=cf(-1.5,0.5,0)*euler(0.2-0.4*i,1.57,0)
end
        else 
walking = false 
for i = 0,1,0.1 do 
wait() 
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.4*i,1.57,0)
end
        end  
end
Character.Humanoid.Running:connect(onRunning) ]]
Anim="Idle"
Switching=false
while true do
wait()
        local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
        if RootPart.Velocity.y > 2 then 
        if Anim~="Jump" then
        Anim="Jump"
        end
        elseif RootPart.Velocity.y < -2 then 
        if Anim~="Fall" then
        Anim="Fall"
        end
        elseif torvel < 1 then 
        if Anim~="Idle" then
        Anim="Idle"
coroutine.resume(coroutine.create(function()
while Anim=="Idle" do
for i = 0,1,0.02 do 
if Anim=="Idle" and attack==false then
wait() 
LW.C0=cf(-1.5,0.5,0)*euler(0.2-0.1*i,1.57-0.05*i,0)
RW.C0=cf(1.5,0.5-0.1*i,0)*euler(0.1+0.1*i,0,-0.2)
end
end
for i = 0,1,0.02 do 
if Anim=="Idle" and attack==false then
wait() 
LW.C0=cf(-1.5,0.5,0)*euler(0.1+0.1*i,1.52+0.05*i,0)
RW.C0=cf(1.5,0.4+0.1*i,0)*euler(0.2-0.1*i,0,-0.2)
end
end
wait(0)
end
if Anim=="Walk" then
print("Switch to Walk")
Switching=true
for i=0,1,0.1 do
wait()
LW.C0=cf(-1.5,0.5,0)*euler(0.2+0.8*i,1.57-1.57*i,0)
LW.C1=cf(0, 0.5, 0)*euler(-0.2+0.2*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0.1-0.9*i,0,-0.2+0.2*i)
end
Switching=false
end
end))
        end
        elseif torvel < 19 then 
        if Anim~="Walk" then
        Anim="Walk"
coroutine.resume(coroutine.create(function()
wait(0.1)
while Switching==true do
wait()
end
while Anim=="Walk" do
for i=0,1,0.1 do
if Anim=="Walk" and attack==false then
wait()
LW.C0=cf(-1.5,0.5,0)*euler(1-2*i,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-1+2*i,0,0)
end
end
for i=0,1,0.1 do
if Anim=="Walk" and attack==false then
wait()
LW.C0=cf(-1.5,0.5,0)*euler(-1+2*i,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1-2*i,0,0)
end
end
wait(0)
end
end))
        end
        elseif torvel >= 19 then 
        if Anim~="Run" then
        Anim="Run"
        end 
        end
 
end
print("Mechanic Gauntlets loaded.")
 
--[[ 
Copyrighted (C) Fenrier 2014
]] 