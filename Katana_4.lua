--[[
]] 
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
damage = 40
oridamage = 30
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
if Character:findFirstChild("Sword",true) ~= nil then 
Character:findFirstChild("Sword",true).Parent = nil 
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
modelzorz.Name = "Sword" 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part2",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Gold"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Gold"),"Part3",vt(1,1,1))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Gold"),"Part4",vt(1,1,1))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Gold"),"Part5",vt(1,1,1))
local prt6=part(3,modelzorz,0.3,0,BrickColor.new("Gold"),"Part6",vt(1,2,1))
local prt7=part(3,modelzorz,0.3,0,BrickColor.new("Gold"),"Part7",vt(1,2,1))
local prt8=part(3,modelzorz,0.3,0,BrickColor.new("Gold"),"Part8",vt(1,1,1))
local prt9=part(3,modelzorz,0.3,0,BrickColor.new("Gold"),"Part9",vt(1,1,1))
local prt10=part(3,modelzorz,0,0.5,BrickColor.new("Gold"),"Part10",vt(1,1,1))
coroutine.resume(coroutine.create(function()
while true do
wait(0)
for i=0.5,0.9,0.01 do
wait()
prt10.Transparency=i
end
for i=0.9,0.5,-0.01 do
wait()
prt10.Transparency=i
end
end
end))
local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.3,1,0.3))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.1,0.5,0.1))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(0.1,0.5,0.1))
local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(0.6,0.1,0.3))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.4,0.1,0.5))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.4,1.5,0.05))
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(0.21,1.5,0.06))
local msh8=mesh("SpecialMesh",prt8,"Wedge","",vt(0,0,0),vt(0.05,0.4,0.4))
local msh9=mesh("SpecialMesh",prt9,"Wedge","",vt(0,0,0),vt(0.06,0.21,0.4))
local msh10=mesh("SpecialMesh",prt10,"Sphere","",vt(0,0,0),vt(1.5,1.5,1.5))
local wld1=weld(prt1,prt1,Torso,euler(0,0,0)*cf(-0.5,-2,-0.5))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,-0.7,0))
local wld3=weld(prt3,prt3,prt1,euler(0,0,1.57)*cf(0,-0.7,0))
local wld4=weld(prt4,prt4,prt1,euler(0,0,0)*cf(0,0.5,0))
local wld5=weld(prt5,prt5,prt4,euler(0,0,0)*cf(0,0,0))
local wld6=weld(prt6,prt6,prt5,euler(0,0,0)*cf(0,1.5,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(-0.1,0,0))
local wld8=weld(prt8,prt8,prt6,euler(1.57,-1.57,0)*cf(0,1.7,0))
local wld9=weld(prt9,prt9,prt7,euler(1.57,-1.57,0)*cf(0,1.7,0))
local wld10=weld(prt10,prt10,LeftArm,euler(0,0,0)*cf(0,1,0))
derp=-0.4
for i=1,5 do
local prt=part(3,modelzorz,0,0,BrickColor.new("Gold"),"Part",vt(1,1,1))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(0.25,0.1,0.25))
local wld=weld(prt,prt,prt1,euler(0,0.785,0)*cf(0,derp,0))
derp=derp+0.2
end
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Katana" 
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
wld1.C0=euler(0,0,0)*cf(-0.5,-2,-0.5)
end 
function equipweld() 
wld1.Part1=RightArm
wld1.C0=euler(-1.57,0,-1.57)*cf(0,1,0)
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
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end 
function Charge()
attack=true
SpecialEffect() 
for i=0,1,0.1 do
wait()
eul=1*i
Torso.Neck.C0=necko*euler(0,0,-1*i)
RW.C0=cf(1.5-1*i, 0.5, -1*i) * euler(1+0.2*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4-2*i,-0.2+1.77*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
wait(0.3)
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = vt(4e+005,4e+005,4e+005)*1
vel2.velocity = Head.CFrame.lookVector*100
local LastPoint = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
con1=prt7.Touched:connect(function(hit) Damagefunc2(hit,40,80) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
for i=0,1,0.2 do
wait()
wld1.C0=euler(-1.57,-1.57*i,-1.57)*cf(0,1,0)
RW.C0=cf(0.5+1*i, 0.5, -1+1*i) * euler(1.2,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.4+1.5*i,1.57-3.14*i)
local Point = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
effect("Gold ",0.5,LastPoint,Point)
LastPoint = Point
end
con1:disconnect()
vel2.Parent=nil
wait(1)
eul=0
Torso.Neck.C0=necko*euler(0,0,0)
wld1.C0=euler(-1.57,0,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
attack=false
end
function spintowin()
attack=true
SpecialEffect() 
for i=0,1,0.1 do
wait()
wld1.C0=euler(-1.57,-1.57*i,-1.57)*cf(0,1,0)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1,0,-0.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4-1.57*i,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.3*i,0,-0.2-0.2*i)
end
--[[local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = vt(4e+005,4e+005,4e+005)*1
vel2.velocity = Head.CFrame.lookVector*20]]
bg.Parent=Torso 
CF = Torso.CFrame 
local LastPoint = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
con1=prt7.Touched:connect(function(hit) Damagefunc1(hit,30,0.1) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.1) 
for i = 0 , 1 , 0.1 do 
wait(0)  
RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(1-1*i,0,-0.5+2.07*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.97+1.97*i,-0.2+0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.3+1.27*i,0,-0.4+0.4*i)
bg.cframe=CF*euler(0,-6.283*i,0) 
local Point = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
effect("Gold ",0.5,LastPoint,Point)
LastPoint = Point
end
for i=1,5 do
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.1) 
for i = 0 , 1 , 0.1 do 
wait(0)  
bg.cframe=CF*euler(0,-6.283*i,0) 
local Point = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
effect("Gold",0.5,LastPoint,Point)
LastPoint = Point
end
end
--vel2.Parent=nil
con1:disconnect()
wait(0.5)
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0=euler(-1.57,-1.57+1.57*i,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1*i,0,1.57-1.57*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4*i,-0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-1.57*i,0,-0.2*i)
end
attack=false
end
function CombatCharge()
attack=true
SpecialEffect() 
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1+2*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4+0.4*i,-0.2+0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local LastPoint = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
con1=prt7.Touched:connect(function(hit) Damagefunc1(hit,30,20) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3-3.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
local Point = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
effect("Gold",0.5,LastPoint,Point)
LastPoint = Point
end
for i=1,10 do
numb=math.random(-180,180)
RW.C0=cf(1.5, 0.5, 0) * euler(3,0,math.rad(numb))
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
local LastPoint = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3,0,math.rad(numb))
RW.C1=cf(0, 0.5, 0) * euler(3.5*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
local Point = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
effect("Gold",0.5,LastPoint,Point)
LastPoint = Point
end
end
con1:disconnect()
wait(0.3)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3-2*i,0,math.rad(numb)-math.rad(numb)*i)
RW.C1=cf(0, 0.5, 0) * euler(3.5-3.5*i,-0.4*i,-0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5+0.5*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
function Despair()
attack=true
Humanoid.WalkSpeed=0
print("Warrior SS initiated.")
SpecialEffect() 
bg.Parent=Head
CF = Head.CFrame 
bg.cframe=CF
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,1.57*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,-0.2-1.37*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2-1.37*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
wait(0.2)
partCFrame=Head.CFrame*cf(0,0,-20)
local hit,pos = rayCast(LeftArm.Position,Head.CFrame.lookVector,100,Character) 
if hit~=nil then
partCFrame=hit.CFrame
print("HITTED")
end
prt10.Parent=nil
local basepart=part(3,workspace,0,0,Torso.BrickColor,"Base Part",vt(1,1,1))
basepart.CFrame=partCFrame
basepart.Anchored=true
so("http://roblox.com/asset/?id=2101144",basepart,1,2) 
MagicCircle(BrickColor.new("Gold"),basepart.CFrame,3,3,3,0,0,0,7,7,7)
MagicCircle(BrickColor.new("Gold"),basepart.CFrame,5,1,1,0,0,0,9,1,1)
MagicCircle(BrickColor.new("Gold"),basepart.CFrame,1,5,1,0,0,0,1,9,1)
MagicCircle(BrickColor.new("Gold"),basepart.CFrame,1,1,5,0,0,0,1,1,9)
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - basepart.Position
local mag = targ.magnitude
if mag <= 20 and c[i].Name ~= Player.Name then 
fb=Instance.new("BodyPosition")
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-5
showDamage(Part.Parent,"Stunned!",10)
walkspeed=Part.Parent.Humanoid.WalkSpeed
Part.Parent.Humanoid.WalkSpeed=0.01
BodPos.P=20000
BodPos.D=1000
BodPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodPos.position=Part.Position
BodPos.Parent=Part
wait(10)
BodPos.Parent=nil
Part.Parent.Humanoid.WalkSpeed=walkspeed
end),head,fb)
end 
end 
end 
end 
wait(1)
Clone() 
Torso.CFrame=partCFrame*cf(0,15,0)
basepart.Parent=nil
bg.Parent=nil
Neck.C0=necko
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
Humanoid.WalkSpeed=16
attack=false
end
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
function Clone() 
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" then
                        n=v:clone()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=v.BrickColor
                        n.Parent=workspace
                        coroutine.resume(coroutine.create(function(ne) for i=1, 80 do ne.Transparency=i/80 wait() end ne.Parent=nil end),n)
                elseif v.className=="Hat" then
                        n=v.Handle:clone()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=v.Handle.BrickColor
                        n.Parent=workspace
                        coroutine.resume(coroutine.create(function(ne) for i=1, 80 do ne.Transparency=i/80 wait() end ne.Parent=nil end),n)
                end
        end
        for _,v in pairs(modelzorz:children()) do
                if v.className=="Part" then
                        n=v:clone()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=v.BrickColor
                        n.Parent=workspace
                        coroutine.resume(coroutine.create(function(ne) for i=1, 80 do ne.Transparency=i/80 wait() end ne.Parent=nil end),n)
                end
        end
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
local prt=part(3,workspace,1,0,BrickColor.new("Gold"),"Part",vt(1,1,1))
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
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
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
effectsg.Size = Vector3.new(0.2,mg,0.2)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.05 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
end
wait()
effectsg.Parent = nil
end
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
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
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
                blocked=false
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
local angle = (hit.Position-(Torso.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
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
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
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
                c.BrickColor=BrickColor.new("Gold")
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
function oneslash()
attack=true
combo=1
for i=0,1,0.1 do
wait(0)
RW.C0=cf(1.5, 0.5, 0) * euler(1+3*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4+0.4*i,-0.2+0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local LastPoint = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
con1=prt7.Touched:connect(function(hit) Damagefunc1(hit,30,40) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
for i=0,1,0.2 do
wait(0)
RW.C0=cf(1.5, 0.5, 0) * euler(4-4.7*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
local Point = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
effect("Gold",0.5,LastPoint,Point)
LastPoint = Point
end
for i=0,1,0.2 do
wait(0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.7-0.2*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5-0.1*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
con1:disconnect()
attack=false
end
function twoslash()
attack=true
combo=2
for i=0,1,0.1 do
wait(0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.9+2.47*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.6+0.6*i,0,-0.2-1.37*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
bg.Parent=Torso 
CF = Torso.CFrame 
local LastPoint = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
con1=prt7.Touched:connect(function(hit) Damagefunc1(hit,20,50) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,0.9) 
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0=euler(-1.57,-1.57*i,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.57*i)
bg.cframe=CF*euler(0,-6.283*i,0) 
local Point = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
effect("Gold",0.5,LastPoint,Point)
LastPoint = Point
end
con1:disconnect()
wait(0.1)
bg.Parent=nil
attack=false
end
function threeslash()
attack=true
combo=3
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0=euler(-1.57,-1.57+1.57*i,-1.57-0.6*i)*cf(0,1,0)
RW.C0=cf(1.5-0.7*i, 0.5+0.2*i, -0.5*i) * euler(1.57+0.43*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57+1.57*i,-1.57+2.17*i)
LW.C0=cf(-1.5+0.7*i, 0.5+0.2*i, -0.5*i) * euler(2*i,0,-1.57+1.57*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-0.6*i)
end
local LastPoint = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
con1=prt7.Touched:connect(function(hit) Damagefunc2(hit,20,40) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,0.7) 
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5-0.7, 0.5+0.2-0.4*i, -0.5) * euler(2-1.8*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0.6)
LW.C0=cf(-1.5+0.7, 0.5+0.2-0.4*i, -0.5) * euler(2-1.8*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-0.6)
local Point = prt7.CFrame * CFrame.new(0,-prt7.Size.Y,0)
effect("Gold",0.5,LastPoint,Point)
LastPoint = Point
end
con1:disconnect()
attack=false
end
function ob1d(mouse) 
if attack == true then return end 
hold=true
--attack=true
if combo==0 then
oneslash()
elseif combo==1 then
twoslash()
elseif combo==2 then
threeslash()
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
wld1.C0=euler(-1.57,0,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
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
if key=="x" then
spintowin()
end
if key=="c" then
CombatCharge()
end
if key=="v" and ssdebounce==false then
ssdebounce=true
coroutine.resume(coroutine.create(function() 
wait(30)
ssdebounce=false
prt10.Parent=modelzorz
wld10.Parent=prt10
end))
Despair()
end
coroutine.resume(coroutine.create(function(v) 
wait()
while attack==true do
wait(0)
bg.Parent = Torso
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = cf(Torso.Position,pos4) * euler(0,eul,0) * cf(0,0,0) 
end
bg.Parent=nil
end))
if key=="z" then
Charge()
end
combo=0
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
print("Basic sword loaded.")
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2013
]]
