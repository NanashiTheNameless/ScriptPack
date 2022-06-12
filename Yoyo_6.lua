--[[
Yoyo script made by ME :P
]] 
Player = game:GetService("Players").anton20
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
GyroNumb=0
cond=nil
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
if Character:findFirstChild("Yoyo",true) ~= nil then 
Character:findFirstChild("Yoyo",true).Parent = nil 
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
modelzorz.Name = "Yoyo" 
 
local prt1=part(3,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
prt1.CanCollide=true
 
local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.4,0.3,0.4))
 
local wld1=weld(prt1,prt1,Torso,euler(1.57,0,0)*cf(-1,1,-0.6))
 
numb=-0.15
for i=1,2 do
local prt2=part(3,modelzorz,0,0,BrickColor.new("Lime green"),"Part2",vt(1,1,1))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(0.6,0.1,0.6))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,numb,0))
numb2=0
for i=1,16 do
local prt3=part(3,modelzorz,0.5,0,BrickColor.new("Lime green"),"Part3",vt(1,1,1))
local msh3=mesh("SpecialMesh",prt3,"Wedge","",vt(0,0,0),vt(0.05,0.1,0.1))
local wld3=weld(prt3,prt3,prt2,euler(-3.14+0.785,0,1.57)*cf(0,0,0.3))
wld3.C1=euler(0,numb2,0)
--numb2=numb2+0.785
numb2=numb2+0.3925
end
numb=numb+0.3
end
 
local string1=part(3,modelzorz,0,0,BrickColor.new("Lime green"),"String1",vt(1,1,1))
local stringmsh1=mesh("CylinderMesh",string1,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld1=weld(string1,string1,prt13,euler(0,0,0)*cf(0,0,0))
 
local strmdl = "Arrow"
coroutine.resume(coroutine.create(function()
repeat
wait(-10)
local top = RightArm.CFrame*cf(0,-1,0)
local bottom = prt1.CFrame
local oristrpos
if strmdl == "Bow" then
oristrpos = CFrame.new((top.p+bottom.p)/2)
elseif strmdl == "Arrow" then
oristrpos = prt1.CFrame
end
local mg1 = (top.p - oristrpos.p).magnitude
local mg2 = (bottom.p - oristrpos.p).magnitude
 
string1.Size = Vector3.new(0.2,mg1,0.2)
string1.Anchored=true
string1.CFrame = CFrame.new((top.p+oristrpos.p)/2,oristrpos.p) * CFrame.Angles(math.rad(90),0,0)
 
--[[
--stringmsh1.Scale=vt(0.1,1,0.1)
stringmsh1.Scale=vt(0.1,mg1,0.1)
--cff=CFrame.new(prt1.CFrame.p,RightArm.Position)*angles(math.rad(90),0,0)*cf(0,-mg1/2,0)
cff=cf(RightArm.CFrame*cf(0,-1,0).p,prt1.Position)*angles(math.rad(90),0,0)*cf(0,-mg1/2,0)
hit2=string1
hit=prt1
stringwld1.Parent=string1
stringwld1.Part0=hit2
stringwld1.Part1=hit
HitPos=cff.p
local CJ = CFrame.new(HitPos)
local C0=cff:inverse() *CJ 
local C1=hit.CFrame:inverse() * CJ 
stringwld1.C0=C0
stringwld1.C1=C1
]]
until false
end))
 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Yoyo" 
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
wld1.C0=euler(1.57,0,0)*cf(-1,1,-0.6)
end 
 
function equipweld() 
wld1.Part1=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
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
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
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
local prt=part(3,workspace,1,0,BrickColor.new("Lime green"),"Part",vt(1,1,1))
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
--                rl.Parent=hit
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
 
function oneslash()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5*i,0,0)
end
for i=0,1,0.2 do
wait()
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
Neck.C0=necko*euler(0,0,0.785-2.355*i)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5+0.5*i,0,-offset)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2-1.37*i)
end
wait(0.2)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
prt1.Velocity=vt(0,0,0)
wld1.Parent=nil
local baseprt=part(3,workspace,0,1,BrickColor.new("Black"),"BasePart",vt(1,1,1))
--[[local hit,pos = rayCast(prt1.Position,MMouse.Hit.p,100,game) 
local hit,pos = game.Workspace:FindPartOnRay(Ray.new(prt1.Position, MMouse.Hit.p.unit * (100)), workspace) 
print(pos)
print(hit)
baseprt.CFrame=CFrame.new(pos)]]
baseprt.CFrame=RightArm.CFrame*cf(0,-70,0)
fd=Instance.new("BodyPosition")
fd.P=200
fd.D=60
fd.maxForce=Vector3.new(math.huge,math.huge,math.huge)
fd.position=baseprt.Position
fd.Parent=prt1
coroutine.resume(coroutine.create(function(BodyPos)
while fd.Parent~=nil do
wait()
so("http://roblox.com/asset/?id=10209640",prt1,0.4,3) 
end
end),fd)
con1=prt1.Touched:connect(function(hit) 
if hit==baseprt then
coroutine.resume(coroutine.create(function(BodyPos)
for i=1,20 do
wait(0)
BodyPos.position=RightArm.Position
end
end),fd)
con1:disconnect()
con2=prt1.Touched:connect(function(hit) 
if hit==RightArm then
fd.Parent=nil
wld1.Parent=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
con2:disconnect()
end
end)
end
end) 
cond=prt1.Touched:connect(function(hit) Damagefunc1(hit,10,20) end) 
wait(0.5)
coroutine.resume(coroutine.create(function(BodyPos)
for i=1,20 do
wait(0)
BodyPos.position=RightArm.Position
end
end),fd)
wait(1)
cond:disconnect()
fd.Parent=nil
wld1.Parent=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
baseprt.Parent=nil
attack=false
end
 
