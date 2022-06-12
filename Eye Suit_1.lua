local Name="ace28545"
local char=workspace[Name]
color2=BrickColor:Black()
color=BrickColor:White()
 
pcall(function() workspace[Name].Suit:remove() end)
pcall(function() char.Eye:remove() end)
pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 30
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 
Eye=Instance.new("Model")
Eye.Name="Eye"
Eye.Parent=char
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 
 
for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end
 
Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
 
Sm=Instance.new("Smoke")
Sm.Size=2
Sm.RiseVelocity=0
Sm.Color=color2.Color
--Sm.Parent=Tor
 
for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0
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
pcall(function() char.Head.face:remove() end)
 
----Eye----
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=Eye
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.65,1.65,1.65) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=Eye
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.27,0.27,0.27) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.75)
 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=Eye
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.3,0.35,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.78)
 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=Eye
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.3,0.35,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.78)*CFrame.Angles(0,0,math.rad(90))
----/Eye----
 
----Design 1----
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
----/Design 1----
 
----Design 2----
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.17,-0.275,0)
 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.17,-0.275,0)
 
 
 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.17,0.3,0)
 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.17,0.3,0)
----/Design2----
 
----Design 3----
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.17,-0.275,0)
 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.17,-0.275,0)
 
 
 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.17,0.3,0)
 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.72,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.17,0.3,0)
----Design3----
 
----Eye Tool----
function tras(...)
for _,v in pairs(...) do
pcall(function() v.Transparency=1 v.CanCollide=false end)
end
end
 
function nontras(...)
for _,v in pairs(...) do
pcall(function() v.Transparency=0 v.CanCollide=true end)
end
end
 
if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Fly"
Hopper.Parent=player.Backpack
 
LA=Instance.new("HopperBin")
LA.Name="Laser"
LA.Parent=game.Players[Name].Backpack
script.Parent=Hopper
 
Sw=Instance.new("Tool")
Sw.Name="Sword"
Sw.Parent=game.Players[Name].Backpack
end
Hopper=script.Parent
LA=player.Backpack.Laser
Sw=player.Backpack.Sword
Up=1
 
function Button1own(mouse)
BodyP.Parent=nil
local eye=Eye:children()[1]
BodyV=Instance.new("BodyVelocity")
BodyV.Name="BodyV"
BodyV.Parent=char.Head
BodyV.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=char.Head
Up=0
local spd = 35
repeat
        wait(0.2)
        BodyGyro.cframe=CFrame.new(char.Head.Position,mouse.Hit.p)
        BodyV.velocity=mouse.Hit.lookVector*spd
until Up==1
pcall(function() char.Head.BodyV:remove() end)
pcall(function() char.Head.BodyGyro:remove() end)
pcall(function() char.Head.BodyV:remove() end)
pcall(function() char.Head.BodyGyro:remove() end)
char.Head.Velocity=Vector3.new(0,0,0)
BodyP.position=char.Head.Position
BodyP.Parent=char.Head
end
 
function Button1up(mouse)
Up=1
end
 
function Key(key)
if key=="g" then
local ex = Instance.new("Explosion") 
ex.Position = char.Head.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="Suit" and hit.Parent.Name~="Eye" and hit.Name~="Base" then
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
 
Hopper.Selected:connect(function(mouse)
tras(model:children())
tras(char:children())
BodyP=Instance.new('BodyPosition')
BodyP.Name="DroidForce"
BodyP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyP.position=char.Head.Position
BodyP.Parent=char.Head
mouse.Button1Down:connect(function() Button1own(mouse) end)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.KeyDown:connect(function(key) Key(key) end)
mouse.Button1Up:connect(function() Button1up(mouse) end)
end)
 
Hopper.Deselected:connect(function()
nontras(model:children())
nontras(char:children())
pcall(function() char.Head.BodyV:remove() end)
pcall(function() char.Head.BodyGyro:remove() end)
pcall(function() char.Head.DroidForce:remove() end)
end)
----/Flying----
----Laser----
de=1
eye=Eye:children()[1]
 
function BLAG(mouse)
if de==1 then
de=2
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=eye
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Red()
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((eye.Position+mouse.Hit.p)/2,mouse.Hit.p)
Laz.Parent=eye
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
for i=1,15 do
Me.Scale = Vector3.new(i/65,i/65,(eye.Position - mouse.Hit.p).magnitude/2) 
Laz.CFrame=CFrame.new((eye.Position+mouse.Hit.p)/2,mouse.Hit.p)
BodyGyro.cframe=CFrame.new(eye.Position,mouse.Hit.p)
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
----/Laser----
 
----Swords On Back----
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,3,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Tor.Name="Sword"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="FileMesh"
Mesh.MeshId="http://www.roblox.com/asset/?id=20719463"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,.9,1) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,.6)*CFrame.Angles(3.14*1.5,1.6*1.5,3.14)
----/Sword On Back----
 
----Sword----
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,4)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=True
Tor.Parent=Sw
Tor.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="FileMesh"
Mesh.MeshId="http://www.roblox.com/asset/?id=20719463"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,.9,1) 
-----------------
Sword=Sw
Sword.GripForward=Vector3.new(-1, -0, -0)
Sword.GripPos=Vector3.new(0, 0, -1.75)
Sword.GripRight=Vector3.new(0,1,0)
Sword.GripUp=Vector3.new(0,0,1)
grip=Sword.GripUp
De=1
 
function Hit(h)
if h.Parent~=nil and h.Parent.Name~=Name then
pcall(function() h.Parent.Humanoid:TakeDamage(2000) end)
end
end
 
function swordOut()
if De==1 then
De=0
for i=1,9 do
Sword.GripUp=Sword.GripUp+Vector3.new((8/36),0,0)
wait()
end
wait(0.25)
for i=1,8 do
Sword.GripUp=Sword.GripUp+Vector3.new((-8/36),0,0)
wait()
end
Sword.GripUp=grip
wait()
De=1
end
end
 
Tor.Touched:connect(Hit)
Sword.Equipped:connect(function() pcall(function() model.Sword.Transparency=1 end) end)
Sword.Unequipped:connect(function() pcall(function() model.Sword.Transparency=0 end) end)
Sword.Activated:connect(swordOut)
----/Sword----
 
for _,v in pairs(model:children()) do
pcall(function() v.Locked=true end)
end
for _,v in pairs(Eye:children()) do
pcall(function() v.Locked=true end)
end