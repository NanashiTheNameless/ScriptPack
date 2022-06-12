--[[
The Swarm Script made by Fenrier.
]] 
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
--[[LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck]]
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
bossname="Swarm"
attackdebounce=false
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size,cframe)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = true 
fp.Locked=true
fp.Anchored=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.CFrame=cframe
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
 
if workspace:findFirstChild(bossname,true) ~= nil then 
--workspace:findFirstChild(bossname,true).Parent = nil 
end 
 
local Boss = Instance.new("Model") 
Boss.Parent = workspace
Boss.Name = bossname
script.Parent=Boss
Humanoid=Instance.new("Humanoid")
Humanoid.Parent=Boss
Humanoid.MaxHealth=2000
Humanoid.Health=2000
coroutine.resume(coroutine.create(function() 
wait(1)
for i=0,30 do
wait(0)
Humanoid.Health=2000
Humanoid:TakeDamage(0.1)
end
end))
 
CF=cf(-50,18,200)
--CF=Torso.CFrame*cf(0,5,0)
local prt1=part(3,Boss,0,0,BrickColor.new("Really black"),"Torso",vt(20,20,20),CF)
prt1.Anchored=true
local prt2=part(3,Boss,0,0,BrickColor.new("Black"),"Head",vt(15,15,15),prt1.CFrame*cf(0,22.5,0))
prt2.Shape=0
prt2.CFrame=prt1.CFrame*cf(0,22.5,0)
local prt4=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,1,1),prt1.CFrame*cf(10,-5,0))
local prt5=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,1,1),prt1.CFrame*cf(-10,-5,0))
local prt6=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,1,1),prt1.CFrame*euler(0,1.57,0)*cf(-10,-5,0))
local prt7=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,1,1),prt1.CFrame*euler(0,1.57,0)*cf(10,-5,0))
local prt9=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(1,1,1),prt1.CFrame*cf(10,10,10)*euler(0,0.785,0))
local prt10=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,10,1),prt9.CFrame*euler(1,0,0)*cf(0,5,0))
local prt11=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(1,1,1),prt1.CFrame*cf(10,10,-10)*euler(0,2.355,0))
local prt12=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,10,1),prt11.CFrame*euler(1,0,0)*cf(0,5,0))
local prt13=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(1,1,1),prt1.CFrame*cf(-10,10,10)*euler(0,-0.785,0))
local prt14=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,10,1),prt13.CFrame*euler(1,0,0)*cf(0,5,0))
local prt15=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(1,1,1),prt1.CFrame*cf(-10,10,-10)*euler(0,-2.355,0))
local prt16=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,10,1),prt15.CFrame*euler(1,0,0)*cf(0,5,0))
local prt17=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(1,1,1),prt10.CFrame*euler(0,0,0)*cf(0,5,0))
local prt18=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,10,1),prt17.CFrame*euler(-2,0,0)*cf(0,5,0))
local prt19=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(1,1,1),prt12.CFrame*euler(0,0,0)*cf(0,5,0))
local prt20=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,10,1),prt19.CFrame*euler(-2,0,0)*cf(0,5,0))
local prt21=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(1,1,1),prt14.CFrame*euler(0,0,0)*cf(0,5,0))
local prt22=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,10,1),prt21.CFrame*euler(-2,0,0)*cf(0,5,0))
local prt23=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(1,1,1),prt16.CFrame*euler(0,0,0)*cf(0,5,0))
local prt24=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(1,10,1),prt23.CFrame*euler(-2,0,0)*cf(0,5,0))
 
msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(1,1,1))
msh4=mesh("SpecialMesh",prt4,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(20,20,20))
msh5=mesh("SpecialMesh",prt5,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(20,20,20))
msh6=mesh("SpecialMesh",prt6,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(20,20,20))
msh7=mesh("SpecialMesh",prt7,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(20,20,20))
 
local wld1=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,-22.5,0))
 
numb=0
numb2=0
for i=1,8 do
local prt3=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(25+numb,1,25+numb),prt1.CFrame*cf(0,-10-numb2,0))
prt3.Anchored=true
numb=numb+5
numb2=numb2+1
end
numb=0
for i=1,10 do
local cprt1=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(5,1,5),prt4.CFrame*euler(0,0,-1+numb)*cf(10,0,0))
cmsh1=mesh("CylinderMesh",cprt1,"","",vt(0,0,0),vt(1,1,1))
local cprt2=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(5,1,5),prt5.CFrame*euler(0,0,1-numb)*cf(-10,0,0))
cmsh2=mesh("CylinderMesh",cprt2,"","",vt(0,0,0),vt(1,1,1))
local cprt3=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(5,1,5),prt6.CFrame*euler(0,0,1-numb)*cf(-10,0,0))
cmsh3=mesh("CylinderMesh",cprt3,"","",vt(0,0,0),vt(1,1,1))
local cprt4=part(3,Boss,0,0,BrickColor.new("Really black"),"Part",vt(5,1,5),prt7.CFrame*euler(0,0,-1+numb)*cf(10,0,0))
cmsh4=mesh("CylinderMesh",cprt4,"","",vt(0,0,0),vt(1,1,1))
numb=numb+0.3
end
 
