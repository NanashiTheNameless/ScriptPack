local Name="luxulux"
local char=workspace[Name]
local player=game.Players[Name]
local d=0
local Sh={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}
local face=char.Head.face:clone()
if script.Parent.className~="HopperBin" then
Staff=Instance.new("HopperBin")
Staff.Name="Staff"
Staff.Parent=player.Backpack
script.Name="Staffy"
script.Parent=Staff
end
Staff=script.Parent
ta={}
for _,v in pairs(player.Backpack:GetChildren()) do
if v.Name=="Staff" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end

char.Humanoid.Died:connect(function() if char:findFirstChild("Torso")~=nil then Nova() end for _,v in pairs(player:children()) do if v:IsA("Hint") then v:remove() end  end function hint(msg,time) 

end end) --I HATE leftover messages.

function makeStaff()
local Staff=char
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,6,1)
Handle.Parent=Staff
Handle.Reflectance=0.2
Handle.Transparency=0--.19
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Scale=Vector3.new(0.3,0.8,0.3)
Mesh.Offset=Vector3.new(0,-2,0)
Mesh.Parent=Handle
wHy = Instance.new("Weld") 
wHy.Parent = Handle
wHy.Part0 = wHy.Parent 
wHy.Part1 = char["Right Arm"] 
wHy.C0 = CFrame.new(0,0.25,1)*CFrame.Angles(math.rad(90),0,0)
Ds=Instance.new("Part")
Ds.Size=Vector3.new(1,1,1)
Ds.BrickColor=BrickColor.new("Drak Grey")
Ds.Transparency=0
Ds.Reflectance=0.13
Ds.Parent=Staff
Meh=Instance.new("CylinderMesh")
Meh.Scale=Vector3.new(0.7,.15,0.7)
Meh.Parent=Ds
w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Ds 
w.C0 = CFrame.new(0,2.3,0)

Top=Instance.new("Part")
Top.Size=Vector3.new(1,1,1)
Top.BrickColor=BrickColor:Blue()
Top.Transparency=0.25
Top.Shape="Ball"
Top.TopSurface="Smooth"
Top.BottomSurface="Smooth"
Top.Name="Top"
Top.Reflectance=0.13
Top.Parent=Staff
Meh=Instance.new("SpecialMesh")
Meh.MeshType="Sphere"
Meh.Scale=Vector3.new(1.1,1.1,1.1)
Meh.Parent=Top
w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Top 
w.C0 = CFrame.new(0,2.8,0)
Top2=Instance.new("Part")
Top2.Size=Vector3.new(1,1,1)
Top2.Shape="Ball"
Top2.BrickColor=BrickColor:Black()
Top2.Transparency=0.2
Top2.Reflectance=0
Top2.Parent=Staff
local Mesh2=Instance.new("SpecialMesh")
Mesh2.MeshType="Sphere"
Mesh2.Scale=Vector3.new(0,0,0)
Mesh2.Parent=Top2
coroutine.resume(coroutine.create(function() 
while true do
for i=1,10 do
Mesh2.Scale=Mesh2.Scale+Vector3.new(0.1,0.1,0.1)
wait(0.05)
end
wait(0.17)
for i=10,1,-1 do
Mesh2.Scale=Mesh2.Scale+Vector3.new(-0.1,-0.1,-0.1)
wait(0.05)
end
wait()
end 
end))
w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Top2 
w.C0 = CFrame.new(0,2.8,0)
for i=1,2,0.5 do
Band1=Instance.new("Part")
Band1.Size=Vector3.new(1,1,1)
Band1.BrickColor=BrickColor:Blue()
Band1.Parent=Staff
Band1.Reflectance=0.8
Mesh=Instance.new("CylinderMesh")
Mesh.Scale=Vector3.new(0.31,0.05,0.31)
Mesh.Parent=Band1
w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Band1
w.C0 = CFrame.new(0,i,0)
end
for i=1,-2,-0.5 do
Band1=Instance.new("Part")
Band1.Size=Vector3.new(1,1,1)
Band1.BrickColor=BrickColor:Blue()
Band1.Parent=Staff
Band1.Reflectance=0.8
Mesh=Instance.new("CylinderMesh")
Mesh.Scale=Vector3.new(0.31,0.05,0.31)
Mesh.Parent=Band1
w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Band1
w.C0 = CFrame.new(0,i,0)
end
end
function Ice(mouse)
local b=Instance.new("Part")
b.BrickColor=BrickColor:Blue()
b.Reflectance=0.5
b.Size=Vector3.new(2,2,2)
b.Shape="Ball"
b.TopSurface="Smooth"
b.CanCollide=false
b.Position=char.Top.Position
b.BottomSurface="Smooth"
b.Friction=0
local bo=Instance.new("BodyVelocity")
bo.maxForce=Vector3.new(9999,9999,9999)
bo.velocity=(mouse.Hit.p-char.Top.Position).unit*300
bo.Parent=b
local co=b.Touched:connect(function(hit) onTouched(hit,b,co) end)
b.Parent=workspace
Delay(3,function() b:remove() end)
end
function hint(msg,de)
local h=Instance.new("Hint")
h.Text=tostring(msg)
h.Parent=player
Delay(tonumber(de),function() h:remove() end)
end