function YoyoGrab()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5*i,0,0)
end
for i=0,1,0.2 do
wait()
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
Neck.C0=necko*euler(0,0,0.785-2.355*i)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5+0.5*i,0,-offset)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2-1.37*i)
end
wait(0.2)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
prt1.Velocity=vt(0,0,0)
wld1.Parent=nil
local baseprt=part(3,workspace,0,1,BrickColor.new("Really black"),"BasePart",vt(1,1,1))
--[[local hit,pos = rayCast(prt1.Position,MMouse.Hit.p,100,game) 
local hit,pos = game.Workspace:FindPartOnRay(Ray.new(prt1.Position, MMouse.Hit.p.unit * (100)), workspace) 
print(pos)
print(hit)
baseprt.CFrame=CFrame.new(pos)]]
baseprt.CFrame=RightArm.CFrame*cf(0,-200,0)
fd=Instance.new("BodyPosition")
fd.P=200
fd.D=60
fd.maxForce=Vector3.new(math.huge,math.huge,math.huge)
fd.position=baseprt.Position
fd.Parent=prt1
coroutine.resume(coroutine.create(function(BodyPos)
while fd.Parent~=nil do
wait()
so("http://roblox.com/asset/?id=10209640",prt1,0.4,3) 
end
end),fd)
coroutine.resume(coroutine.create(function()
wait(0.1)
con1=prt1.Touched:connect(function(hit) 
if hit.Name~="String1" then
fd.Parent=nil
prt1.Anchored=true
fddd=Instance.new("BodyPosition")
fddd.P=2000
fddd.D=600
fddd.maxForce=Vector3.new(math.huge,math.huge,math.huge)
fddd.position=prt1.Position
fddd.Parent=RightArm
coroutine.resume(coroutine.create(function(BodyPos)
wait(1)
prt1.Anchored=false
wld1.Parent=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
BodyPos.Parent=nil
end),fddd)
end
end) 
end))
cond=prt1.Touched:connect(function(hit) Damagefunc1(hit,10,20) end) 
wait(2)
con1:disconnect()
coroutine.resume(coroutine.create(function(BodyPos)
for i=1,20 do
wait(0)
BodyPos.position=RightArm.Position
end
end),fd)
wait(1)
cond:disconnect()
fd.Parent=nil
wld1.Parent=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
baseprt.Parent=nil
attack=false
end
 
function ob1d(mouse) 
if attack == true then return end 
attack=true
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while attack==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
--[[Neck.C0=necko*euler(0,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)]]
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(0,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
bg.Parent=nil
end
end))
hold=true
oneslash()
--twoslash()
end 
 
function ob1u(mouse) 
hold = false 
 
end 
 
buttonhold = false 
 
eul=0
function key(key) 
if attack == true then return end 
if key=="z" or key=="x" or key=="c" or key=="v" then
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
attack=true
while attack==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
--[[Neck.C0=necko*euler(0,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)]]
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(0,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
bg.Parent=nil
end
end))
end
if key=="z" then
YoyoGrab()
end
if key=="x" then
--SonicExplosion()
end
if key=="c" then
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
print("Yoyo loaded.")