function SwarmEffect(cframe,x1,x2,y1,y2,z1,z2,size)
--swrmcf=prt1.CFrame*cf(math.random(-70,70),math.random(0,70),math.random(-70,70))
swrmcf=cframe*cf(math.random(x1,x2),math.random(y1,y2),math.random(z1,z2))
local swrmprt1=part(3,Boss,0,0,BrickColor.new("Really black"),"SwarmPart",vt(1,1,1),swrmcf)
swrmmsh1=mesh("BlockMesh",swrmprt1,"","",vt(0,0,0),vt(1,1,1))
coroutine.resume(coroutine.create(function(Part,Mesh,swCFrame)
for i=1,math.random(5,20) do
wait(0)
Part.CFrame=swCFrame
Mesh.Scale=vt(math.random(1,size),math.random(1,size),math.random(1,size))
end
Part.Parent=nil
end),swrmprt1,swrmmsh1,swrmcf)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x2,y2,z2)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5),cf(0,0,0))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
prt.Transparency=i
msh.Scale=msh.Scale+vt(0.2,0.2,0.2)
end
prt.Parent=nil
end))
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5),cf(0,0,0))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end
 
function SwarmAttack()
HeadEffectt()
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - prt1.Position;
local mag = targ.magnitude;
if mag <= 100 and c[i].Name~=Boss.Name and c[i].Name~="Swarm Warrior" then 
for i=1,4 do
HitPart=head
local swrmatkprt=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(5,5,5),prt2.CFrame)
swrmatkprt.Anchored=false
swrmatkprt.CanCollide=false
swrmatkmsh=mesh("SpecialMesh",swrmatkprt,"Sphere","",vt(0,0,0),vt(1,1,1))
coroutine.resume(coroutine.create(function(Part,Body)
f=Instance.new("BodyPosition")
f.P=9999
f.D=999
f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
f.position=prt2.Position+Vector3.new(math.random(-40,40),math.random(0,20),math.random(-40,40))
f.Parent=Part
coroutine.resume(coroutine.create(function(BodPos)
wait(1)
BodPos.position=Body.Position+vt(math.random(-10,10),math.random(-10,10),math.random(-10,10))
end),f)
wait(2)
Part.Parent=nil
MagicCircle(BrickColor.new("Really black"),Part.CFrame,10,10,10,0,0,0,1,1,1)
for i=1,3 do
MagicBlock(BrickColor.new("Really black"),Part.CFrame,3,3,3,math.random(-5,5),math.random(-5,5),math.random(-5,5))
end
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - Part.Position;
local mag = targ.magnitude;
if mag <= 10 and c[i].Name~=Boss.Name and c[i].Name~="Swarm Warrior" then 
attackdebounce=false
Damagefunc1(head,10,10)
end 
end 
end 
end 
end),swrmatkprt,head)
end
end 
end 
end 
end 
end
 
function SpawnWarrior()
HeadEffectt()
for i=1,4 do
HitPart=head
local swrmatkprt=part(3,Boss,0,0,BrickColor.new("Black"),"Part",vt(5,5,5),prt2.CFrame)
swrmatkprt.Anchored=false
swrmatkprt.CanCollide=false
swrmatkmsh=mesh("SpecialMesh",swrmatkprt,"Sphere","",vt(0,0,0),vt(1,1,1))
coroutine.resume(coroutine.create(function(Part)
f=Instance.new("BodyPosition")
f.P=9999
f.D=999
f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
f.position=prt2.Position+Vector3.new(math.random(-60,60),math.random(0,20),math.random(-60,60))
f.Parent=Part
wait(1)
for i=1,20 do
wait()
SwarmEffect(Part.CFrame,-2,2,-2,2,-2,2,15)
end
MakeNoob(Part.Position,0.5)
Part.Parent=nil
end),swrmatkprt)
end
end
 
function HeadEffectt()
HeadEffect=prt2:Clone()
HeadEffect.Parent=Boss
HeadEffect.CFrame=prt2.CFrame
HeadMesh=mesh("SpecialMesh",HeadEffect,"Sphere","",vt(0,0,0),vt(1,1,1))
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.05 do
wait(0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.2,0.2,0.2)
end
Part.Parent=nil
end),HeadEffect,HeadMesh)
end
 
 
 
