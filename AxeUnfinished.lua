Name="RenderSettings"
player=game.Players[Name]
char=player.Character
Weld=nil
Welds={}
Damage=20
Back=Damage
pcall(function() char.Axe:remove() end)
m=Instance.new("Model")
m.Parent=char
m.Name="Axe"
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
p.Material="Concrete"
p.Name="Cent"
p.Size=Vector3.new(1,2,1)
Cent=p
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.3,1.2,0.3)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,0.25,-0.75)*CFrame.Angles(0,0,math.rad(180+35))
Weld=w
Welds["MAIN"]=Weld
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Dark stone grey")
p.Material="Concrete" 
p.Size=Vector3.new(1,2,1)
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.31,0.35,0.31)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,1.1,0)*CFrame.Angles(0,0,0)
for i=1,5 do
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Grey")
p.Material="Concrete"
p.Size=Vector3.new(1,2,1)
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.35,0.025,0.35)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,1.1-.35*1.75+i/5,0)*CFrame.Angles(0,0,0)
end
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Dark stone grey")
p.Material="Concrete"
p.Touched:connect(function(h) pcall(function() h.Parent.Humanoid:TakeDamage(Damage) end) end)
p.Size=Vector3.new(1,2,1)
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.9,0.21,0.9)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C1=CFrame.new(0,1.6,0)*CFrame.Angles(0,math.rad(90),math.rad(90))
for i=0,360/2,30 do
if i>360/4 then
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Dark stone grey")
p.Material="Concrete"
p.Size=Vector3.new(1,2,1)
me=Instance.new("BlockMesh")
me.Scale=Vector3.new(0.65,1,0.2)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C1=CFrame.new(0,1.6,0)*CFrame.Angles(0,0,math.rad(i-60))
end
end
b=Instance.new("IntValue")
b.Value=0
b.Parent=char.Axe

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

if script.Parent.className~="HopperBin" then
Staff=Instance.new("HopperBin")
Staff.Name="Axe"
Staff.Parent=player.Backpack
script.Parent=Staff
end
Hop=script.Parent


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

function Charge()
local rw=Welds["rw"]
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(1), math.rad(6),math.rad(2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=1,6 do
wait()
local Laz=Instance.new("Part")
Laz.Anchored=false
Laz.BrickColor=BrickColor:Red()
Laz.Reflectance=0
Laz.Shape="Ball"
Laz.Transparency=1-i/9
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.Parent=char.Axe
w=Instance.new("Weld")
w.Part1=Laz
w.Part0=char.Axe.Cent
w.Parent=Laz
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
for i=1,7,0.5 do
Me.Scale = Vector3.new(i/3,i,i/3) 
wait()
end
Laz:remove()
end
end

function SLAM()
Charge()
Damage=100
wait()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
wait()
local p=Instance.new("Part")
p.BrickColor=BrickColor:Red()
p.TopSurface="Smooth"
p.Anchored=true
p.CanCollide=false
p.Parent=char.Axe
p.CFrame=char.Torso.CFrame*CFrame.new(0,-1,0)
local m=Instance.new("SpecialMesh")
m.MeshType="FileMesh"
m.MeshId="http://roblox.com/asset/?id=20329976"
m.Parent=p
local cl=p:clone()
cl.Parent=char.Axe
cl.CFrame=char.Torso.CFrame*CFrame.new(0,-1,0)
for i=1,50 do
p.Transparency=i/50
cl.Transparency=(i/2)/50
m.Scale=Vector3.new(i,1,i)
cl.Mesh.Scale=Vector3.new(i/2,1,i/2)
if i==25 or i==50 then
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Character:findFirstChild("Torso") and (v.Character.Torso.Position-p.Position).magnitude<i/2 and v.Name~=Name then
pcall(function() v.Character.Humanoid.Health=0 end)
end
end
end
wait()
end
p:remove()
cl:remove()
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
wait(1)
Damage=Back
rw.C0=OrgR0
rw.C1=OrgR1
end

function LASER()
Charge()
wait()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end

--Etc.--
rw.C0=OrgR0
rw.C1=OrgR1
end
De=0

function EQUIP(mouse)
if De==0 and #game["LocalBackpack"]:children()>0 then
De=1
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
rs=char.Torso["Right Shoulder"]
p1=rs.Part1
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
for i=0,1,0.1 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(270)*i, i,-i)
rw.C0 = CFrame.new(0, 0.5, 0)
end
pcall(function() Weld.Part1=char["Right Arm"]
Weld.C0=CFrame.new(-.95,-1,0)*CFrame.Angles(math.rad(90),0,math.rad(90)) end)
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
setfenv(Button,getfenv(1))
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() b.Value=b.Value+1 end)
mouse.KeyDown:connect(function(key)
if not Attacking then
if key=="q" then
Attacking=true
SLAM()
Attacking=false
elseif key=="e" then
Attacking=true
LASER()
Attacking=false
end
end
end)
wait()
De=0
end
end
setfenv(EQUIP,getfenv(0))
Hop.Selected:connect(function(mouse)
EQUIP(mouse)
end)