function onTouched(hit, part,con) 
local humanoid = hit.Parent:findFirstChild("Humanoid") 
if humanoid ~= nil and humanoid.Parent.Name~=Name and humanoid.Parent:findFirstChild("Torso")~=nil then 
pcall(function() part.creator.Parent=humanoid 
part.Parent = nil
end)
Tor=humanoid.Parent.Torso
p=Instance.new("Part")
p.Name="Ice"
p.Size=Vector3.new(4,6,4)
p.BrickColor=BrickColor:Blue()
p.Reflectance=0.4
p.Transparency=0.6
p.Parent=humanoid.Parent
for _,v in pairs(hit.Parent:children()) do 
if v:IsA("Part") then
v.Reflectance=0.5
v.BrickColor=BrickColor.Blue()
v.Name="Frozen"
v.Anchored=true
p.CFrame=Tor.CFrame
end
end
wait(1)
pcall(function() humanoid.creator.Parent=nil end)
p.CFrame=Tor.CFrame
end
end
function Fire(mouse)
local b=Instance.new("Part")
b.BrickColor=BrickColor:Red()
b.Reflectance=0.1
b.Transparency=0.3
b.Size=Vector3.new(2,2,2)
b.Shape="Ball"
b.CanCollide=false
b.TopSurface="Smooth"
local sp=Instance.new("Sparkles")
sp.Color=BrickColor:Red().Color
sp.Parent=b
local sm=Instance.new("Smoke")
sm.Color=BrickColor:Red().Color
sm.RiseVelocity=0
sm.Size=2
sm.Parent=b
b.Position=char.Top.Position
--b.Position=b.Position+(b.CFrame.lookVector*5)
b.BottomSurface="Smooth"
b.Friction=0
local bo=Instance.new("BodyVelocity")
bo.maxForce=Vector3.new(9999,9999,9999)
bo.velocity=(mouse.Hit.p-char.Top.Position).unit*200
bo.Parent=b
local co=b.Touched:connect(function(hit) if hit.Parent.Name~=Name and hit.Name~="Base" and hit.Name~="Handle" and hit.Parent.Parent.Name~=Name then hit.BrickColor=BrickColor:Black() 

for i=1,10 do hit.Transparency=i/10 wait() end pcall(function() hit:remove() end) end end)
b.Parent=workspace
Delay(3,function() b:remove() end)
end
function Lazer(mouse)
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Red()
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((char.Top.Position+mouse.Hit.p)/2,mouse.Hit.p)
Laz.Parent=char
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
for i=1,13 do
Me.Scale = Vector3.new(i/26,i/26,(char.Top.Position - mouse.Hit.p).magnitude/2) 
Laz.CFrame=CFrame.new((char.Top.Position+mouse.Hit.p)/2,mouse.Hit.p)
wait()
end
local ex=Instance.new("Explosion")
ex.Position=mouse.Hit.p
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Name~="Base" and hit.Name~="Handle" and hit.Parent.Parent.Name~=Name then
hit:BreakJoints()
hit.Anchored=false
hit.Velocity=(ex.Position-char.Torso.Position).unit*320
end
end)
ex.BlastPressure=900000
ex.BlastRadius=6
ex.Parent=char
wait()
for i=1,3 do 
wait(0.15) 
Laz.Transparency=Laz.Transparency+0.3 
end
Laz:remove()
end
function BH(mouse)
local list={}
function sar(v)
for _,v in pairs(v:children()) do 
if v:IsA("Part") and v.Parent.Name~=Name and v.Parent.Parent.Name~=Name then
table.insert(list,v)
elseif v.Name~=Name then
sar(v)
end
end
end
sar(workspace)
local l=Instance.new("Part")
l.BrickColor=BrickColor:Black()
l.Size=Vector3.new(1,1,1)
l.Parent=char
l.Shape="Ball"
l.TopSurface="Smooth"
l.BottomSurface="Smooth"
l.Anchored=true
l.CFrame=char.Top.CFrame
local m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Parent=l
local num=0
for i=1,30,0.5 do
wait()
m.Scale=m.Scale+Vector3.new(0.5,0.5,0.5)
if num~=4 then
num=num+1
else
num=0
for _,v in pairs(list) do
if v.Parent~=nil and v.Name~="Base" and v.Parent.Name~=Name and (v.Position-l.Position).magnitude<m.Scale.y/2 and v.Name~="Eaten" then
Delay(0,function()
v.Name="Eaten"
v.BrickColor=BrickColor:Black()
for i=1,10 do
wait()
v.Transparency=i/10
end
pcall(function() v:remove() end)
end) 
end
end
end
end
for i=1,30 do
wait()
l.Transparency=i/30
end
l:remove()
end

