plr=game:service'Players'.LocalPlayer
ch=plr.Character
tor,torso,rootpart,rj=ch.Torso,ch.Torso,ch.HumanoidRootPart,ch.HumanoidRootPart.RootJoint
m,mouse=plr:GetMouse(),plr:GetMouse()
cfn,ang,mr,int=CFrame.new,CFrame.Angles,math.rad,Instance.new
combo=false
if ch:findFirstChild("Inficio") then
ch.Inficio:Destroy()
end

local tube=int("Model",ch)
tube.Name='Inficio'

getSound=function(id)
local s=int("Sound",ch.Head)
s.Volume=1
s.SoundId=id
return s
end

hitS=getSound('http://www.roblox.com/asset?id=123252378')
swingS=getSound('http://www.roblox.com/asset?id=154965929')
sheathS=getSound('http://www.roblox.com/asset?id=130785407')
drawS=getSound('http://www.roblox.com/asset?id=130785405')

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)--recommend to use this with my weld. use this function only with arm lockers.
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p1
w.Part1 = p0
w.C0 = CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(rx or 0,ry or 0,rz or 0)
w.MaxVelocity = .1
return w
end


weld=function(p0,p1,c0)--basic weld function
local w=Instance.new("Weld",p0)
w.Part0=p0
w.Part1=p1
w.C0=c0
return w
end


