
local Name="luxulux"
local char=workspace[Name]
color=BrickColor:Red()
color2=BrickColor:White()
d=0
Debounce=true

pcall(function() workspace[Name].Suit:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 30
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 
char.Head.Changed:connect(function(p) if p=="BrickColor" then char.Head.BrickColor=color end end)
for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end

function hint(msg,de)
local h=Instance.new("Hint")
h.Text=tostring(msg)
h.Parent=player
Delay(tonumber(de),function() h:remove() end)
end

Ta=Instance.new("ObjectValue")
Ta.Value=player
Ta.Name="creator"

function Tag(v)
pcall(function() Ta:Clone().Parent=v.Parent.Humanoid end)
wait()
pcall(function() v.Parent.Humanoid.Health=0 end)
end

Tors=Instance.new("Part")
Tors.Size=char.Torso.Size
Tors.BrickColor=color
Tors.Reflectance=0.1
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
Tor.Reflectance=0.1
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

char.Head.BrickColor=color


v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,0.9,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(45))

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,0.9,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(-45))

v=char["Right Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,.75,1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.1,0.6,0)*CFrame.Angles(math.rad(90),math.rad(180),math.rad(90*3))

v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,.75,1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.1,0.6,0)*CFrame.Angles(math.rad(90),math.rad(180),math.rad(90))

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.23,0.2,1.11) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(-45))

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.23,0.2,1.11) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(45))

v=char["Head"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0.5
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Head"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.4,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.2,-0.2)
pcall(function() char.Head.face:remove() end)

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Cannon"
Tor.Shape="Ball"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.4,0.4,0.4) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.45)






























function Flare(mouse)
for i=0,0.3,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0.05/2)
end
wait()
for i=1,20 do
char.Torso.CFrame=char.Torso.CFrame+Vector3.new(0,2,0)
char.Torso.Velocity=Vector3.new(0,0,0)
wait()
end
wait()
bp=Instance.new("BodyPosition")
bp.maxForce=Vector3.new(9999999,999999999,99999999)
bp.position=char.Torso.Position
bp.Parent=char.Torso
wait(0.5)
for i=1.1,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2,0)*CFrame.Angles(math.rad((90/5)/2),-.1/2,-0.05/2)
HenWeld.C0=HenWeld.C0*CFrame.Angles(math.rad(20),0,0)
end
bp:remove()
con=char["Left Leg"].Touched:connect(function(hit) 
con:disconnect()
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
end)
w2.C0=Wr
HenWeld.C0=Hy
end

function Tele(mouse)
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

function Pwn(mouse)
local mou=mouse
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=color
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.Name="Lazer"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((mouse.Hit.p+model.Cannon.Position)/2,model.Cannon.Position)
Laz.Parent=char
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0.2
Laz.Reflectance=0.3
local Me=Instance.new("BlockMesh")
Me.Bevel=0.42
Me.Parent=Laz
Me.Scale = Vector3.new(3.5,3.5,(mouse.Hit.p - model.Cannon.Position).magnitude/2) 
if mou.Target~=nil and game.Players:getPlayerFromCharacter(mou.Target.Parent) and mou.Target.Parent:findFirstChild("Torso")~=nil and mou.Target.Parent.Name~=Name then
local m=game.Players:getPlayerFromCharacter(mou.Target.Parent)
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
for i=1,13,0.75 do
Me.Scale = Vector3.new(i,i,i) 
wait()
end
pcall(function()
char.Lazer:remove()
m.Character.Head:remove()
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
elseif mou.Target~=nil and mou.Target.Name~="Base" and mou.Target.Parent.Name~=Name and mou.Target.Parent.Parent.Name~=Name then
local mt=mouse.Target
for i=1,30 do
wait()
mt.Reflectance=i/30
end
mt:remove()
end
end





















function Ban(mouse)
local mou=mouse
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0.34
Laz.TopSurface="Smooth"
Laz.Name="Lazer"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((mouse.Hit.p+model.Cannon.Position)/2,model.Cannon.Position)
Laz.Parent=char
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0.2
Laz.Reflectance=0.3
local Me=Instance.new("BlockMesh")
Me.Bevel=0.05
Me.Parent=Laz
Me.Scale = Vector3.new(1,1,(mouse.Hit.p - model.Cannon.Position).magnitude/2) 
if mou.Target~=nil and game.Players:getPlayerFromCharacter(mou.Target.Parent) and mou.Target.Parent:findFirstChild("Torso")~=nil and mou.Target.Parent.Name~=Name then
local m=game.Players:getPlayerFromCharacter(mou.Target.Parent)
mou.Target.Parent.Torso.Anchored=true
for i=1,36 do
x = (3 + i) * math.sin(i) + m.Character.Torso.Position.x 
y = m.Character.Torso.Position.y
z = (3 + i)* math.cos (i) + m.Character.Torso.Position.z
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Shape="Ball"
Laz.Transparency=0.2
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=CFrame.new(x,y,z)
Laz.Parent=m.Character
wait(0.05)
end
pcall(function()
char.Lazer:remove()
m.Mode:remove()
m:remove()
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
elseif mou.Target~=nil and mou.Target.Name~="Base" and mou.Target.Parent.Name~=Name and mou.Target.Parent.Parent.Name~=Name then
local mt=mouse.Target
for i=1,30 do
wait()
mt.Reflectance=i/30
end
mt:remove()
end
end





















fire={Flare,Tele,Pwn,Ban}
name={"Flare Uppercut","Teleport","Pwn Lazor","Ban Lazor"}
klick={"z","x","c","t"}

function Kay(ke)
for _,v in pairs(klick) do
if v==ke then
return _
end
end
return false
end


if script.Parent.className~="HopperBin" then
Sword = Instance.new("HopperBin")
Sword.Parent = game.Players[Name].Backpack
Sword.Name="Staff"
script.Parent=Sword
end

Sword=script.Parent

Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}

function makeSword()
local Sword=char
wait(0.1)
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,4,1)
Handle.Parent=Sword
Handle.BrickColor=color
Handle.Reflectance=0.5
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.4,1,0.4)
HenWeld=Instance.new("Weld")
HenWeld.Parent=char["Right Arm"]
HenWeld.Part1=HenWeld.Parent
HenWeld.Part0=Handle
HenWeld.C0=CFrame.new(0,-0.25,1)*CFrame.Angles(math.rad(90),math.rad(-4),0)
Hy=HenWeld.C0
Handle.Touched:connect(function(h) 
local v=h --To lazy.
if v.Parent.Name~=Name and v.Parent.Parent.Name~=Name and v.Name~="Eaten" and v.Name~="Base" then
v.Name="Eaten"
v.BrickColor=BrickColor:Black()
for i=1,10 do
wait()
v.Transparency=i/10
end
pcall(function() v:remove() end)
end
end)
end