function Nova(mouse)
local t = char.Torso
for i=1,50,0.5 do 
wait()
x = (16 + i) * math.sin(i) + t.Position.x 
y = t.Position.y
z = (16 + i)* math.cos (i) + t.Position.z
brick = Instance.new("Explosion") 
brick.BlastPressure=0
brick.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Name~="Base" and hit.Name~="Handle" and hit.Parent.Parent.Name~=Name then
hit:BreakJoints()
hit.Anchored=false
hit.Velocity=(hit.Position-char.Torso.Position).unit*320
end
end)
brick.BlastRadius = 20
brick.Parent = workspace 
brick.Position = Vector3.new(x,y,z) 
end
end

function Teleport(mouse)
if mouse.Target~=nil then
local mouse=mouse
local hit=mouse.Hit
local Band1=Instance.new("Part")
Band1.Size=Vector3.new(1,1,1)
Band1.BrickColor=BrickColor:Black()
Band1.Parent=char
Band1.Reflectance=0.2
Band1.Transparency=0.2
local Mesh=Instance.new("CylinderMesh")
Mesh.Scale=Vector3.new(5.5,0.05,5.5)
Mesh.Parent=Band1
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Band1
w.C0 = CFrame.new(0,0,0)
for i=1,25 do
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.25,0)
wait()
end
char.Torso.CFrame=CFrame.new(hit.p)+Vector3.new(0,3,0)
wait(0.1)
for i=1,25 do
Mesh.Scale=Mesh.Scale+Vector3.new(0,-0.25,0)
wait()
end
Band1:remove()
end
end

