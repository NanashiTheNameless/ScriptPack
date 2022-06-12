:ls local Name=game.Players.LocalPlayer.Name
local player=game.Players[Name]
local char=player.Character
local Tag=Instance.new("ObjectValue")
Tag.Name="creator"
Tag.Value=player
Welds={}
if script.Parent.className~="HopperBin" then
local h=Instance.new("HopperBin")
h.Name="Shadowblade"
h.Parent=player.Backpack
script.Parent=h
end
pcall(function() char.Sword:remove() char.Sheath:remove() end)
local m=Instance.new("Model")
m.Name="Sword"
m.Parent=char
local s = Instance.new("Model",char);
s.Name="Sheath";
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Black()
p.Reflectance=0.4
p.CanCollide=false
p.Parent=m
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.4,1.2,0.2)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=char.Torso
w.C0=CFrame.new(0,0,0.65)*CFrame.Angles(0,0,math.rad(150))
w.C1=CFrame.new(0,0.25,0)
local HoldWeld=w
local Blade=p
Welds["MAIN"]=HoldWeld
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.Reflectance=0.2
p.BrickColor=BrickColor.new("Grey")
p.Parent=m
local mes=Instance.new("CylinderMesh")
mes.Parent=p
mes.Scale=Vector3.new(.2,1.25,.2)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-2,0)
for i=1,10 do
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Black()
p.Parent=m
local mes=Instance.new("CylinderMesh")
mes.Parent=p
mes.Scale=Vector3.new(.21,.05,.21)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-2.7+.9*(i/9),0)
end
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.6,.2,.305)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-1.45,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.28,.24,.32)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-1.45,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Red()
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.14,.12,.325)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-1.45,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.4,.2,.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0.4,-1.37,0)*CFrame.Angles(0,0,math.rad(30))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.4,.2,.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(-0.4,-1.37,0)*CFrame.Angles(0,0,math.rad(-30))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Black()
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.49,.42,.205)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,1.55,0)*CFrame.Angles(0,0,math.rad(-45))
Tip=p
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.2
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.05,2.4,.1)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0.3,0.1,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.2
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.05,2.4,.1)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(-0.3,0.1,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Black()
p.Parent=m
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.02,1.2,0.21)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,.1,0)
-----------------------------------------------------------------
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.Color=Color3.new(0.1,0.1,0.1)
p.Reflectance=0.05;
p.Parent=s
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.7,1.3,.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=char.Torso
w.C0=CFrame.new(0,0,0.65)*CFrame.Angles(0,0,math.rad(150))
w.C1=CFrame.new(0,-0.15,0)
Sheath=p;
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Red()
p.Parent=s
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.14*2,.12*2,.325*1.2)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Sheath
w.C0=CFrame.new(0,-.5,0)*CFrame.Angles(0,0,math.rad(-45))
for i=-1,1,2 do
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:White()
p.Parent=s
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.05,1.2,.325*1.2)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Sheath
w.C0=CFrame.new(0.3*i,.11,0)
end
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Red()
p.Parent=s
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.71,.11,.325*1.2)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Sheath
w.C0=CFrame.new(0,-1.45,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.Color=Color3.new(0.1,0.1,0.1)
p.Parent=s
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.6,1.3,.25)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Sheath
w.C0=CFrame.new(0,-0.04,0)
-----------------------------------------------------------------
b=Instance.new("IntValue")
b.Value=0
b.Parent=char.Sword
function Click()
if b.Value~=0 then
pcall(function() DCLICK:disconnect() end)
wait(0.25)
Button()
wait()
DCLICK=b.Changed:connect(Click)
end
end
DCLICK=b.Changed:connect(Click)
Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}
function Button(mouse)
if b.Value==1 then
local rw=Welds["rw"]
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(4.5), math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,0.4,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0.1, 0)
end
wait()
for i=0,0.4,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0)
rw.C0 = rw.C0*CFrame.new(0, -0.1, 0)
end
for i=0,0.9,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-4.5), math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
b.Value=0
else
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,1,0.5 do
wait()
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,1,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,0.3,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,0.3,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
b.Value=0
end
end
function Key(key,mouse)
if key:lower()=="q" and Attack==false then
Attack=true
local rw=Welds["rw"]
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(1), math.rad(6),math.rad(2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
wait()
local bav = Instance.new("BodyAngularVelocity")
bav.maxTorque = Vector3.new(1e+0509, 1e+0059, 1e+509)
bav.angularvelocity = Vector3.new(0,-20,0)
bav.Parent = Blade
wait(1.5)
bav:remove()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
wait()
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-6),math.rad(-2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
Attack=false
elseif key:lower()=="e" and Attack==false then
Attack=true
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,2,0.5 do
wait(0.06)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
local b=Instance.new("BodyPosition")
b.position=char.Torso.Position+Vector3.new(0,30,0)
b.maxForce=Vector3.new(200,999999999,200)
b.Parent=char.Torso
wait(0.75)
for i=0,2,0.5 do
wait(0.05)
local p=Blade:Clone()
p.Transparency=0.5
p.Reflectance=0
p.BrickColor=BrickColor:Black()
p.Anchored=true
p.CanCollide=false
p.Parent=char
Delay(0.75,function() p:remove() end)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(-60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
b:remove()
function Check(d)
for _,v in pairs(game.Players:getPlayers()) do
if v.Name~=Name and v.Character and v.Character:findFirstChild("Torso") and (v.Character.Torso.Position-Star.Position).magnitude<d then
v.Character.Humanoid:TakeDamage(2)
v.Character.Humanoid.PlatformStand=true
v.Character.Torso.Velocity=(v.Character.Torso.Position-Star.Position).unit*120
end
end
end
wait(0.5)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Anchored=true
Tor.Transparency=1
Tor.CanCollide=false
Tor.Parent=char
Tor.TopSurface="Weld"
Star=Tor
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(3,1.2,3) 
Tor.CFrame=CFrame.new(char.Torso.Position.x,workspace.Base.Position.y,char.Torso.Position.z)
Delay(0.1,function()
for i=1,40 do
wait()
Mesh.Scale=Mesh.Scale+Vector3.new(1,0,1)
Star.Transparency=i/50
Dist=Mesh.Scale.x/2
Check(Dist)
end
Tor:remove()
end)
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
Attack=false
elseif key:lower()=="r" and Attack==false then
Attack=true
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,1,0.5 do
wait(0.06)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
local Blade2=Instance.new("Part")
Blade2.BrickColor=BrickColor:Black()
Blade2.Size=Vector3.new(1,1,1)
Blade2.Parent=char
Blade2.Name="Blade2"
Blade2.Reflectance=0
Blade2.Transparency=0.3
local Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Blade2
Mesh.Scale=Vector3.new(0.1,0.08,0.1)
local Weld=Instance.new("Weld")
Weld.Parent=Tip
Weld.Part1=Weld.Parent
Weld.Part0=Blade2
for i=1,20 do
Mesh.Scale=Mesh.Scale+Vector3.new(0.1,0.08,0.1)
wait()
end
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.TopSurface="Smooth"
Laz.Name="Lazer"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,2)
Laz.CFrame=CFrame.new((mouse.Hit.p+Blade2.Position)/2,Blade2.Position)
Laz.Parent=char
Laz.Transparency=0.5
Laz.Reflectance=0.1
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
Me.Scale = Vector3.new(0.75,0.75,(mouse.Hit.p - Blade2.Position).magnitude/2) 
local e=Instance.new("Explosion")
e.Position=mouse.Hit.p
e.BlastPressure=0
e.Hit:connect(function(h)
if h.Parent.Name~=Name then
pcall(function() h.Parent.Humanoid:TakeDamage(10) end)
h.Velocity=(h.Position-e.Position).unit*120
end
end)
e.Parent=workspace
wait(1)
Laz:remove()
for i=1,20 do
Mesh.Scale=Mesh.Scale+Vector3.new(-0.1,-0.08,-0.1)
wait()
end
for i=0,0.3,0.15 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(-60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
Attack=false
elseif key:lower()=="t" and Attack==false then
Attack=true
wait()
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,2,0.5 do
wait(0.06)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
local bv=Instance.new("BodyVelocity")
bv.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bv.velocity=char.Torso.CFrame.lookVector*70
bv.Parent=char.Torso
local cont={};
local corro = coroutine.create(function()
while wait() do
for _,v in next,cont do
v.Transparency=v.Transparency+0.15
if v.Name=="Pillar" then
v.CFrame=v.CFrame*CFrame.new(0,1,0);
end
if v.Transparency>0.9 then
v:remove()
cont[_]=nil
end
end
end
end)
coroutine.resume(corro)
for i=1,7 do
wait(0.1)
bv.velocity=char.Torso.CFrame.lookVector*80
for i=1,3 do
local g = Instance.new("Part")
g.Size=Vector3.new(3,5,3)
g.BrickColor=BrickColor:Black()
g.CanCollide=false
g.Anchored=true
g.Name="Pillar"
g.Transparency=0.6
g.CFrame=char.Torso.CFrame*CFrame.new(math.random(-4,4),-4.5,math.random(-4,4))*CFrame.Angles(math.rad(math.random(-45,45)),math.rad(math.random(-45,45)),math.rad(math.random(-45,45)))
g.Parent=char
local b = Instance.new("BlockMesh")
b.Scale=Vector3.new(1.5,1,1.5)
b.Parent=g
g.Touched:connect(function(h) pcall(function() if h.Parent.Name~=Name then h.Parent.Humanoid:TakeDamage(20) end end) end)
table.insert(cont,g)
end
for _,v in next,char:children() do
if v.className=="Part" then
local p = v:clone()
p.Anchored=true
p.BrickColor=BrickColor:Black()
p.CanCollide=false
p.Transparency=0.5
p.Parent=char
table.insert(cont,p)
end
end
end
bv:remove()
for i=0,0.3,0.15 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(-60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
coroutine.yield(corro)
Attack=false
end
end
De=0
Equip=false
function EQUIP(mouse)
if De==0 then
Equip=true
De=1
rs=char.Torso["Right Shoulder"]
p1=rs.Part1
p0=rs.Part0
rs.Part0=nil
rw=Instance.new("Weld")
rw.Parent=char
rw.Part1=char.Torso
rw.Part0=char["Right Arm"]
rw.C1=CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0)
R1=rw.C1
R0=rw.C0
Arms["rw"]=rw
Welds["rw"]=rw
Weld=Welds["MAIN"]
Delay(0,function()
for i=1,math.huge do
if rs.Part0~=nil then
break
end
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.Reflectance=0.3
p.BrickColor=BrickColor:Black()
p.Anchored=true
p.CanCollide=false
p.Parent=char
p.CFrame=Blade.CFrame*CFrame.new(math.sin(-i)*0.45,math.sin(i/5)*1.2,math.cos(i)*0.45)*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.15,0.15,0.15)
m.Parent=p
Delay(0,function()
local p=p
for i=1,3 do
wait(0.05)
p.Transparency=i/3
end
p:remove()
end)
wait(0.075)
end
end)
for i=0,1,0.1 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(270)*i, i,-i)
rw.C0 = CFrame.new(0, 0.5, 0)
end
pcall(function() Weld.Part0=char["Right Arm"]
Weld.C0=CFrame.new(0,-1.1,-2.35)*CFrame.Angles(math.rad(90),math.rad(90),math.rad(180)) 
P=Blade.Touched:connect(function(h) if h.Parent.Name~=Name then pcall(function() h.Parent.Humanoid:takeDamage(7) end) end end)
end) 
for i=0,1,0.5 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(135)-math.rad(67.5)*i, 0, math.rad(45-22.5*i))
rw.C0 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait()
for i=0,1,0.25 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-3.5),math.rad(-2),math.rad(-6))
wait(0.05)
end
OrgR0=rw.C0
OrgR1=rw.C1
local rw=rw
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() b.Value=b.Value+1 end)
mouse.KeyDown:connect(function(key) Key(key,mouse) end)
Attack=false
wait()
De=0
end
end
--setfenv(EQUIP,getfenv(0))
script.Parent.Selected:connect(function(mouse)
EQUIP(mouse)
end)
script.Parent.Deselected:connect(function()
Equip=false
pcall(function() P:disconnect() end)
for i=0,1,0.1 do
rw.C1=rw.C1*CFrame.Angles(math.rad(17),math.rad(8),math.rad(4))
wait(0.04)
end
Welds["MAIN"].Part0=char.Torso
Welds["MAIN"].C0=CFrame.new(0,0,0.65)*CFrame.Angles(0,0,math.rad(150))
Welds["MAIN"].C1=CFrame.new(0,0.25,0)
for i=0,1,0.1 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-19),math.rad(-3),math.rad(-6))
wait()
end
pcall(function()
rs.Part0=p0
rs.Part1=p1
rs.Parent=char.Torso
rw:remove()
end)
end)