function Button(mouse)
for i=0,0.6,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0.05/2)
end
wait()
for i=0.9,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2,-.1/2)*CFrame.Angles(math.rad((90/5)/2),-.1/2,-0.05/2)
end
wait()
for i=0,0.3,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0)
end
w.C0=We
w2.C0=Wr
end

function Button2()
for i=0,0.3,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0.05/2)
end
wait(0.2)
for i=1.1,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2,0)*CFrame.Angles(math.rad((90/5)/2),-.1/2,-0.05/2)
HenWeld.C0=HenWeld.C0*CFrame.Angles(math.rad(20),0,0)
end
wait()
w2.C0=Wr
HenWeld.C0=Hy
end


f=Sword.Selected:connect(function(mouse)
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here.
if d==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then
d=1
De=0
f:disconnect()
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
Debou=true
Numb=Instance.new("NumberValue")
Numb.Value=0
Numb.Parent=Sword
Numb.Changed:connect(function() 
if Debou then 
Debou=false 
wait(0.2) 
ghk:disconnect() 
if Numb.Value>1 then 
Numb.Value=0 
Button2() 
else Numb.Value=0 
Button() 
end 
ghk=mouse.Button1Down:connect(function() 
Delay(0,function()
if Debounce then
Debounce=false
Numb.Value=Numb.Value+1
wait()
Debounce=true
end
end)
end)
Debou=true 
end 
end)

Arms[1].Parent=nil
w = Instance.new("Weld") 
w.Name="Left Shouldr"
w.Parent = char.Torso
w.Part0 = char["Left Arm"]
w.Part1 = w.Parent

Arms[2].Parent=nil
w2 = Instance.new("Weld") 
w2.Name="Right Shouldr"
w2.Parent = char.Torso
w2.Part0 = char["Right Arm"]
w2.Part1 = w2.Parent
makeSword()
---Animation Start---
for i=0,1,0.05 do
w.C0 = CFrame.new(1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(75*-i),math.rad(i*45),math.rad(i*20))
wait()
w2.C0 = CFrame.new(-1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(75*-i),math.rad(-i*45),math.rad(-i*20))
end
----Animation End----
We=w.C0
Wr=w2.C0
wait()
ghk=mouse.Button1Down:connect(function() 
Delay(0,function()
if Debounce then
Debounce=false
Numb.Value=Numb.Value+1
wait()
Debounce=true
end
end)
end)
mouse.KeyDown:connect(function(key)
if Kay(tostring(key))~=false then 
hint(tostring(name[Kay(tostring(key))]).."!",2)
wait()
fire[Kay(tostring(key))](mouse)
pcall(function() char.Lazer:remove() end)
end
end)
end
end)