function Break(mouse)
local mou=mouse
if game.Players:getPlayerFromCharacter(mou.Target.Parent)~=nil and mou.Target.Parent:findFirstChild("Torso")~=nil and mou.Target.Parent.Name~=Name then
m=game.Players[mou.Target.Parent.Name]
mou.Target.Parent.Torso.Anchored=true
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0
Laz.Shape="Ball"
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=true
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=mou.Target.Parent.Torso.CFrame
Laz.Parent=workspace
Laz.Transparency=0
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
for i=1,13 do
Me.Scale = Vector3.new(i,i,i) 
wait(0.1)
end
pcall(function()
m.Mode:remove()
m.Backpack:remove()
m.Character:remove()
end)
for i=1,7 do
Laz.BrickColor=BrickColor:White()
Laz.Reflectance=0.5
wait()
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0.2
wait()
end
for i=1,40 do
Laz.Transparency=i/40
wait()
end
Laz:remove()
end
end

function Viso(mouse)
local Laz=Instance.new("Part")
Laz.Anchored=false
Laz.BrickColor=BrickColor.new("Dark stone grey")
Laz.Reflectance=0.1
Laz.Transparency=0.1
Laz.Shape="Ball"
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=char.Torso
Laz.Transparency=0
w = Instance.new("Weld") 
w.Parent = Laz
w.Part0 = w.Parent 
w.Part1 = char.Torso
w.C0 = CFrame.new(0,0,0)
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(0.5,0.5,0.5)
wait()
end
if char:findFirstChild("Suit") then
char.Suit:remove()
end
if char.Torso.Transparency==0 then
for _,v in pairs(char:children()) do
if v:IsA("Part") then
v.Transparency=1
elseif v:IsA("Hat") and v:findFirstChild("Handle")~=nil then
v.Handle.Transparency=1
end
end
char.Head.face:remove()
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(-0.5,-0.5,-0.5)
wait()
end
Laz:remove()
else
for _,v in pairs(char:children()) do
if v:IsA("Part") and v.Name~="Top" then
v.Transparency=0
elseif v:IsA("Hat") and v:findFirstChild("Handle")~=nil then
v.Handle.Transparency=0
elseif v.Name=="Top" then
v.Transparency=0.25
end
end
face:clone().Parent=char.Head
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(-0.5,-0.5,-0.5)
wait()
end
Laz:remove()
end
end
function SuitUp(mouse)
if char:findFirstChild("Suit") then
char.Suit:remove()
else
Suit()
end
end

