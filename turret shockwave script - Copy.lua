local Name="luxulux"
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
Mesh2.Scale=Vector3.new(0.21,0.15,0.21) 
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
Mesh2.Scale=Vector3.new(0.21,0.15,0.21) 
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
for i=0,325,45 do
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
Mesh.Scale=Vector3.new(1.2,0.7,1.2) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(0,math.rad(i),math.rad(90))
coroutine.resume(coroutine.create(function()
local w=w
for i=1,60 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
end
end))
Tor.Velocity=Vector3.new(0,1,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,0.85,1) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(0,math.rad(i),math.rad(90))
coroutine.resume(coroutine.create(function()
local w=w
for i=1,70 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
end
end))
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
Mesh.Scale=Vector3.new(0.9,0.1,0.9) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.015*50,0,0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,50 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.025,0)
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
Mesh.Scale=Vector3.new(0.9,0.1,0.9) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.015*50,0,-0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,50 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.025,0)
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
Mesh.Scale=Vector3.new(0.9,0.1,0.9) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.015*50,0,0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,50 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.025,0)
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
Mesh.Scale=Vector3.new(0.9,0.1,0.9) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.015*50,0,-0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,50 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.025,0)
end
end))








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
Mesh.Scale=Vector3.new(0.95,0.1,0.95) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.015*50,0,0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,80 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.0005,0)
end
for i=1,30 do
Mesh.Scale=Mesh.Scale+Vector3.new(0.01,0,0.01)
wait()
end
end))

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
Mesh.Scale=Vector3.new(0.95,0.1,0.95) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.015*50,0,-0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,80 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.0005,0)
end
for i=1,30 do
Mesh.Scale=Mesh.Scale+Vector3.new(0.01,0,0.01)
wait()
end
end))

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
Mesh.Scale=Vector3.new(0.95,0.1,0.95) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.015*50,0,0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,80 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.0005,0)
end
for i=1,30 do
Mesh.Scale=Mesh.Scale+Vector3.new(0.01,0,0.01)
wait()
end
end))

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
Mesh.Scale=Vector3.new(0.95,0.1,0.95) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.015*50,0,-0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,80 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.0005,0)
end
for i=1,30 do
Mesh.Scale=Mesh.Scale+Vector3.new(0.01,0,0.01)
wait()
end
end))





Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.Name="Arm"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.599,0.1,0.599) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.015*50,0,0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,90 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.025,0)
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
Tor.Name="Arm"
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.599,0.1,0.599) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.015*50,0,-0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,90 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.025,0)
end
end))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Name="Arm"
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.599,0.1,0.599) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.015*50,0,-0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,90 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.025,0)
end
end))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.Name="Arm"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.599,0.1,0.59) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.015*50,0,0.015*50)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,90 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.025,0)
end
end))


wait(4)

sc=Mesh.Scale.x
r=-math.pi/4
for i,v in pairs(model:children()) do
if v.className=="Part" and v.Name=="Arm" then
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Weld"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1*0.7,0.85*0.7,1*0.7) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.2,0)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
local Ball=Tor
for i=1,180 do
wait()
w.C0=w.C0*CFrame.new(0,0.01,0)
end
wait()
we=w

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
Mesh.Scale=Vector3.new(0.2,0.3,0.2) 
w = Instance.new("Weld") 
w.Parent = Ball
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,r)
r=r-math.pi/4*2
coroutine.resume(coroutine.create(function()
local w=w
local Mesh=Mesh
for i=1,10 do
wait()
w.C0=w.C0*CFrame.new(0,-0.05,0)
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.01,0)
end
end))
end))
end
end
wait(7)
for i=100,math.huge,math.random(90,145) do
local C=Tor4.CFrame*CFrame.Angles(0,math.rad(i),0)
for i=1,35 do
p=Instance.new("Part")
p.Size=Vector3.new(1,9,7)
p.Transparency=0.2
p.BrickColor=BrickColor:Black()
p.CanCollide=true
p.Velocity=Vector3.new(9e99,0,0)
p.RotVelocity=Vector3.new(9e99,0,0)
p.Touched:connect(function(p)
if game.Players:getPlayerFromCharacter(p.Parent) then
p:BreakJoints()
end
end)
p.TopSurface="Smooth"
p.BottomSurface="Smooth"
p.Anchored=true
p.Parent=model
p.CFrame=C*CFrame.new(6+i,0,0)
coroutine.resume(coroutine.create(function()
local p=p
for i=3,10 do
p.Transparency=i/10
wait()
end
p:remove()
end))
wait()
end
end
end


de=true
con=model.Selected:connect(function(BLAH)
if de==true then
pcall(function() script.Sour.Value=[[print("Hello, World!")]] end)
de=false
con:disconnect()
w:remove()
Board.CFrame=char.Torso.CFrame*CFrame.new(0,0,-4)*CFrame.new(0,-2.5,0)*CFrame.Angles(0,0,math.rad(180))
Board.CFrame=Board.CFrame*CFrame.Angles(0,0,math.rad(180))
Make(Mesh)
model.Name=" "
end
end)
