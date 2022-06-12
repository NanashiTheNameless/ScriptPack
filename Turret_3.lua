local Name="yfc"
local char=workspace[Name]
color2=BrickColor:Black()
color=BrickColor.new("Dark stone grey")

pcall(function() game.Players[Name]["Drop Turret."]:remove() end)
pcall(function() char.Handle:remove() end)
player = game.Players[Name]

if script.Parent.className~="HopperBin" then
Gun = Instance.new("HopperBin")
Gun.Parent = game.Players[Name].Backpack
Gun.Name="Drop Turret"
Board=Instance.new("Part")
Board.Size=Vector3.new(3,1,3)
Board.BrickColor=color
Board.Reflectance=0
Board.Name="Handle"
Board.Transparency=0
Board.CanCollide=true
Board.Parent=char
Board.TopSurface="Weld"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Board
Mesh.Bevel=0.11
Mesh.Scale=Vector3.new(.34*1.5,.34/2,.34*1.5) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = char.Torso
w.C0 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(90),0,math.rad(90))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=Board
Tor.TopSurface="Weld"
Mesh2=Instance.new("CylinderMesh")
Mesh2.Parent=Tor
Mesh2.Scale=Vector3.new(0.4,0.15,0.4) 
w2 = Instance.new("Weld") 
w2.Parent = Board
w2.Part0 = w2.Parent 
w2.Part1 = Tor 
w2.C0 = CFrame.new(0.25,-0.05,0.35)*CFrame.Angles(0,0,math.rad(180))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=Board
Tor.TopSurface="Weld"
Mesh2=Instance.new("CylinderMesh")
Mesh2.Parent=Tor
Mesh2.Scale=Vector3.new(0.4,0.15,0.4) 
w2 = Instance.new("Weld") 
w2.Parent = Board
w2.Part0 = w2.Parent 
w2.Part1 = Tor 
w2.C0 = CFrame.new(0.25,-0.05,-0.35)*CFrame.Angles(0,0,math.rad(180))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=Board
Tor.TopSurface="Weld"
Mesh2=Instance.new("BlockMesh")
Mesh2.Parent=Tor
Mesh2.Scale=Vector3.new(0.1,0.15,0.9) 
w2 = Instance.new("Weld") 
w2.Parent = Board
w2.Part0 = w2.Parent 
w2.Part1 = Tor 
w2.C0 = CFrame.new(-0.2,-0.075,0)*CFrame.Angles(0,0,math.rad(180))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=Board
Tor.TopSurface="Weld"
Mesh2=Instance.new("BlockMesh")
Mesh2.Parent=Tor
Mesh2.Scale=Vector3.new(0.1,0.15,0.9) 
w2 = Instance.new("Weld") 
w2.Parent = Board
w2.Part0 = w2.Parent 
w2.Part1 = Tor 
w2.C0 = CFrame.new(-0.375,-0.075,0)*CFrame.Angles(0,0,math.rad(180))
Tor4=Instance.new("Part")
Tor4.Size=Vector3.new(1,1,1)
Tor4.BrickColor=color
Tor4.Reflectance=0
Tor4.Anchored=false
Tor4.Transparency=0
Tor4.CanCollide=true
Tor4.Parent=Board
Tor4.TopSurface="Weld"
Mesh2=Instance.new("CylinderMesh")
Mesh2.Parent=Tor4
Mesh2.Scale=Vector3.new(0.2,0.15,0.2) 
w2 = Instance.new("Weld") 
w2.Parent = Tor4
w2.Part0 = Board
w2.Part1 = w2.Parent
w2.C0 = CFrame.new(0.25,-0.07,0.35)*CFrame.Angles(0,0,math.rad(180))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=Board
Tor.TopSurface="Weld"
Mesh2=Instance.new("CylinderMesh")
Mesh2.Parent=Tor
Mesh2.Scale=Vector3.new(0.2,0.15,0.2) 
w2 = Instance.new("Weld") 
w2.Parent = Board
w2.Part0 = w2.Parent 
w2.Part1 = Tor 
w2.C0 = CFrame.new(0.25,-0.07,-0.35)*CFrame.Angles(0,0,math.rad(180))
script.Parent=Gun
script.Name="Not A QuickScript"
end
model=script.Parent
function Make(Mesh)
for i=1,28 do
Mesh.Scale=Mesh.Scale+Vector3.new(.015,.0326,.015)
wait()
end
local model=Board
model.Name="Setting up."

