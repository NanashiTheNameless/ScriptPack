local Name="yfc"
local char=workspace[Name]
color2=BrickColor:Black()
color=BrickColor.new("Dark stone grey")


player = game.Players[Name]

if script.Parent.className~="HopperBin" then
pcall(function() game.Players[Name]["Drop Turret."]:remove() end)
pcall(function() char.Handle:remove() end)
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
Mesh.Scale=Vector3.new(1,0.9,1) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(0,math.rad(i),math.rad(90))
coroutine.resume(coroutine.create(function()
local w=w
for i=1,80 do
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
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.9,0.85,0.9) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(0,math.rad(i),math.rad(90))
coroutine.resume(coroutine.create(function()
local w=w
for i=1,100 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
end
end))
end

wait(2)

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
Mesh.Scale=Vector3.new(1.1,0.8,1.1) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
for i=1,60 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
end
end))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Name="Torso"
Tor.Anchored=false
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.7,0.6,0.7) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
coroutine.resume(coroutine.create(function()
local w=w
for i=1,75 do
wait()
w.C0=w.C0*CFrame.new(0,0.03,0)
end
end))

Tora=Instance.new("Part")
Tora.Size=Vector3.new(1,1,1)
Tora.BrickColor=BrickColor:Blue()
Tora.Reflectance=0.5
Tora.Name="Head"
Tora.Anchored=false
Tora.Transparency=0
Tora.CanCollide=true
Tora.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tora
Mesh.Scale=Vector3.new(0.9,0.7,0.9) 
Tora.CFrame=Tor.CFrame*CFrame.new(0,0.5,0)
w = Instance.new("Weld") 
w.Parent = Tora
w.Part0 = w.Parent 
w.Part1 = Tor 
coroutine.resume(coroutine.create(function()
local w=w
for i=1,70 do
wait()
w.C0=w.C0*CFrame.new(0,-i/3000,0)
end
end))
Instance.new("Humanoid").Parent=model
wait(2.5)
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
Mesh.Scale=Vector3.new(0.2,0.3,0.2) 
w = Instance.new("Weld") 
w.Parent = Tora
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(i),math.rad(90))
coroutine.resume(coroutine.create(function()
local w=w
for i=1,60 do
wait()
w.C0=w.C0*CFrame.new(0,0.01,0)
end
end))

coroutine.resume(coroutine.create(function()
for i=1,math.huge,0.2 do
Tora.Weld.C0=Tora.Weld.C0*CFrame.Angles(0,math.rad(2),0)
wait()
end
end))
end
local Tar=nil
Pet=Tora

function Fire(v)
v.Anchored=true
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0.2
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((Pet.Position+v.Position)/2,v.Position)
Laz.Parent=v
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
for i=1,25 do
Me.Scale = Vector3.new(i/55,i/55,(Pet.Position - v.Position).magnitude/2) 
Laz.CFrame=CFrame.new((Pet.Position+v.Position)/2,v.Position)
wait()
end
ex=Instance.new("Explosion")
ex.Position=v.Position
ex.BlastPressure=0
ex.Hit:connect(function(v) 
if v.Parent.Name~=Name and v.Parent.Parent.Name~=Name and v.Name~="Base" and v.Parent~=model then
v:BreakJoints() 
v.Velocity=(v.Position-ex.Position).unit*900 
end
end)
ex.BlastRadius=1
ex.Parent=v
wait()
for i=1,3 do 
wait(0.15) 
Laz.Transparency=Laz.Transparency+0.3 
end
Laz:remove()
v.Anchored=false
end

function Find()
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=0.2
Tor.Anchored=false
Tor.Transparency=0.92
Tor.CanCollide=false
Tor.Parent=model
Tor.TopSurface="Weld"
Star=Tor
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,0.8,1) 
w = Instance.new("Weld") 
w.Parent = Tor
w.Part0 = w.Parent 
w.Part1 = Tora
Delay(1.2,function()
for i=1,24*10 do
wait()
Mesh.Scale=Mesh.Scale+Vector3.new(0.1,0.08,0.1)
Dist=Mesh.Scale.x/2
model.Name="Range:"..math.ceil(Mesh.Scale.x/2)
end
end)

Dist=Mesh.Scale.x/2

function Sar(p)
for _,ve in pairs(game.Players:GetChildren()) do
if ve.className=="Player" and ve.Character and ve.Character:FindFirstChild("Torso")~=nil and ve.Name~=Name and (ve.Character.Torso.Position-Tora.Position).magnitude<Dist and ve.Character.Humanoid.Health>-1 then --Magnitude,my dear watson.
Tar=ve.Character.Torso
end
end
end

model.Name="Primed."
wait(1)
while true do
wait(0.2)
if Tar==nil then
pcall(function() Sar(workspace) end)
else
Pet.BrickColor=BrickColor:Red()
Fire(Tar)
wait(0.5)
pcall(function() Tar=nil end)
Pet.BrickColor=BrickColor:Blue()
end
end
end

Loop=coroutine.create(function() Find() end)
coroutine.resume(Loop)
char.Humanoid.Died:connect(function()
pcall(function() coroutine.yield(Loop) end)
end)
model.Humanoid.Died:connect(function()
model.Name="AntiDeath Triggered."
wait()
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
Make(Mesh)
model.Name=" "
end
end)