function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)
        local p = Instance.new("Part")
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Transparency = Tran
        p.Reflectance = Ref
        p.CanCollide = Coll
        p.Anchored = Anch
        p.BrickColor = BrickColor.new(Col)
        p.formFactor = "Custom"
        p.Size = Vector3.new(X,Y,Z)
        p.Parent = P
        p.Locked = true
        p:BreakJoints()
        return p
end
 
function Weld(P0, P1, X, Y, Z, A, B, C)
        local w = Instance.new("Weld")
        w.Part0 = P0
        w.Part1 = P1
        w.C1 = CN(X, Y, Z) * CA(A, B, C)
        w.Parent = P0
        return w
end
 
CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge
 
Asset = "http://www.roblox.com/asset/?id="
Noob = nil
 
function MakeMotor(torso, p1, c0, c1)
        local mot = Instance.new("Motor6D")
        mot.C0 = c0
        mot.C1 = c1
        mot.Part0 = torso
        mot.Part1 = p1
        mot.Parent = torso
        return mot
end
 
function Set(tab)
        for _,v in pairs(tab) do
                local motor = v[1]
                local vel = v[2]
                local des = v[3]
                motor.MaxVelocity = vel
                motor.DesiredAngle = des
        end
end
 
maxhealth=100
walkspeed=10
mindamage=1
maxdamage=10
distance=1000
CharName="Swarm Warrior"
armcolor="Really black"
legcolor="Really black"
torsocolor="Black"
headcolor="Really black"
function MakeNoob(pos, scale)
        local Nub = Instance.new("Model")
        Nub.Name = CharName
        Noob = Nub
        local Torso = Part(Nub, false, false, 0, 0, torsocolor, 2*scale, 2*scale, 1*scale)
        Torso.Name = "Torso"
        local Head = Part(Nub, false, false, 0, 0, headcolor, 2*scale, 1*scale, 1*scale)
        Head.Name = "Head"
        local Neck = MakeMotor(Torso, Head, CN(0, 1*scale, 0), CN(0, -0.5*scale, 0))
        local HeadMesh = Instance.new("SpecialMesh",Head)
        HeadMesh.Scale = V3(1.25, 1.25, 1.25)
        local Rarm = Part(Nub, false, false, 0, 0, armcolor, 1*scale, 2*scale, 1*scale)
        Rarm.Name = "Right Arm"
        local Larm = Part(Nub, false, false, 0, 0, armcolor, 1*scale, 2*scale, 1*scale)
        Larm.Name = "Left Arm"
        local Rleg = Part(Nub, false, false, 0, 0, legcolor, 1*scale, 2*scale, 1*scale)
        Rleg.Name = "Right Leg"
        local Lleg = Part(Nub, false, false, 0, 0, legcolor, 1*scale, 2*scale, 1*scale)
        Lleg.Name = "Left Leg"
 
con1=Torso.Touched:connect(function(hit) Damagefunc1(hit,mindamage*scale,maxdamage*scale,10) end) 
 
local larm = Larm
local rarm = Rarm
 
function findNearestTorso(pos)
        local list = game.Workspace:children()
        local torso = nil
        local dist = distance
        local temp = nil
        local human = nil
        local temp2 = nil
        for x = 1, #list do
                temp2 = list[x]
                if (temp2.className == "Model") and (temp2 ~= Nub) and (temp2.Name~=CharName) and (temp2.Name~="Swarm") then
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
 
        local RSH = MakeMotor(Torso, Rarm, CN(1*scale, 0.5*scale, 0) * CA(0, MR(90), 0), CN(-0.5*scale, 0.5*scale, 0) * CA(0, MR(90), 0))
        RSH.Name="Right Shoulder"
        local LSH = MakeMotor(Torso, Larm, CN(-1*scale, 0.5*scale, 0) * CA(0, MR(-90), 0), CN(0.5*scale, 0.5*scale, 0) * CA(0, MR(-90), 0))
        LSH.Name="Left Shoulder"
        local RH = MakeMotor(Torso, Rleg, CN(0.5*scale, -1*scale, 0) * CA(0, MR(-90), 0), CN(0, 1*scale, 0) * CA(0, MR(-90), 0))
        RH.Name="Right Hip"
        local LH = MakeMotor(Torso, Lleg, CN(-0.5*scale, -1*scale, 0) * CA(0, MR(90), 0), CN(0, 1*scale, 0) * CA(0, MR(90), 0))
        LH.Name="Left Hip"
        local Hum = Instance.new("Humanoid")
        Hum.MaxHealth = maxhealth
        Hum.Health = Hum.MaxHealth
        Hum.WalkSpeed = walkspeed