for i=1,6 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.4,0.7,0.4) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-1.5+(i/5)*2.2)*CFrame.Angles(0,0,math.rad(90))
coroutine.resume(coroutine.create(function()
local w=w
for i=1,40+i*2 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
end
end))
wait(0.1)
end

for i=1,6 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.4,0.7,0.4) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-1.5+(i/5)*2.2)*CFrame.Angles(0,0,math.rad(90))
coroutine.resume(coroutine.create(function()
local w=w
for i=1,40+i*2 do
wait()
w.C0=w.C0*CFrame.new(0,-0.03,0)
end
end))
wait(0.1)
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.7,0.8,1.7) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
for i=1,30 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
end
end))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.4,0.8,1.4) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
for i=1,45 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
end
end))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,0.8,1) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,60 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.06,0)
end
end))

wait(2)
local v=Tor
for i=0,270,90 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.5,0.7,0.5) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,2,0)*CFrame.Angles(0,math.rad(i),math.rad(90))
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,30 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.01,0)
end
end))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Name="Sphere"..i
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,0.8,1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,2,0)*CFrame.Angles(0,math.rad(i),math.rad(90))
coroutine.resume(coroutine.create(function()
local w=w
for i=1,50 do
wait()
w.C0=w.C0*CFrame.new(0,0.031,0)
end
end))
end


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.1,0.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,90 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0.02,0,0.02)
end
end))

wait(2)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0.5
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.1,0.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,90 do
wait()
w.C0=w.C0*CFrame.new(0,0.04,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0.005,0.1,0.005)
end
end))
wait()
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0.6
Tor.Name="Rec"
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.9,0.78,0.9) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
for i=1,450/3 do
wait()
w.C0=w.C0*CFrame.new(0,0.02*3,0)
end
end))

function Fire(pl)
if pl.Name~=Name then
for i=1,50 do
Mesh.Scale=Mesh.Scale+Vector3.new(0.05,0.04,0.05)
wait()
end
wait()
Tar=pl.Character.Torso
Me=Tor
local p=Instance.new("Part")
p.BrickColor=BrickColor:White()
p.Anchored=true
p.Size=Vector3.new(1,1,2)
p.Reflectance=1
p.Transparency=0
p.Parent=model
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(5,5,(Tar.Position-Me.Position).magnitude/2)
m.Parent=p
p.CFrame=CFrame.new((Me.Position+Tar.Position)/2,Tar.Position)
Delay(1,function()
local p=p
p:remove()
end)
local f=pl.Character.Torso
f.Name="Blah"
f.Velocity=(Tor.Position-f.Position).unit*99 
for i=1,50 do
Mesh.Scale=Mesh.Scale+Vector3.new(-0.05,-0.04,-0.05)
wait()
end
wait(15)
Charge()
else
wait()
Fire(game.Players:children()[math.random(1,#game.Players:children())])
end
end

function Charge()
for i=0,270,90 do
wait()
Tar=model["Sphere"..i]
Me=Tor
local p=Instance.new("Part")
p.BrickColor=BrickColor:White()
p.Anchored=true
p.Size=Vector3.new(1,1,2)
p.Reflectance=0.05
p.Transparency=0.8
p.Parent=model
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(.25,.25,(Tar.Position-Me.Position).magnitude/2)
m.Parent=p
p.CFrame=CFrame.new((Me.Position+Tar.Position)/2,Tar.Position)
Delay(1,function()
local p=p
p:remove()
end)
end
wait(0.9)
Fire(game.Players:children()[math.random(1,#game.Players:children())])
end
coroutine.resume(coroutine.create(function() 
wait(6)
Charge()
end))
end


de=true
con=model.Selected:connect(function(BLAH)
if de==true then
de=false
con:disconnect()
w:remove()
Board.CFrame=char.Torso.CFrame*CFrame.new(0,0,-4)*CFrame.new(0,-2.5,0)*CFrame.Angles(0,0,math.rad(180))
Tor4.BrickColor=BrickColor:Red()
for i=1,9 do
Tor4.Weld.C0=Tor4.Weld.C0*CFrame.new(0,-0.002,0)
wait(0.1)
end
Board.CFrame=Board.CFrame*CFrame.Angles(0,0,math.rad(180))
Board.Velocity=Vector3.new(0,3,0)
Make(Mesh)
model.Name=" "
end
end)