function Swipe(mouse)
local Cont=Handle.Touched:connect(function(h)
if h.Parent~=nil and h.Parent.Name~=Name and game.Players:getPlayerFromCharacter(h.Parent)~=nil then
pcall(function() cr:clone().Parent=h.Parent.Humanoid h.Parent.Shirt:remove() h.Parent.Pants:remove() end)
for _,v in pairs(h.Parent:children()) do
if v:IsA("Part") then
wait()
b=Instance.new("BodyVelocity")
b.Parent=v
v:BreakJoints()
b.velocity=(v.Position-Vector3.new(math.random(-100,100),v.Position.y,math.random(-100,100))).unit*50
end
end
wait()
pcall(function() h.Parent.Humanoid.creator:remove() end)
for i=1,17 do
wait()
for _,v in pairs(h.Parent:children()) do
if v:IsA("Part") then
v.BrickColor=BrickColor:Black()
v:BreakJoints()
v.Reflectance=0
wait()
v.Reflectance=0.7
end
end
end
end
end)
wait()
for i=0,0.6,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0.05/2)
wHy.C0=wHy.C0*CFrame.new(0,0,-0.1)
end
wait()
for i=1,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2,-.1/2)*CFrame.Angles(math.rad((90/5)/2),-.1/2,-0.05/2)
wHy.C0=wHy.C0*CFrame.new(0,0,.175)
end
wait()
for i=0,0.4,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0)
end
wait()
for i=1,3 do
wHy.C0=wHy.C0*CFrame.new(0,0,-0.25)
wait()
end
w2.C0=We
wHy.C0 = CFrame.new(0,0.25,1)*CFrame.Angles(math.rad(90),0,0)
Cont:disconnect()
end
function Bale(mouse)
pos=mouse.Hit.p
dir = (pos - char.Torso.CFrame.p).unit 
for i = 1, 100, 1.2 do 
wait()
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.CFrame.p + (dir * 8 * i) + (dir * 7) 
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Parent.Name~=Name and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(char.Torso.Position-ex.Position).unit*-250
end
end)
ex.BlastRadius = 6
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
end 
end
function Shock(mouse)
for i=0.4,0,-.05/2 do
wHy.C0=wHy.C0*CFrame.Angles(math.rad(i*30/2),0,0)
wait()
w2.C0=w2.C0*CFrame.Angles(math.rad(4/2),0,0)
end
wait(0.25)
for i=1,15 do
wait(0.25)
local b=Instance.new("Part")
b.BrickColor=BrickColor:White()
b.Reflectance=0.1
b.Transparency=0.75
b.Size=Vector3.new(1,1,1)
b.Shape="Ball"
b.CanCollide=true
b.Name="Bullet"
b.TopSurface="Smooth"
local sp=Instance.new("Sparkles")
sp.Color=BrickColor:Red().Color
sp.Parent=b
b.Position=char.Top.Position+Vector3.new(0,1,0)
b.BottomSurface="Smooth"
b.Friction=0
local bo=Instance.new("BodyVelocity")
bo.maxForce=Vector3.new(9999,9999,9999)
bo.velocity=(mouse.Hit.p-char.Torso.Position).unit*200
bo.Parent=b
local co=b.Touched:connect(function(hit) 
if hit.Parent.Name~=Name and hit.Name~="Base" and hit.Name~="Handle" and hit.Parent.Parent.Name~=Name then 
local ex = Instance.new("Explosion") 
ex.Position = b.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Parent.Name~=Name and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(char.Torso.Position-ex.Position).unit*-250
end
end)
ex.BlastRadius = 3
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
Delay(0,function() b:remove() end)
end 
end)
b.Parent=workspace
Delay(3,function() b.Parent=nil end)
end
for i=0.4,0,-.05/2 do
wHy.C0=wHy.C0*CFrame.Angles(math.rad(-i*30/2),0,0)
wait()
w2.C0=w2.C0*CFrame.Angles(math.rad(-5/2),0,0)
end
w2.C0=We
wHy.C0=CFrame.new(0,0.25,1)*CFrame.Angles(math.rad(90),0,0)
collectgarbage("collect")
end
function Charge(mouse)
local mouset=mouse.Target
if mouset~=nil and mouset.Parent.Name~=Name and mouset.Parent.Parent~=Name then
for i=1,3,0.5 do
w2.C0=w2.C0*CFrame.new(0,0,.1/4)*CFrame.Angles(math.rad(i*11/4),0,0)
wHy.C0=wHy.C0*CFrame.Angles(math.rad(4),0,0)
wait(0.05)
end
wait(0.5)
char.Torso.Anchored=true
local Shell=Instance.new("Part")
Shell.BrickColor=BrickColor:Black()
Shell.Shape="Ball"
Shell.Size=Vector3.new(2,2,2)
Shell.Transparency=0.6
Shell.Reflectance=0.07
Shell.CFrame=char.Top.CFrame
local ShMesh=Instance.new("SpecialMesh")
ShMesh.MeshType="Sphere"
ShMesh.Scale=Vector3.new(0.5,0.5,0.5)
ShMesh.Parent=Shell
Shell.Parent=char
local w = Instance.new("Weld") 
w.Parent = Shell
w.Part0 = w.Parent 
w.Part1 = char.Top
w.C0 = CFrame.new(0,0,0)
for i=1,20 do
wait()
ShMesh.Scale=ShMesh.Scale+Vector3.new(0.2,0.2,0.2)
end
wait()
local de=0
co=mouse.Move:connect(function()
if de==0 then
de=1
pcall(function() char.Torso.Lazer:remove() end)
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0.02
Laz.TopSurface="Smooth"
Laz.Name="Lazer"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((mouse.Hit.p+char.Top.Position)/2,char.Top.Position)
Laz.Parent=char.Torso
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0.2
Laz.Reflectance=0.3
local Me=Instance.new("BlockMesh")
Me.Bevel=0.42
Me.Parent=Laz
Me.Scale = Vector3.new(3.5,3.5,(mouse.Hit.p - char.Top.Position).magnitude/2) 
Delay(0,function()
local hit=mouse.Target
if hit.Parent.Name~=Name and hit.Parent.Parent.Name~=Name and hit.Name~="Base" and hit:GetMass()<400 then
hit.BrickColor=BrickColor:Black()
for i=1,10 do
hit.Transparency=i/10
wait()
end
hit:remove()
end
end)
wait(0.2)
de=0
end
end)
wait(5)
co:disconnect()
char.Torso.Anchored=false
for i=1,10 do
pcall(function() char.Torso.Lazer:remove() end)
wait()
end
for i=1,16 do
ShMesh.Scale=ShMesh.Scale+Vector3.new(-0.2,-0.2,-0.2)
wait(0.02)
end
wait()
Shell:remove()
for i=1,3,0.5 do
w2.C0=w2.C0*CFrame.new(0,0,.1/-4)*CFrame.Angles(math.rad(i*-11/4),0,0)
wHy.C0=wHy.C0*CFrame.Angles(math.rad(-4),0,0)
wait(0.05)
end
w2.C0=We
wHy.C0=CFrame.new(0,0.25,1)*CFrame.Angles(math.rad(90),0,0)
end
end