coroutine.resume(coroutine.create(function() 
for i=1,30 do
wait(0)
Hum.MaxHealth = maxhealth
Hum.Health = maxhealth
end
Hum:TakeDamage(1)
Hum.Health=Hum.MaxHealth
end))
coroutine.resume(coroutine.create(function(Humanoidd,Tors)
while Humanoidd.Health>0 do
wait(math.random(0,2)+math.random())
for i=1,math.random(1,3) do
SwarmEffect(Tors.CFrame,-5*scale,5*scale,-5*scale,5*scale,-5*scale,5*scale,5*scale)
end
end
end),Hum,Torso)
coroutine.resume(coroutine.create(function(Humanoid)
wait(1)
Humanoid.Health=Humanoid.MaxHealth
Humanoid:TakeDamage(1)
end),Hum)
        Hum.Parent = Nub
        Nub.Parent = workspace
        Nub:MakeJoints()
        Nub:MoveTo(pos)
--        Animate(Hum,RSH,LSH,RH,LH)
        coroutine.resume(coroutine.create(function(Character)
        local con1=nil
        while Character.Parent~=nil do
        wait()
        target = findNearestTorso(Character.Torso.Position)
        if target~=nil then
        Character.Humanoid:MoveTo(target.Position, target)
        local targ = target.Position - Torso.Position
        local magni = targ.magnitude 
        end
        end
        end),Nub)
        Hum.Died:connect(function()
        Hum.Parent=nil
        coroutine.resume(coroutine.create(function(Character)
c=Character:children()
Torso=Character.Torso
for i=1,#c do
if c[i].className=="Part" then
coroutine.resume(coroutine.create(function(Part)
Part.CanCollide=false
Part.Anchored=true
for i=0,1,0.05 do
wait()
if math.random(1,20)==1 then
SwarmEffect(Torso.CFrame,-5,5,-5,5,-5,5,15)
end
Part.Transparency=i
end
Part.Transparency=1
end),c[i])
end
end
end),Nub)
                wait(6)
                Nub:remove()
        end)
        return Nub
end
 
 
Damagefunc1=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and h.Parent.Name~="Swarm" and h.Parent.Name~="Swarm Warrior" then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
                Damage=Damage+math.random(0,10)
--                h:TakeDamage(Damage)
--                showDamage(hit.Parent,Damage,.5)
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
                showDamage(hit.Parent,Damage,.5)
                else
                h:TakeDamage(1)
                showDamage(hit.Parent,1,.5)
                end
                if h.Health<=0 and h.Parent:findFirstChild("Torso")~=nil then
                print("ded")
                coroutine.resume(coroutine.create(function(TorsPart)
                child=TorsPart.Parent:children()
                for i=1,#child do
                if child[i].Name~="Torso" and child[i].className~="Humanoid" then
                child[i].Parent=nil
                end
                end
                TorsPart.Anchored=true
                TorsPart.Transparency=1
                for i=1,30 do
                wait(0)
                SwarmEffect(TorsPart.CFrame,-2,2,-2,2,-2,2,15)
                end
                TorsPart.Parent=nil
                MakeNoob(TorsPart.Position,1)
                end),h.Parent.Torso)
                end
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
 
showDamage=function(Char,Dealt,du)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        hu=Instance.new("Humanoid")
        hu.Health=0
        hu.MaxHealth=0
        hu.Parent=m
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
 
coroutine.resume(coroutine.create(function()
while Humanoid.Health>0 do
wait(math.random(0,2)+math.random())
for i=1,math.random(1,3) do
SwarmEffect(prt1.CFrame,-70,70,-20,70,-70,70,20)
end
end
c=Boss:children()
Boss.Humanoid.Parent=nil
for i=1,#c do
if c[i].Name=="Head" then 
c[i].Anchored=false 
coroutine.resume(coroutine.create(function(Part)
while Part.Parent~=nil do
wait(math.random(0,2)+math.random())
SwarmEffect(Part.CFrame,-10,10,-10,10,-10,10,5)
end
end),c[i])
end
if c[i].className=="Part" and c[i].Name~="Head" then
coroutine.resume(coroutine.create(function(Part)
Part.CanCollide=false
Part.Anchored=true
for i=0,1,0.05 do
wait()
if math.random(1,50)==1 then
SwarmEffect(prt1.CFrame,-40,40,-40,40,-40,40,20)
end
Part.Transparency=i
end
Part.Parent=nil
end),c[i])
end
end
print("DED")
end))
 
warriordebounce=false
while Humanoid.Health>0 do
wait(4)
c=math.random(1,5)
print(c)
if c~=1 then
SwarmAttack()
else
if warriordebounce==false then
warriordebounce=true
SpawnWarrior()
coroutine.resume(coroutine.create(function()
wait(60)
warriordebounce=false
end))
else
SwarmAttack()
end
end
end
--[[while true do
wait(2)
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - prt1.Position;
local mag = targ.magnitude;
if mag <= 100 then 
print(head.Parent)
end 
end 
end 
end 
end]]
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2013
]]