cp=function(parent,color,size,anchored,cancollide)--creates a part. automagically returns the part so you can edit it manually.
local newp=Instance.new("Part",parent)
newp.Material = "SmoothPlastic"
newp.TopSurface=10
newp.BottomSurface=10
newp.LeftSurface=10
newp.RightSurface=10
newp.FrontSurface=10
newp.BackSurface=10
newp.FormFactor="Custom"
newp.BrickColor=BrickColor.new(color)
newp.Size=size
newp.Anchored=anchored
newp.CanCollide=cancollide
newp:BreakJoints()
return newp
end
Tween = function(Weld, Stop, Step,a)
ypcall(function()
local func = function()
local Start = Weld.C1
local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
local Stop = Stop
local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()

for i = 0, 1, Step or .1 do
Weld.C1 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
(Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
(Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
(X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
(Z1 * (1 - i)) + (Z2 * i) )
wait()
end

Weld.C1 = Stop
end

if a then coroutine.wrap(func)() else func() end
end)
end

Tween2 = function(Weld, Stop, Step,a)
ypcall(function()--- TweenWeld function (not made by me)
local func = function()
local Start = Weld.CFrame
local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
local Stop = Stop
local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()

for i = 0, 1, Step or .1 do
Weld.CFrame = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
(Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
(Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
(X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
(Z1 * (1 - i)) + (Z2 * i) )
wait()
end

Weld.CFrame = Stop
end

if a then coroutine.wrap(func)() else func() end
end)
end


cyl=function(prt)
local c=int("CylinderMesh",prt)
return c
end

blo=function(prt)
local c=int("BlockMesh",prt)
return c
end


rabr = cp(tube,'White',Vector3.new(1,1,1),false,false) rabr.Transparency = 1 rabr.Name='Locker'
rabr.Position = torso.Position
rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = tube rw.Name = 'rw'
w = Instance.new("Weld",tube)
w.Part0,w.Part1 = ch['Right Arm'],rabr
w.C1 = CFrame.new(0,-.5,0)

labr = cp(tube,'White',Vector3.new(1,1,1),false,false) labr.Transparency = 1 labr.Name='Locker'
labr.Position = torso.Position
lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = tube lw.Name = 'lw'
ww = Instance.new("Weld",tube)
ww.Part0,ww.Part1 = ch['Left Arm'],labr
ww.C1 = CFrame.new(0,-.5,0)

mh=cp(tube,"Brown",Vector3.new(1,1,1))
mw=weld(ch['Right Arm'],mh,CFrame.new(0,-1,0)*ang(mr(-90),0,0))
local b=blo(mh)
b.Scale=Vector3.new(0.23,1,0.23)

local hp=cp(tube,"Bright yellow",Vector3.new(1,1,1))
weld(mh,hp,CFrame.new(0,-0.6,0))
local b=blo(hp)
b.Scale=Vector3.new(0.28,0.28,0.28)

local hpa=cp(tube,"Bright yellow",Vector3.new(1,1,1))
weld(mh,hpa,CFrame.new(0,0.57,0))
local b=blo(hpa)
b.Scale=Vector3.new(0.28,0.15,0.7)

local blade=cp(tube,"Light stone grey",Vector3.new(1,2.6,1))
blade.Material='SmoothPlastic'
blade.TopSurface='SmoothNoOutlines'
weld(hpa,blade,CFrame.new(0,1.4,0))
local b=blo(blade)
b.Scale=Vector3.new(0.18,1,0.53)

local tip=cp(tube,"Light stone grey",Vector3.new(1,0.3,1))
tip.Material='SmoothPlastic'
tip.TopSurface='SmoothNoOutlines'
tip.Name='tip'
weld(blade,tip,CFrame.new(0,1.45,0))
local we=int("SpecialMesh",tip)
we.MeshType='Wedge'
we.Scale=Vector3.new(0.18,1,0.53)
tip.BottomSurface='SmoothNoOutlines'

local blade2=cp(tube,"Bright yellow",Vector3.new(1,2.6,1))
blade2.Material='SmoothPlastic'
blade2.TopSurface='SmoothNoOutlines'
weld(blade,blade2,CFrame.new(0,0,0))
local b=blo(blade2)
b.Scale=Vector3.new(0.19,1,0.2515)

local ring=cp(tube,"Bright yellow",Vector3.new(1,1,1))
ring.Material='SmoothPlastic'
weld(blade,ring,CFrame.new(0,-0.5,0))
local b=blo(ring)
b.Scale=Vector3.new(0.2,0.1,0.54)

local ring=cp(tube,"Bright yellow",Vector3.new(1,1,1))
ring.Material='SmoothPlastic'
weld(blade,ring,CFrame.new(0,-0.7,0))
local b=blo(ring)
b.Scale=Vector3.new(0.2,0.1,0.54)

local ring=cp(tube,"Bright yellow",Vector3.new(1,1,1))
ring.Material='SmoothPlastic'
weld(blade,ring,CFrame.new(0,-1,0))
local b=blo(ring)
b.Scale=Vector3.new(0.2,0.2,0.54)

local tip2=cp(tube,"Bright yellow",Vector3.new(1,0.3,1))
tip2.BottomSurface='SmoothNoOutlines'
tip2.TopSurface='SmoothNoOutlines'
tip2.Material='SmoothPlastic'
weld(blade2,tip2,CFrame.new(0,1.35,0))
local we=int("SpecialMesh",tip2)
we.MeshType='Wedge'
we.Scale=Vector3.new(0.19,0.5,0.2515)




local hpa=cp(tube,"Bright yellow",Vector3.new(1,1,1))
weld(mh,hpa,CFrame.new(0,0.67,0))
local b=blo(hpa)
b.Scale=Vector3.new(0.2,0.1,0.54)

local sht=cp(tube,"Brown",Vector3.new(2.4,0.7,0.3))
weld(torso,sht,CFrame.new(0,0,0.7)*ang(0,0,mr(45)))
sht.Transparency=1
deb=false
sheathed=false


sheath=function()
if sheathed==false then
Spawn(function()
Tween(lw,cfn())
for i=1,10 do
wait()
sht.Transparency=sht.Transparency-0.1
end
end)
Tween(rw,cfn()*ang(mr(-160),mr(-30),0))
sheathS:Play()
mw:Destroy()
ypcall(function()
mw:Destroy()
mw=nil

end)
mw=weld(sht,mh,CFrame.new(1.85,0,0)*ang(mr(90),0,mr(90)))
Tween(rw,cfn())
Tween(lw,cfn())
sheathed=true
rabr:Destroy()
labr:Destroy()
end
end

unsheath=function()
if sheathed==true then
rabr = cp(tube,'White',Vector3.new(1,1,1),false,false) rabr.Transparency = 1 rabr.Name='Locker'
rabr.Position = torso.Position
rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = tube rw.Name = 'rw'
w = Instance.new("Weld",tube)
w.Part0,w.Part1 = ch['Right Arm'],rabr
w.C1 = CFrame.new(0,-.5,0)

labr = cp(tube,'White',Vector3.new(1,1,1),false,false) labr.Transparency = 1 labr.Name='Locker'
labr.Position = torso.Position
lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = tube lw.Name = 'lw'
ww = Instance.new("Weld",tube)
ww.Part0,ww.Part1 = ch['Left Arm'],labr
ww.C1 = CFrame.new(0,-.5,0)
Spawn(function()
Tween(lw,cfn())
for i=1,10 do
wait()
sht.Transparency=sht.Transparency+0.1
end
end)
Tween(rw,cfn()*ang(mr(-160),mr(-30),0))
drawS:Play()
mw:Destroy()
ypcall(function()
mw:Destroy()
mw=nil

end)
mw=weld(ch['Right Arm'],mh,CFrame.new(0,-1,0)*ang(mr(-90),0,0))
Tween(rw,cfn()*ang(mr(-15),mr(-5),mr(-10)))
Tween(lw,cfn()*ang(mr(15),mr(5),mr(10)))
sheathed=false
end
end


attacks={
[1]={function()
deb=true
combo=true
Spawn(function()
Tween(lw,cfn()*ang(mr(-40),mr(5),mr(20)),0.1)
end)
Tween(rw,cfn()*ang(mr(-115),mr(-15),mr(-60)),0.1)
wait(0.1)
swingS:Play()
Spawn(function()
Tween(lw,cfn()*ang(mr(35),mr(5),mr(20)),0.2)
end)
Tween(rw,cfn()*ang(mr(30),mr(-15),mr(-60)),0.2)
deb=false
combo=false
wait(3)
if combo==false then Tween(rw,cfn()*ang(mr(-15),mr(-5),mr(-10)),0.4) Tween(lw,cfn()*ang(mr(15),mr(5),mr(10)),0.4) end
end};
[2]={function()
deb=true
combo=true
Spawn(function()
Tween(rj,cfn()*ang(0,mr(-90),0))
end)
Tween(rw,cfn()*ang(mr(0),mr(0),mr(-90)),0.1)

Tween(rw,cfn()*ang(mr(80),mr(0),mr(-90)),0.25)
swingS:Play()
Tween(rj,cfn()*ang(0,mr(0),0),0.2)
deb=false
combo=false
wait(3)
if combo==false then Tween(rw,cfn()*ang(mr(-15),mr(-5),mr(-10)),0.4) Tween(lw,cfn()*ang(mr(15),mr(5),mr(10)),0.4) end
end};
[3]={function()
deb=true
combo=true
Tween(rw,cfn()*ang(mr(0),mr(0),mr(-90)),0.1)
torso.Anchored=true
swingS:Play()
Spawn(function()
wait(0.3)
swingS:Play()
end)
for i=1,13 do
wait()
torso.CFrame=torso.CFrame*ang(0,0.5,0)
end
torso.Anchored=false
deb=false
combo=false
wait(3)
if combo==false then Tween(rw,cfn()*ang(mr(-15),mr(-5),mr(-10)),0.4) Tween(lw,cfn()*ang(mr(15),mr(5),mr(10)),0.4) end
end};
[4]={function()
deb=true
combo=true
Spawn(function()
Tween(lw,cfn()*ang(mr(-40),mr(5),mr(20)),0.1)
end)
Tween(rw,cfn()*ang(mr(-115),mr(15),mr(60)),0.1)
wait(0.1)
swingS:Play()
Spawn(function()
Tween(lw,cfn()*ang(mr(35),mr(5),mr(20)),0.2)
end)
Tween(rw,cfn(0,0,1.3)*ang(mr(30),mr(15),mr(60)),0.2)
deb=false
combo=false
wait(3)
if combo==false then Tween(rw,cfn()*ang(mr(-15),mr(-5),mr(-10)),0.4) Tween(lw,cfn()*ang(mr(15),mr(5),mr(10)),0.4) end
end}
}


rj.C0=cfn()
rj.C1=cfn()



Tween(rw,cfn()*ang(mr(-15),mr(-5),mr(-10)))

Tween(lw,cfn()*ang(mr(15),mr(5),mr(10)))

drawLine=function(point_a,point_b,bc_code)
local dist=(point_a-point_b).magnitude;
local rad=dist/2;
local line=Instance.new('Part',tube) --reparent as u wish
line.Material = 'SmoothPlastic'
line.FrontSurface = 10
line.BackSurface = 10
line.LeftSurface = 10
line.RightSurface = 10
line.TopSurface = 10
line.BottomSurface = 10
line.Anchored=true;
line.FormFactor='Custom';
--line.Transparency=0.4
line.Color=BrickColor.new(bc_code).Color;
line.CanCollide=false;
line.Size=Vector3.new(.1,.1,dist);
Instance.new("BlockMesh",line).Name='blok'
line.CFrame=CFrame.new(point_a,point_b)*CFrame.new(0,0,-rad);
return line;
end;
last=tip.CFrame;
sprint=false
gbg=nil
ghax=nil
gweld=nil
haxing=false
shield=false

m.Button1Down:connect(function()
if deb==false and haxing==false and sheathed==false and shield==false then
attacks[math.random(1,#attacks)][1]()
end
end)

m.KeyDown:connect(function(key)
if string.byte(key)==48 then
if deb==false then
deb=true
sprint=true
Spawn(function()
Tween(rw,cfn()*ang(mr(45),mr(-5),mr(-10)),0.3)
end)
Tween(lw,cfn()*ang(mr(45),mr(5),mr(10)),0.3)
ch.Humanoid.WalkSpeed=35
end
end
if key=='f' and shield==false and deb==false and combo==false and sheathed==false then
shield=true
combo=true
local bg = Instance.new("BodyGyro",tor)
bg.maxTorque = Vector3.new(1,1,1)*9e7
gbg=bg
game:service'RunService'.Stepped:connect(function()
bg.cframe = CFrame.new(tor.Position,mouse.Hit.p*Vector3.new(1,0,1)+tor.Position*Vector3.new(0,1,0)) * CFrame.Angles(0,math.rad(-90),0)
end)
Tween(lw,cfn()*ang(mr(0),mr(0),mr(90)),0.2)
local shd=cp(tube,"Bright yellow",Vector3.new(3.4,3.4,0.2),false,true)
shd.Transparency=1
local shdw=weld(ch['Left Arm'],shd,CFrame.new(0,-1,0)*ang(mr(90),0,0))
gweld=shdw
ghax=shd

local shdp1=cp(shd,"Br. yellowish orange",Vector3.new(3,3,0.2))
blo(shdp1).Scale=Vector3.new(1.01,1,1.01)
weld(shd,shdp1,cfn())
shdp1.Transparency=1

local shdp2=cp(shd,"Br. yellowish orange",Vector3.new(3,0.3,0.2),false,true)
blo(shdp2).Scale=Vector3.new(1.01,1,1.01)
shdp2.Transparency=1
weld(shd,shdp2,cfn(0,2.2,0))

local shdp3=cp(shd,"Br. yellowish orange",Vector3.new(2.5,0.3,0.2),false,true)
blo(shdp3).Scale=Vector3.new(1.01,1,1.01)
shdp3.Transparency=1
weld(shd,shdp3,cfn(0,-2.2,0))

for i=1,5 do
wait()
shd.Transparency=shd.Transparency-0.15
shdp1.Transparency=shdp1.Transparency-0.15
shdp2.Transparency=shdp2.Transparency-0.15
shdp3.Transparency=shdp3.Transparency-0.15
end


end
end)




lasta=nil

cnct=function(prt)
local lastz=prt.CFrame
Spawn(function()
while wait() do
coroutine.resume(coroutine.create(function()
local a=prt
local c=a.CFrame;
local m=(c.p-lastz.p).magnitude;
if(m>1)then
local l=drawLine(lastz.p,c.p,'Bright yellow');
lastz=c;
for i=1,10 do
wait()
l.Transparency=l.Transparency+0.1
l.blok.Scale=l.blok.Scale-Vector3.new(0.1,0.1,0)
end
game:service'Debris':addItem(l,1);

end;
end));
end
end)
end

m.KeyUp:connect(function(key)
if string.byte(key)==48 then
if deb==true then
Spawn(function()
Tween(rw,cfn()*ang(mr(-15),mr(-5),mr(-10)),0.3)
end)
Tween(lw,cfn()*ang(mr(15),mr(5),mr(10)),0.3)
ch.Humanoid.WalkSpeed=16
deb=false
sprint=false
end
end
if key=='q' then
if sheathed==false and combo==false and shield==false and deb==false then
deb=true
combo=true
sheath()
combo=false
deb=false
elseif sheathed==true and combo==false and deb==false then
deb=true
unsheath()
deb=false
end
elseif key=='f' and shield==true then
ypcall(function()
gbg:Destroy()
end)
Tween(lw,cfn()*ang(mr(15),mr(5),mr(10)),0.2)
combo=false
local a=ghax:children()
for i=1,5 do
wait()
ghax.Transparency=ghax.Transparency+0.15
for _,v in pairs(a) do
if v.className=='Part' then
v.Transparency=v.Transparency+0.15
end
end
end
ghax:Destroy()
gweld:Destroy()
shield=false
end
end)

atdeb=false
lastthing=nil

blade.Touched:connect(function(p)
if atdeb==false then
if p.Parent:findFirstChild("Humanoid") and deb==true and sprint==false then
atdeb=true
hitS:Play()
p.Parent.Humanoid.Health=p.Parent.Humanoid.Health-math.random(25,35)
lastthing=p.Parent.Name
wait(0.65)
atdeb=false
end
end
end)



while wait() do
if deb==false then
last=tip.CFrame
--Tween(rw,cfn()*ang(mr(-70),mr(-40),0),0.02)
--Tween(rw,cfn()*ang(mr(-60),mr(-30),0),0.02)
else
coroutine.resume(coroutine.create(function()
local a=tube:waitForChild'tip'
local c=a.CFrame;
local m=(c.p-last.p).magnitude;
if(m>1)then
local l=drawLine(last.p,c.p,'Bright yellow');
last=c;
for i=1,10 do
wait()
l.Transparency=l.Transparency+0.1
l.blok.Scale=l.blok.Scale-Vector3.new(0.1,0.1,0)
end
game:service'Debris':addItem(l,1);

end;
end));
end
end