--ToDo:
fire={Ice,Fire,Lazer,BH,Nova,Teleport,Break,Viso,SuitUp,Swipe,Bale,Shock,Charge}
name={"Ice","Fire","Lazer","Black Hole","Super Nova","Teleport","Sb-Break","Cloaking","Suit","Swipe","BaleFire","Minigun","Staff Happy"}
klick={"z","x","c","v","b","n","p","m","l","k","j","h","g"}
function Kay(ke)
for _,v in pairs(klick) do
if v==ke then
return _
end
end
return false
end

f=Staff.Selected:connect(function(mouse)
if d==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here.
d=1
Scrl=1
f:disconnect()
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
Sh[2].Parent=nil
w2 = Instance.new("Weld") 
w2.Name="Right Shouldr"
w2.Parent = char.Torso
w2.Part0 = char["Right Arm"]
w2.Part1 = w2.Parent
w2.C0 = CFrame.new(-1.5,0.5,.5)*CFrame.Angles(math.rad(90*3),0,0)
We=w2.C0
makeStaff()
mouse.KeyDown:connect(function(key) 
if Kay(tostring(key))~=false then 
Scrl=Kay(tostring(key))
hint("Mode: "..tostring(name[Scrl]),2)
end 
end)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() fire[Scrl](mouse) end) ---Down with the bloody Red Queen.
end
end)
function Suit()
color=BrickColor:White()
color2=BrickColor.new("Dark stone grey")
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 
Tors=Instance.new("Part")
Tors.Size=char.Torso.Size
Tors.BrickColor=color
Tors.Reflectance=0.75
Tors.Transparency=0
Tors.CanCollide=false
Tors.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tors
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tors 
w.C0 = CFrame.new(0,0,0)
for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0.75
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
end
end
v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Wing2"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1,3) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.5,0.4,1.1)*CFrame.Angles(math.rad(-40),math.rad(20),0)
v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Wing1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1,3) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.5,0.4,1.1)*CFrame.Angles(math.rad(-40),math.rad(-20),0)
v=char["Left Leg"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.4,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.6,0)
v=char["Right Leg"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.4,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.6,0)
v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.43,0)
v=char["Right Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.43,0)
v=model["Wing2"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.3,1.1,0.2) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,1.3)
v=model["Wing1"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.3,1.1,0.2) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,1.3)
v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Shape="Ball"
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
--Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.7,.7,.7) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.2,0.4)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,0.4,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.51)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)*CFrame.Angles(0,0,math.rad(90))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,.25,.25) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.27,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.27,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.295,-0.49)*CFrame.Angles(0,0,math.rad(90))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.295,-0.49)*CFrame.Angles(0,0,math.rad(90))
end