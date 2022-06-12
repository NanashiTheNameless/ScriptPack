-------------------------------------------Made by chc4-----------------------------------------------------
Name="ace28545"
color=BrickColor.new("Bright orange")
---Magikarp is epik. Dont question it.
pcall(function() workspace[Name].SuitTest:remove() end)
--pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 70
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "SuitTest" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 
for _,v in pairs(char:children()) do
pcall(function() v.Transparency=1 end)
end
for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end
wait()
De=1
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = char.Head
w.C0 = CFrame.new(0,0,0)
char.Torso.Transparency=1
char.Head.Transparency=1
pcall(function() char.Head.face:remove() end)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(3,3,3)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.5,0.8,1) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.5,0.5,.5) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.32,0.25,-0.9)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.1,.1) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.54,0.275,-1)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.5,0.5,.5) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.32,0.25,-0.9)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.1,.1) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.54,0.275,-1)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Yellow()
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,.45,.5) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.7,0.1,0)*CFrame.Angles(math.rad(45),math.rad(-25),math.rad(25))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Yellow()
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,.45,.5) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.7,0.1,0)*CFrame.Angles(math.rad(45),math.rad(25),math.rad(-25))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Shape="Ball"
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.06,.5) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-1.27)*CFrame.Angles(0,math.rad(20),0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Yellow()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.3,1.2,.3) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,1.3,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Yellow()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.27,1.2,.27) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,1,0.15)*CFrame.Angles(math.rad(20),0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Yellow()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.27,1.2,.27) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,1,-0.15)*CFrame.Angles(math.rad(-20),0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Yellow()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.3,1.2,.3) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-1.1,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Yellow()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.27,1.2,.27) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.8,0.15)*CFrame.Angles(math.rad(-20),0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Yellow()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.27,1.2,.27) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.8,-0.15)*CFrame.Angles(math.rad(20),0,0)
for i=-30,30,10 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Yellow()
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
if i~=-30 and i~=30 then
Mesh.Scale=Vector3.new(.27,1,.27) 
Tor.Reflectance=0
else
Mesh.Scale=Vector3.new(.27,1.2,.27) 
Tor.Reflectance=0.1
end
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/52,1.1)*CFrame.Angles(math.rad(90+i*1.1),0,0)
end
function Giga(mouse)
local Tu=model.Body.Touched:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Parent.Name~=Name and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-Tor.Position).unit*250
end
end)
for i=1,10 do
wait()
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Red()
Laz.Reflectance=0
Laz.Shape="Ball"
Laz.Transparency=0.85
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=char
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
for i=1,7,0.5 do
Me.Scale = Vector3.new(i/2,i,i) 
wait()
end
Laz:remove()
end
Tu:disconnect()
end
function Splash(mouse)
if mouse.Target~=nil then
local mh=mouse.Hit
char.Torso.CFrame=mh*CFrame.new(0,2,0)
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Blue()
Laz.Reflectance=0
Laz.Transparency=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=CFrame.new(char.Torso.CFrame.x,char.Torso.CFrame.y,char.Torso.CFrame.z)*CFrame.new(0,-2,0)
Laz.Parent=char
local Me=Instance.new("CylinderMesh")
Me.Parent=Laz
Delay(0,function()
for i=1,25,0.5 do
Me.Scale = Vector3.new(i,1,i) 
Laz.Transparency=i/23
wait()
end
Laz:remove()
end)
end
end
function Charg(mouse)
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Yellow()
Laz.Reflectance=0
Laz.Transparency=0.55
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(4,4,4)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=char
local Me=Instance.new("BlockMesh")
Me.Scale=Vector3.new(1,1.2,1)
Me.Parent=Laz
local Rid=Instance.new("Part")
Rid.BrickColor=BrickColor:Yellow()
Rid.Reflectance=0.2
Rid.Transparency=0.75
Rid.Anchored=true
Rid.Size=Vector3.new(1,1,1)
local Me=Instance.new("CylinderMesh")
Me.Scale=Vector3.new(3.5,.5,3.5)
Me.Parent=Rid
for i=1,15,0.5 do
Laz.CFrame=char.Torso.CFrame*CFrame.Angles(math.random(1,3)+math.random(),math.random(1,3)+math.random(),math.random(1,3)+math.random())
f=Rid:clone()
f.CFrame=char.Torso.CFrame*CFrame.Angles(math.random(1,3)+math.random(),math.random(1,3)+math.random(),math.random(1,3)+math.random())
f.Parent=char
wait()
f:remove()
end
Laz:remove()
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Yellow()
Laz.Reflectance=0.25
Laz.Transparency=0.4
Laz.TopSurface="Smooth"
Laz.Name="Lazer"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((mouse.Hit.p+char.Torso.Position)/2,char.Torso.Position)
Laz.Parent=char
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0.2
Laz.Reflectance=0.3
local Me=Instance.new("BlockMesh")
Me.Bevel=0.05
Me.Parent=Laz
Me.Scale = Vector3.new(1,1,(mouse.Hit.p - char.Torso.Position).magnitude/2) 
for i=1,17 do
Me.Scale = Vector3.new(i/7,i/7,(mouse.Hit.p - char.Torso.Position).magnitude/2) 
Laz.CFrame=CFrame.new((mouse.Hit.p+char.Torso.Position)/2,char.Torso.Position)
wait(0.05)
end
for i=1,20,0.5 do 
wait()
x = (16 + i) * math.sin(i) + mouse.Hit.p.x 
y = mouse.Hit.p.y
z = (16 + i)* math.cos (i) + mouse.Hit.p.z
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
wait()
Laz:remove()
end
function Tackle(mouse)
local Tu=model.Body.Touched:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Parent.Name~=Name and hit.Name~="Base" then
pcall(function() hit.Parent.Humanoid.PlatformStand=true hit.Parent.Humanoid:TakeDamage(5) hit.Parent.Torso.CFrame=hit.Parent.Torso.CFrame*CFrame.Angles(math.rad(150),0,0) end)
end
end)
for i=1,10 do
wait()
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor.new("White")
Laz.Reflectance=0
Laz.Shape="Ball"
Laz.Transparency=0.95
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=char
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
for i=1,7,0.5 do
Me.Scale = Vector3.new(i/1.8,i,i) 
Laz.CFrame=char.Torso.CFrame
wait()
end
Laz:remove()
end
Tu:disconnect()
end
--ToDo:AquaTail,Makes a few parts around you,then magnitudeChecks for parts within the part ring
wep={Giga,Splash,Charg,Tackle}
name={"Giga Impact","Splash","Hyper Beam","Tackle"}
Mode=0
if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Press C"
Hopper.Parent=player.Backpack
coroutine.resume(coroutine.create(function() while true do
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Blue()
Laz.Reflectance=0
Laz.Transparency=0.4
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame*CFrame.new(0,-2.75,0)
Laz.Parent=char
local Me=Instance.new("CylinderMesh")
Me.Parent=Laz
for i=1,10,0.5 do
Me.Scale = Vector3.new(i,0.5,i) 
Laz.Transparency=i/9.5
wait()
end
Laz:remove()
end
end))
script.Parent=Hopper
end
wait() 
Hopper=script.Parent
function CheckAdd()
if (Mode+1)~=(#wep+1) then
Mode=Mode+1
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode+1)==(#wep+1) then
Mode=1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function CheckSub()
if (Mode-1)==0 or (Mode-1)<0 then
Mode=#wep
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode-1)~=0 then
Mode=Mode-1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function KeyDown(key)
if key=="c" then
CheckAdd()
elseif key=="x" then
Mode=1
Hopper.Name=name[1].."("..Mode..")"
elseif key=="z" then
CheckSub()
end
end
function Button1down(mouse)
pcall(function() coroutine.resume(coroutine.create(function() wep[Mode](mouse) end)) end)
end
function Mog(mouse)
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
        mouse.Button1Down:connect(function() Button1down(mouse) end)
        mouse.KeyDown:connect(KeyDown)
end
Hopper.Selected:connect(Mog)
--BLOCKLAND
