-------------------------------------------Made by chc4-----------------------------------------------------
Name="luxulux"
color=BrickColor:White()
color2=BrickColor:Black()

pcall(function() workspace[Name].Droid:remove() end)
pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 70
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Droid" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 

char.Torso.CFrame=char.Torso.CFrame+Vector3.new(0,10,0)

for _,v in pairs(char:children()) do
pcall(function() v.Transparency=1 end)
end

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end

char.Torso.Anchored=true

pcall(function()
char["Left Arm"]:remove()
char["Left Leg"]:remove()
char["Right Arm"]:remove()
char["Right Leg"]:remove()
char["Animate"]:remove()
end)

w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = char.Head
w.C0 = CFrame.new(0,0,0)

char.Torso.Transparency=1
char.Head.Transparency=1
pcall(function() char.Head.face:remove() end)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,1,1) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.3,0.35,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.45)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,0.25,0.25) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.45)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.3,0.35,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.45)*CFrame.Angles(0,0,math.rad(90))
------------------------------------
------------------------------------
------------------------------------
------------------------------------
------------------------------------
------------------------------------
------------------------------------
------------------------------------
------------------------------------
------------------------------------
------------------------------------
------------------------------------
------------------------------------
if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Fly"
Hopper.Parent=player.Backpack

LA=Instance.new("HopperBin")
LA.Name="Laser"
LA.Parent=game.Players[Name].Backpack


script.Parent=Hopper
end

BodyP=Instance.new('BodyPosition')
BodyP.Name="DroidForce"
BodyP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyP.position=char.Head.Position
BodyP.Parent=Tor

Hopper=script.Parent
LA=game.Players[Name].Backpack["Laser"]
Force=BodyP


function Button1own(mouse)
Force.Parent=nil
BodyV=Instance.new("BodyVelocity")
BodyV.Name="BodyV"
BodyV.Parent=char.Torso
BodyV.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=char.Torso
Up=0
local spd = 50
repeat
	wait(0.2)
	BodyGyro.cframe=CFrame.new(char.Torso.Position,mouse.Hit.p)
	BodyV.velocity=mouse.Hit.lookVector*spd
until Up==1
end

function Button1up(mouse)
Up=1
BodyGyro:remove()
BodyV:Remove()
char.Torso.Velocity=Vector3.new(0,0,0)
Force.position=Tor.Position
Force.Parent=Tor
end

function Boom(key)
if key=="g" then
local ex = Instance.new("Explosion") 
ex.Position = Tor.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="Droid" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-ex.Position).unit*-250
end
end)
ex.BlastRadius = 8
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
end
end

function Mg(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1own(mouse) end)
	mouse.Button1Up:connect(function() Button1up(mouse) end)
	mouse.KeyDown:connect(Boom)
end


Hopper.Selected:connect(Mg)
--------------------------
--------------------------
--------------------------
--------------------------
--------------------------
--------------------------
--------------------------
de=1
char=workspace[Name]

Eye=char.Torso

function BLAG(mouse)
if de==1 then
de=2
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=Eye
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Red()
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((Eye.Position+mouse.Hit.p)/2,mouse.Hit.p)
Laz.Parent=Eye
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
for i=1,15 do
Me.Scale = Vector3.new(i/45,i/45,(Eye.Position - mouse.Hit.p).magnitude/2) 
Laz.CFrame=CFrame.new((Eye.Position+mouse.Hit.p)/2,mouse.Hit.p)
BodyGyro.cframe=CFrame.new(Eye.Position,mouse.Hit.p)
wait()
end
ex=Instance.new("Explosion")
ex.Position=mouse.Hit.p
ex.BlastPressure=200000
ex.BlastRadius=5
ex.Parent=char
wait()
for i=1,3 do 
wait(0.15) 
Laz.Transparency=Laz.Transparency+0.3 
end
Laz:remove()
BodyGyro:remove()
wait(0.2)
de=1
end
end

function BOOM(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() BLAG(mouse) end)
end

LA.Selected:connect(BOOM)

char.Torso.Anchored=false
--lego 